#!/bin/bash

#To jest komentarz

#comment single line

x=5
y=4

echo $x+ $y

:<<'COMMENT'

    multiline
    multiline
    multiline
    multiline


COMMENT

# WYPROWADZANIE DANYCH NA stdout (monitor)

echo "Hello!"
