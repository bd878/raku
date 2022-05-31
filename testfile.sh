#!/bin/bash

if [ -f "file.txt" ]; then
  cat "file.txt";
else
  echo "File file.txt not found";
fi

