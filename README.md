## Weird behavior

ruh.sh is an install script. It loops through the entries in list.txt (which are folders), then goes into each folder and runs yarn.

Under node 15.5.0, the while loop stops, without errors, after the first yarn exection.

Under node 14 or lower, the while loop runs through all 3 entries.



## Reproduce:

```
nvm use 15
./run.sh

## should only do project 'one'

nvm use 14
./run.sh

## should now do all three

```