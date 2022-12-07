#!/bin/bash

# Checking for any file ending in .log inside the logfiles directory
for file in logfiles/*.log
do
# Compresses every file it finds
        tar -czvf $file.tar.gz $file
done
