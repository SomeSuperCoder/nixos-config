{ pkgs }:

pkgs.writers.writeJSBin "wallpaper-switcher" {} ''
const fs = require("fs");

console.log(process.version)

fs.readdir(
    "~/Wallpapers/",
    (err, files) => {
	if (!err) {
	    console.log(files)
	}
    }
)
''

