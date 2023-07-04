import pkg/prologue
import std/[asynchttpserver, asyncdispatch]

# controllers
import ../app/controllers/users_controller

proc handleRequest(req: Request, result: string) {.async.} =
    let response = newResponse(Http200, "OK")
    response.addHeader("Content-Type", "text/plain")
    response.write(result)
    await req.respond(response)


proc generate_routes*(req: var AsyncHttpServer) {.compiletime.} =
    # user routes
    req.addRoute(HttpMethod.Get, "/", handleRequest(req, "user_sign_up"))


