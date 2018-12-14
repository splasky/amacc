#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
# Last modified: 2019-08-08 17:49:39

import re
import sys

if __name__ == "__main__":
    if not sys.argv and len(sys.argv) < 2:
        print("must enter ll file!")
        sys.exit(-1)

    IMM_TABLE = []
    STR_TABLE = []
    with open(sys.argv[1], "r") as f:
        CONTENTS = f.readlines()

    for line in CONTENTS:
        if '@' not in line and "IMM" in line:
            value = int(re.search(r'-?\d+', line).group())
            if value < -100000:
                IMM_TABLE.append(value)
        elif '@' in line:
            content = line.split()[-1].split(',')[-1]
            STR_TABLE.append(int(content))

    #  print(IMM_TABLE)
    #  print(STR_TABLE)
    print(len(list(set(IMM_TABLE) - set(STR_TABLE))))
