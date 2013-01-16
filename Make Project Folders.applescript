on run {input, parameters}
	set newFolders to {"al done", "canon raw", "phase raw", "final files", "jpegs", "processed", "another"}
	repeat with i from 1 to (count of items in newFolders)
		tell application "Finder"
			if not (exists folder (item i in newFolders)) then
				make new folder at input with properties {name:item i in newFolders}
			end if
		end tell
	end repeat
end run
