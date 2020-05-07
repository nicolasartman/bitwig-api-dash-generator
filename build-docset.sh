#!/bin/sh

# Clean
rm -rf "Bitwig Studio Extension.docset"
rm -rf docs
mkdir docs

# Build the javadocs
javadoc -sourcepath extension-api-10-sources.jar -subpackages "com.bitwig.extension" -d docs/

# Completely remove the search widget functionality
echo "\n.navListSearch { display: none !important; }" >>docs/stylesheet.css
rm docs/search.js

# Build the Dash docset
./javadocset "Bitwig Studio Extension" docs/

# Copy the icon file into the docset so it's recognized (per the official docs
# at https://kapeli.com/docsets#improveDocset)
cp ./icon.png "./Bitwig Studio Extension.docset/"
