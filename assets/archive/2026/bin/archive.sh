#!/bin/bash
DEFAULT_BSIDES_DIR=$HOME/src/web/bsidesroc
DEFAULT_YEAR=$(date +%Y)

ARCHIVE_BSIDES_DIR=${1:-$DEFAULT_BSIDES_DIR}
ARCHIVE_YEAR=${2:-$DEFAULT_YEAR}

SOURCE_DIR="$ARCHIVE_BSIDES_DIR/_site"
ARCHIVE_BASE_DIR="$ARCHIVE_BSIDES_DIR/assets/archive"

# Make sure that the directory that we're going to be copying from exists, else exit.
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source dir '$SOURCE_DIR' does not exist, exiting"
    exit 1
fi

# If the destination directory doesn't exist then create it.
ARCHIVE_DIR="$ARCHIVE_BASE_DIR/$ARCHIVE_YEAR"
if [ ! -d "$ARCHIVE_DIR" ]; then
    echo "Creating $ARCHIVE_DIR"
    mkdir -p "$ARCHIVE_DIR"
fi

printf "Copying from %s -> %s\n" "$SOURCE_DIR" "$ARCHIVE_DIR"
cp -r "$SOURCE_DIR"/* "$ARCHIVE_DIR"

printf "Removing nested archive dir...\n"
rm -rf "$ARCHIVE_DIR"/assets/archive/*

printf "Updating hrefs to point at the new archive dir...\n"
find "$ARCHIVE_DIR" -type f -name "*.html" -exec sed -i'.bak' -E 's|href="/(.*/)"|href="/assets/archive/$ARCHIVE_YEAR/\1"|g' {} \;
printf "Update complete! Removing backup files..."
find "$ARCHIVE_DIR" -type f -name '*bak' -exec rm -f {} \;
printf "Backup Files removed!\n"

if [ $? != 0 ]; then 
    echo "There was an error replacing some links"
    exit 1;
fi 

printf "Archival of %s Complete!\n" "$ARCHIVE_YEAR"
