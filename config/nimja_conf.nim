from os import `/`
from nimja import compileTemplateFile, getScriptDir
import strformat

proc renderIndex*(title: string): string =
    ## the `index.nimja` template is transformed to nim code.
    ## so it can access all variables like `title` and `users`
    ## the return variable could be `string` or `Rope` or
    ## anything which has a `&=`(obj: YourObj, str: string) proc.
    return compileTemplateFile(getScriptDir() / "app" / "views" / &"{title}.nimja")
    # let filePath = getScriptDir() / "app" / "views" / &"{title}.nimja"
    # return readFile(filePath)
