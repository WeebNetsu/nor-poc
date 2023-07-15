import pkg/[prologue, allographer/query_builder]

import config/routes as rt
import db/connection as conn
import db/schema as schema

let
    env = loadPrologueEnv(".env")
    app: Prologue = newApp(settings = newSettings(
        appName = env.getOrDefault("APP_NAME", "Ignore"),
        debug = env.getOrDefault("DEBUG", true),
        port = Port(env.getOrDefault("PORT", 8000)),
        secretKey = env.getOrDefault("SECRET_KEY", "")
    ))

# app.use(staticFileMiddleware(env.get("staticDir")))

proc main(){.async.} =
    # generate the app routes
    rt.generate_routes(app)

    schema.generate_schema()

    let result = await conn.rdb
        .table("users")
        .select("id", "email", "name")
        .limit(5)
        .get()

    echo result

    # this will run your app
    app.run()

waitFor main()
