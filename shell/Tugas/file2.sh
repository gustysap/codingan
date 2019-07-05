#!/bin/bash

echo -n "File yang ingin diketahui?"
read file

`test -f $file`

echo "maka hasilnya adalah $?"
