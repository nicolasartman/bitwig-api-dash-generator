# Generating the bitwig api docs for Dash

Requirements: Maven, Java, Javadoc, [javadocset](https://github.com/Kapeli/javadocset) (can be installed locally in this folder).

1. Download the latest bitwig API source files jar. The easiest way to do this is:

   1. Use bitwig's UI (help->docs) to generate a new Java project
   1. CD to that directory (likely in your home folder)
   1. Install dependencies with source: `mvn install` then `mvn dependency:resolve -Dclassifier=sources`

1. Grab the API docs jar with source from wherever your maven dependencies are cached and place it in this folder. For me on OS X it's `~/.m2/repository/com/bitwig/extension-api/<version>/extension-api-<version>-sources.jar`.

1. Rename that file to "source.jar"

1. Build the docset with javadoc & javadocset by running `./build-docset.sh`

Your the docset is now sitting in this folder, ready to be installed locally or contributed to the Dash community docsets!

# Notes

The default javadoc doclet includes its own search functionality, which is unnecessary since Dash already includes great search functionality. Also, the field autofocuses on page load, which means it breaks keyboard scrolling for the page. Thus, the javadoc search functionality has been removed with some monkeypatching in the doc generation script.
