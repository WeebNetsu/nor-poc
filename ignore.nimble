# Package

version       = "0.0.1"
author        = "Stephen"
description   = "Batteries included web framework, heavily inspired by RoR"
license       = "Apache-2.0"
srcDir        = "."
bin           = @["ignore"]


# Dependencies

requires "nim >= 1.6.14"
# requires "prologue >= 0.6.4"
requires "allographer >= 0.24.0"
requires "nimja >= 0.8.6"
requires "jester >= 0.6.0"

# task hello, "just a test":
#     echo "nimble run"

# preBuild:
#   echo "Running pre-build script"
#   nim c -r my_script.nim

# before run:
#     echo "Hello test"