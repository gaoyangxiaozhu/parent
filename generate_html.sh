#!/bin/bash

set -e

MD_SOURCE_DIR='child'
HTML_DIR='docs'

# get all md files from ${MD_SOURCE_DIR}
MD_FILES=`ls ${MD_SOURCE_DIR} | grep -E '*.md$'`

# exit if no md files
if [ -z "$MD_FILES" ];then 
exit 0
fi

for FILE in $MD_FILES
do
    HTML_FILE_NAME=`echo $FILE | sed 's/\.md$/\.html/g'`
    pandoc ${MD_SOURCE_DIR}/${FILE} \
    -f markdown \
    -t html \
    -s -o \
    ${HTML_DIR}/${HTML_FILE_NAME}
done

exit 0

    


