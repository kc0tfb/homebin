#!/bin/bash
workdir=`mktemp -d`
cd ${workdir:?}
email="david.niemeyer@wellsfargo.com, nicholas.gillis@wellsfargo.com"
ncftpget -Z -V -r 3 -d - -u wfmg -p 'q#!DQDVC' ftp1.ictgroup.com ${workdir:?} /outbox/WFMG_WT2_INTERVAL.xls > logfile 2>&1
mpack -a -s "ICT UPDATE" -d logfile WFMG_WT2_INTERVAL.xls ${email:?}
cd - >/dev/null
rm -rf ${workdir:?}
