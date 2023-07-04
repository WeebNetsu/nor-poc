# import pkg/[prologue, prologue/middlewares/staticfile]
# import std/asyncdispatch
import pkg/jester

include config/routes

# let
    # env = loadPrologueEnv(".env")
    # since we are having a compile time issue, since Nimja needs
    # to modify files during runtime, but Prologue needs to serve
    # the files during compile time (idkwtf it needs to do that),
    # so we need to find an alternative
    # https://github.com/dom96/jester
    # app: Prologue = newApp(settings = newSettings(
    #     appName = env.getOrDefault("APP_NAME", "Ignore"),
    #     debug = env.getOrDefault("DEBUG", true),
    #     port = Port(env.getOrDefault("PORT", 8080)),
    #     secretKey = env.getOrDefault("SECRET_KEY", "")
    # ))

var jest = initJester(
    app_router,
    settings = newSettings(port = Port(8080))
)

# app.use(staticFileMiddleware(env.get("staticDir")))

# generate the app routes
# rt.generate_routes(app)
# app.get("/", user_sign_up)

jest.serve()

# this will run your app
# app.run()

# import asyncdispatch, jester, os, strutils

# router myrouter:
#     get "/":
#         resp "It's alive!"

# proc main() =
#     let port = Port(8080)
#     let settings = newSettings(port = port)
#     var jester = initJester(myrouter, settings = settings)
#     jester.serve()

# main()
