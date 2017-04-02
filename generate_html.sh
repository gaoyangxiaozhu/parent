#!/bin/bash

MD_SOURCE_DIRS='child child2'
HTML_DIR='docs'
MD_FILES=

declare -A MD_DIRTOFILE_ARR

# get all md files from ${MD_SOURCE_DIR}
for MD_SOURCE_DIR in ${MD_SOURCE_DIRS}
do
    MD_FILES=`ls ${MD_SOURCE_DIR} | grep -E '*.md$'`
    if [ -n "${MD_FILES}" ];then
        MD_DIRTOFILE_ARR[${MD_SOURCE_DIR}]=${MD_FILES}
    fi
done

# print all md file name
for MD_SOURCE_DIR in ${!MD_DIRTOFILE_ARR[*]}
do
    for FILE_NAME in ${MD_DIRTOFILE_ARR[${MD_SOURCE_DIR}]}
    do
        echo ${MD_SOURCE_DIR}/${FILE_NAME}
    done
done

set -e 


for MD_SOURCE_DIR in ${!MD_DIRTOFILE_ARR[*]}
do
    for FILE_NAME in ${MD_DIRTOFILE_ARR[${MD_SOURCE_DIR}]}
    do
        HTML_FILE_NAME=`echo $FILE_NAME | sed 's/\.md$/\.html/g'`
        pandoc ${MD_SOURCE_DIR}/${FILE_NAME} \
        -f markdown \
        -t html \
        -s -o \
        ${HTML_DIR}/${HTML_FILE_NAME}
    done
done

exit 0  


