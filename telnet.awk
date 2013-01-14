#!/usr/bin/gawk -f
BEGIN {
  RS = ORS = "\r\n";
  S="/inet/tcp/23/0/0";
  C="netstat -n | grep ':23 *[0-9].* ESTAB'";

  while (1) {
    printf("")|& S;
    while (C | getline) {
      NF--;
      print "You are connecting from: " $NF |& S;
    }
    fflush(S);
    close(C);
    close(S);
  }
}
