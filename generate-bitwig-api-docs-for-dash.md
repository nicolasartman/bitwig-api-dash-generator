# Generating the bitwig api docs for Dash

Requirements: Maven, Java, Javadoc, [javadocset](https://github.com/Kapeli/javadocset) (can be installed locally in this folder).

1. Download the latest bitwig API source files jar. The easiest way to do this is to use bitwig's UI (help->docs) to just generate a new Java project, since that'll generate a maven configuration with the latest bitwig API, then cd to that folder and `mvn build` or `mvn install` so it fetches the necessary dependencies.

2. Grab that out of wherever your maven dependencies are cached and place it in this folder. For me on OS X it's `~/.m2/repository/com/bitwig/extension-api/<version>/extension-api-<version>-sources.jar`.

3. Build the docset with javadoc & javadocset by running `./build-docset.sh`

Your the docset is now sitting in this folder, ready to be installed locally or contributed to the Dash community docsets!

# Notes

This repo includes a slightly customized javadoc template through overview.html so it can hide the built-in javadoc search. This is done because the search field autofocuses so it makes it harder to use scroll the docs on the page via keyboard, and because the javadocs search feature is unecessary since Dash already includes great searching abilities!
