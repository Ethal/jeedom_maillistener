#!/bin/bash
echo "Installation spécifique plugin"

rm -rf attachments
mkdir attachments

sed -i "1407s/extension/getExtension/" resources\node_modules\mail-listener3\node_modules\mailparser\lib\mailparser.js
# replace defaultExt = mime.extension(contentType); to defaultExt = mime.getExtension(contentType);
