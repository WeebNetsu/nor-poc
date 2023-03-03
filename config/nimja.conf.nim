import nimja

proc renderIndex(title: string, users: seq[User]): string =
    ## the `index.nimja` template is transformed to nim code.
    ## so it can access all variables like `title` and `users`
    ## the return variable could be `string` or `Rope` or
    ## anything which has a `&=`(obj: YourObj, str: string) proc.
    compileTemplateFile(getScriptDir() / "index.nimja")
