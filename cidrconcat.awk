#!/usr/bin/gawk -f
/^[1-9]/ {
  if (NF==2) {
    printf("%-20s 550 Mail from %s rejected by default; you may ask for an exception at http://luno.org/contact\n", $1, $2);
  } else {
    reason=$0;
    sub("^.*" $2, $2, reason);
    printf("%-20s 550 %s; you may ask for an exception at http://luno.org/contact\n", $1, reason);
  }
}
