import pkg/[prologue, prologue/middlewares/staticfile]

import config/routes as rt

let
    env = loadPrologueEnv(".env")
    app: Prologue = newApp(settings = newSettings(
        appName = env.getOrDefault("APP_NAME", "Ignore"),
        debug = env.getOrDefault("DEBUG", true),
        port = Port(env.getOrDefault("PORT", 8080)),
        secretKey = env.getOrDefault("SECRET_KEY", "")
    ))

# app.use(staticFileMiddleware(env.get("staticDir")))

# generate the app routes
rt.generate_routes(app)

# this will run your app
app.run()

