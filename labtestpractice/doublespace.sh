#/bin/bash

## https://unix.stackexchange.com/questions/406442/how-can-add-double-line-spacing-to-any-output

## doublespace.sh - read in stdin and write out its contents with an extra blank line between lines


## GREP:
# grep "" $1 | pr -dt

## AWK:
# awk 1 ORS='\n\n' $1

## https://stackoverflow.com/questions/29435598/what-does-g-do-with-sed-command
## https://www.tldp.org/LDP/abs/html/x23170.html#FTN.AEN23185
## https://stackoverflow.com/questions/3984824/sed-command-in-bash

## SED:
sed G $1 | cat -s
