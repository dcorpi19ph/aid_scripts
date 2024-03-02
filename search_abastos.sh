#!/bin/bash

column -s, -t acc_ags.csv | grep -i ABASTOS | awk '{print $1 "\t" $14}'
