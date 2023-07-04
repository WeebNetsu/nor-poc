# import pkg/prologue
import pkg/jester
from os import `/`

import ../../config/nimja_conf

proc user_sign_up*(): string =
    # ! consider using https://nim-lang.org/docs/htmlparser.html or https://nim-lang.org/docs/filters.html instead of Nimja
    # current implementation does not allow dynamic filename insertion, especially since
    # {.compiletime.} cannot be used with {.async.}
    return renderIndex("users" / "signup")
