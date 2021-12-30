#!/usr/bin

if $*DISTRO.is-win {
  print Q :x 'C:\Windows\System32\hostname.exe';
} else {
  print Q :x '/bin/hostname';
}