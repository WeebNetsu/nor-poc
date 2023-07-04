from nimja import compileTemplateFile, getScriptDir
from os import walkDirRec

proc processFile(filePath: string) =
    # Code to process each file
    echo "Processing file:", filePath

proc processDir(dirPath: string) =
    # Code to process each directory
    echo "Processing directory:", dirPath


proc renderIndex*(title: string): string =
    var path = "/"
    for entry in walkDirRec(dirPath):
        case entry.kind
        of EntryKind.file:
            processFile(entry.path)
        of EntryKind.dir:
            processDir(entry.path)
        else:
            echo "Skipping entry:", entry.path

    compileTemplateFile(getScriptDir() / "app" / "views" / &"{title}.nimja")
