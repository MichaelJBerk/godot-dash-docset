#!/bin/zsh

git submodule update 
cd godot-docs
pip install -r requirements.txt
make html
cd _build
pip install beautifulsoup4
cp -r html/* ../../Godot.docset/Contents/Resources/Documents/
cd ../../
python3 build.py

# mkdir -p Godot.docset/Contents/Resources/Documents/