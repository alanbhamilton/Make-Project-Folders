on run {projectFolder, parameters}
	repeat with projectSubFolder in {"al done", "canon raw", "phase raw", "final files", "jpegs", "processed"}
		tell application "Finder"
			if not (exists projectSubFolder) then
				make new folder at projectFolder with properties {name:projectSubFolder}
			end if
		end tell
	end repeat
end run
