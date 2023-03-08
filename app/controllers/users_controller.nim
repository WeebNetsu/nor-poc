import pkg/prologue
from os import `/`

import ../../config/nimja_conf

proc user_sign_up*(ctx: Context) {.async.} =
    # ! consider using https://nim-lang.org/docs/htmlparser.html instead of Nimja
    # current implementation does not allow dynamic filename insertion, especially since
    # {.compiletime.} cannot be used with {.async.}
    resp renderIndex("users" / "signup")
