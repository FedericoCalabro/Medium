#!bin/bash

echo "Enter pattern index: "
read index

root_location="design_patterns_explained_(with_code)"
echo "Root location: $root_location"

folder_name=`ls $root_location | grep _${index}_`
echo "Folder name: $folder_name"


cd $root_location/$folder_name

dart pub global run dcdg > diagram.txt

cd ..
cd ..

diag_location="$root_location/$folder_name/diagram.txt"
exec="./utils/plantuml-1.2024.5.jar"

java -jar $exec $diag_location

rm -f $diag_location

echo "Done"

