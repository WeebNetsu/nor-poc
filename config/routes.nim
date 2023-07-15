import pkg/prologue

# controllers
import ../app/controllers/users_controller

proc generate_routes*(app: Prologue) =
    # all routes goes here
    app.get("/", user_sign_up)
    app.post("/", user_sign_up)

