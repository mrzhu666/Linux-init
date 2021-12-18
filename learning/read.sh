#!/bin/bash

read Keypress
case "$Keypress" in
  [[:lower:]]   ) echo "Lowercase letter";;
  [[:upper:]]   ) echo "Uppercase letter";;
  [0-9]         ) echo "Digit";;
  *             ) echo "Punctuation, whitespace, or other";;
esac      #  允许字符串的范围出现在[]中,
          #+ 或者POSIX风格的[[中.


your_name='qinjx'
str="Hello, I know your are \"$your_name\"! \n"
echo $str

exit 0