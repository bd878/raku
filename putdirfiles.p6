#!/usr/bin

for dir($*CWD) -> $file {
  state $line = 0;
  put $line, " ", $file;
  $line++;
}
