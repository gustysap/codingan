#!/bin/bash

echo -n "Karakter Yang Ingin Dimasukan?"
read pertama


`test -z $pertama`
echo "maka stringnya adalah $?"

