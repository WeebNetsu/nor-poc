import pkg/prologue

# controllers
import ../app/controllers/users_controller

proc generate_routes*(app: Prologue) =
    # user routes
    app.get("/", user_sign_up)

