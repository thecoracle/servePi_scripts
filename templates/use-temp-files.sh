tmp=${TMPDIR:-/tmp}/prog.$$
trap "rm -f $tmp.?; exit 1" 0 1 2 3 13 15

...real work that creates temp files $tmp.1, $tmp.2, ...

rm -f $tmp.?
trap 0
exit 0

#The quotes around "$OPTARG" handle spaces in arguments. The Dflag is cumulative, but the notation used here loses track of spaces in arguments. There are (non-standard) ways to work around that problem, too.

#The first shift notation works with any shell (or would do if I used back-ticks instead of '$(...)'. The second works in modern shells; there might even be an alternative with square brackets instead of parentheses, but this works so I've not bothered to work out what that is.

#I usually use the following to remove the path and suffix from the script, so I can use $arg0 when reporting errors:

#arg0=$(basename $0 .sh)
