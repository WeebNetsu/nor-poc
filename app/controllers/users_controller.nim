import pkg/prologue
from os import `/`
from pkg/nimja import compileTemplateFile

from ../../config/constants import VIEW_PATH

proc user_sign_up*(ctx: Context) {.async.} =
    proc renderIndex(title: string): string =
        # render the template file, pass title variable into the template
        compileTemplateFile(VIEW_PATH / "users" / "signup.nimja")

    # https://github.com/enthus1ast/nimja/blob/master/examples/prologue/serverPrologue.nim
    resp renderIndex("title")
