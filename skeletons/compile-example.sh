#!/bin/sh

SHARE=/usr/local/share/asn1c/include

# Compile generated files and converter example
gcc -I$SHARE -DASN_PDU_COLLECTION -DHAVE_TM_GMTOFF -Wno-format -c *.c

# Link compiled object files with pre-compiled skeleton library libskeleton.a to make executable
gcc *.o -I$SHARE -I. -L$SHARE -lskeleton -o converter-example
