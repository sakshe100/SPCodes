read -p "Enter the directory you want to search: " direc
if [ ! -d "$direc" ]; then
	echo "Directory not found"
	exit 1
fi
echo "Directory exists"
ls -l "$direc"
ls -v "$direc"
echo "Creating directory sorted"
dir="$direc/sorted"
if [ ! -d "$dir" ];then
mkdir "$dir"
fi
c=0
for file in "$direc"/*; do
	if [ -f "$file" ];then
		echo "Moving into sorted directory"
		mv "$file" "$dir"
		c=$((c+1))
	fi
done
echo "No of files moved: "
echo "$c"
