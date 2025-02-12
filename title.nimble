# Package

version       = "0.1.0"
author        = "Laszlo Szathmary <jabba.laci@gmail.com>"
description   = "Extract the title of a webpage and copy it to the clipboard"
license       = "MIT"
bin           = @["title"]


# Dependencies

requires "nim >= 2.2.0"

requires "htmlparser >= 0.1.0"
requires "beautifulparser >= 0.1.4"
requires "winim >= 3.9.4"
