#!/bin/bash

# read - "Enter text here : " text | tr 'A-Za-z' 'N-ZA-Mn-za-m'

# read variable
# echo $variable | tr '[a-z]' '[n-za-m]'



read variable  #  WORKS             WORKS           WORK
echo $variable | tr '0-<' '=-J' | tr '=-J' 'J-X' | tr 'K-X' 'X-f' | tr 'Y-f' 'f-t' | tr 'g-s' 't-~'
