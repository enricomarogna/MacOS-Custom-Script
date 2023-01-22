on run
    tell application "System Events"
        set theBrowsers to name of every application process whose frontmost is true
        if "LibreWolf" is not in theBrowsers then
            do shell script "defaultbrowser librewolf"
        end if
    end tell
end run
