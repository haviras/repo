#!/bin/bash
cat /proc/meminfo | grep PageTables  | logger -t 4123tag
