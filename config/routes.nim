# import pkg/prologue
import pkg/jester
from os import `/`

# controllers
import ../app/controllers/users_controller
from nimja import compileTemplateFile, getScriptDir

router app_router:
    # user routes
    # app.get("/", user_sign_up)
    get "/":
        let parse = compileTemplateFile(getScriptDir() / "app" / "views" / "users/signup.nimja")
        resp parse

