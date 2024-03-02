#!/bin/bash

column -s, -t acc_ags.csv | grep -i ZARAGOZA | awk '{print $1 "\t" $14}'
