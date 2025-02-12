import strformat
import strutils

import pkg/htmlparser
import pkg/beautifulparser

import pykot/[console, web, clipboard]

type
  NetworkError = object of CatchableError


proc handler() {.noconv.} =
  echo ""
  echo "bye"
  quit(0)

setControlCHook(handler)

proc process(title, url: string) =
  echo title
  echo ""
  let line = &"[{title}]({url})"
  echo line
  discard setClipboardText(line)
  echo "^ this line was copied to the clipboard"

proc main() =
  while true:
    try:
      let url = input("Enter URL: ").strip
      if url.len == 0:
        continue
      let html_source = get_page(url)
      if html_source.len == 0:
        raise newException(NetworkError, "")
      let html = parseHtml(html_source)

      for node in html.findAllNodes("title"):
        process(node.innerText, url)
        break
      #
      echo "---"
    except EOFError:
      handler()
    except NetworkError:
      echo "Error: couldn't download the webpage"
    except:
      echo "Error: something went wrong"

# ############################################################################

when isMainModule:
  main()
