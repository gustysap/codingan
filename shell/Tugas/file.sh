#!/bin/bash

echo -n "Direktori yang ingin diketahui?"
read direktori

`test -d $direktori`

echo "maka hasilnya adalah $?"
