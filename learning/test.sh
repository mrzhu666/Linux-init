echo "Testing \"false\""
if [ "false" ]              #  "false"是一个字符串.
then
  echo "\"false\" is true." #+ 它被测试为真.
else
  echo "\"false\" is false."
fi            # "false"为真.    