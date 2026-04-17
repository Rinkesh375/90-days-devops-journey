if [ -f file.txt ]; then
  echo "File exists"
else
  echo "File not found"
fi



if [ -d myfolder ]; then
  echo "Directory exists"
else
  echo "Directory not found"
fi



if [ -e data ]; then
  echo "Exists"
else
  echo "Not exists"
fi