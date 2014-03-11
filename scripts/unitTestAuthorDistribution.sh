#!/bin/bash
for f in `cat $1`; do git annotate $f; done | grep "@Test" | awk '{print $2}' | sed 's/(//' | sort | uniq -c | sort -k1,1nr 
