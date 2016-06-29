# myvimrc

- Copy _vimrc to c:\users\user
- Add v.bat to path to be able to edit files in vim through `v edit_file.txt` 
- Add the following to autohotkey script to use ctrl+alt+v to edit current file (from explorer) with vim:

```
Explorer_GetSelection(hwnd="") {
	hwnd := hwnd ? hwnd : WinExist("A")
	WinGetClass class, ahk_id %hwnd%
	if (class="CabinetWClass" or class="ExploreWClass" or class="Progman")
		for window in ComObjCreate("Shell.Application").Windows
			if (window.hwnd==hwnd)
    sel := window.Document.SelectedItems
	for item in sel
	ToReturn .= item.path "`n"
	return Trim(ToReturn,"`n")
}


^!v::
	selection := Explorer_GetSelection()
	Run "C:\Program Files (x86)\Vim\vim74\gvim.exe" --remote-tab-silent "%selection%" 
return
```

