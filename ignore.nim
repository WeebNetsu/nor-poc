import std/[asynchttpserver, asyncdispatch]

import config/routes as rt

proc main {.async.} =
    var server = newAsyncHttpServer()

    # generate the app routes
    rt.generate_routes(app)

    server.serve(Port(8080))

waitFor main()
