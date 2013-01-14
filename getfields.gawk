#!/usr/bin/gawk -f
BEGIN { i=1; }
/Info for / {next;}
/Records in file/ {next;}
{
    printf("FIELD[%s]=%d\n", $1, i++);
    sub("^.","",$3);
    sub(",.*$","",$3);
    widths=widths " " $3;
    next;
}
END {
    sub("^ ","",widths);
    printf("FIELDWIDTHS=%s\n", widths);
}
