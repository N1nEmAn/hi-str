#!/usr/bin/bash

echo ""
echo ".##.....##.####..........######..########.########..####
.##.....##..##..........##....##....##....##.....##.####
.##.....##..##..........##..........##....##.....##.####
.#########..##..N1nEmAn..######.....##....########...##.
.##.....##..##................##....##....##...##.......
.##.....##..##..........##....##....##....##....##..####
.##.....##.####..........######.....##....##.....##.####"
echo ""

install() {
	echo "[o] Installing..."
	echo ""
	pip install termcolor --break
	sudo pip install termcolor --break
	sudo cp ./src.py ./histr
	sudo cp ./histr /usr/bin/histr
	sudo chmod 777 /usr/bin/histr
	echo ""
	echo "[+] Installation complete."
}

uninstall() {
	echo "[o] Uninstalling..."
	sudo rm -f /usr/bin/histr
	sudo rm -f ./histr
	echo "[+] Uninstallation complete."
}

show_help() {
	echo "Usage: "
	echo "  -i: Install histr tool"
	echo "  -u: Uninstall histr tool"
	echo "  -h: Show this help message"
}

if [ "$#" -eq 0 ]; then
	show_help
	exit 0
fi

while getopts ":iuh" opt; do
	case ${opt} in
	i)
		install
		;;
	u)
		uninstall
		;;
	h)
		show_help
		;;
	\?)
		echo "Invalid option: $OPTARG" 1>&2
		;;
	esac
done
