@tool extends EditorScript

var folders:Array[String] = [
	"UI",
	"scenes",
	"scripts",
	"media",
	"addons",
	"assets",
	"docs",
	"components"
]


func _run() -> void:
	_create_folders(folders)
	var fs = get_editor_interface().get_resource_filesystem()
	fs.scan()
	

func _create_folders(folders:Array[String]):
	for folder in folders:
		var create_status = DirAccess.make_dir_absolute('res://' + folder)
		if  create_status == OK:
			print('Folder created: ' + folder)
		else:
			print('Failed to create folder: ' + folder + '\n' + 'Error: ' + create_status)
