#!/bin/bash

MISSING_FILE="missing.txt"

firefox $(tail -n 10 $MISSING_FILE)

