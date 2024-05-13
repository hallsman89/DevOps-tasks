#!/bin/bash

start_time=$(date +%s)
dir=$1

COUNT_DIR=$(find $dir -mindepth 1 -type d | wc -l)
TOP5_DIR=$(du -h $dir | sort -hr | head -6 | awk '{if (NR>1){i++; print NR-1 " - " $2 ", " $1}}')
COUNT_FILES=$(find $dir -type f | wc -l)
CONF_FILES=$(find $dir -type f | grep -c .conf)
TEXT_FILES=$(find $dir -type f | grep -c .txt)
EXEC_FILES=$(find $dir -type f | grep -c -e .out -e .exe -e .sh)
LOG_FILES=$(find $dir -type f | grep -c .log)
ARC_FILES=$(find $dir -type f | grep -c -e .tar -e .gz -e .zip -e .lz -e .rar)
SYMB_FILES=$(find $dir -type l | wc -l)
TOP10FILES=$(find $dir -type f -printf "%s %p\n" | sort -hr | head -10 | awk -F '.' '{print $0 " " $NF}' | awk '{print NR " - " $2 ", " $1 "kb, " $3}')
TOP10EXECFILES=$(find $dir -type f -exec md5sum {} \; -printf "%s %p\n" | paste - - | grep -e .out -e .exe -e .sh | sort -hr | head -10 | awk '{print NR " - " $2 ", " $3"kb, " $1}')



printf "Total number of folders (including all nested ones) = %s \n" "$COUNT_DIR"
printf "TOP 5 folders with maximum size arranged in descending order (path and size):\n%s \n" "$TOP5_DIR"
printf "Total number of files = %s \n" "$COUNT_FILES"
printf "Number of:\n"
printf "Configuration files (with the .conf extension) = %s \n" "$CONF_FILES"
printf "Text files = %s \n" "$TEXT_FILES"
printf "Executalbe files = %s \n" "$EXEC_FILES"
printf "Log files (with the extension .log) = %s \n" "$LOG_FILES"
printf "Archive files = %s \n" "$ARC_FILES"
printf "Symbolic files = %s \n" "$SYMB_FILES"
printf "TOP 10 files of maximum size arranged in descending order (path, size and type): \n%s \n" "$TOP10FILES"
printf "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file): \n%s \n" "$TOP10EXECFILES"

end_time=$(date +%s)
runtime=$((end_time - start_time))
printf "Script execution time (in seconds) = %s \n" "$runtime"


