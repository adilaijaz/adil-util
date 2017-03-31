#!/bin/bash
#jar xvf $1
for f in `find . -name *.class`; do
  CLASS=`javap -verbose $f | grep major | grep 52`
  if [[ -n "$CLASS"  ]]; then
          echo $f;
  fi
done
