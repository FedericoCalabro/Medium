#!bin/bash

echo "Enter pattern name: "
read pattern

echo "Enter pattern index: "
read index

root_location="design_patterns_explained_(with_code)"
echo "Root location: $root_location"

folder_name="_${index}_${pattern}_design_pattern_explained"
echo "Folder name: $folder_name"

echo "Creating directory structure..."
mkdir -p $root_location/$folder_name
mkdir -p $root_location/$folder_name/bin
mkdir -p $root_location/$folder_name/lib
echo "Done"

echo "Creating files..."

cat <<EOF > $root_location/$folder_name/bin/${pattern}_design_pattern.dart
void main() {
}
EOF

cat <<EOF > $root_location/$folder_name/lib/${pattern}.dart
EOF

cat <<EOF > $root_location/$folder_name/pubspec.yaml
name: ${pattern}_design_pattern
description: ${pattern}_design_pattern
version: 1.0.0
environment:
  sdk: ^3.4.3
EOF

cat <<EOF > $root_location/$folder_name/README.md
$pattern Design Pattern Explained
Subtitle

## Introduction
Introduction

[Full Medium Article](https://medium.com/@fedcal)


\`\`\`
Thank you for your support!
\`\`\`
EOF

echo "Done"

