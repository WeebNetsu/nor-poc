import pkg/prologue

# controllers
import ../app/controllers/users_controller

proc generate_routes*(app: Prologue) {.compiletime.} =
    # user routes
    app.get("/", user_sign_up)

