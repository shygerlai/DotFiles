#!/bin/bash
#
sensors | grep temp1 | awk '{print $2}' | head -1
