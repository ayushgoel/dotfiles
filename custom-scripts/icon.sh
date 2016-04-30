function init
{
  DIR="Icons"

  mkdir $DIR

  # iTunes
  sips -s format png -z 58 58 $FILE --out $DIR/Icon58.png
  sips -s format png -z 80 80   $FILE --out $DIR/Icon80.png

  # devices
  sips -s format png -z 87 87   $FILE --out $DIR/Icon87.png
  sips -s format png -z 120 120     $FILE --out $DIR/Icon120.png

  sips -s format png -z 120 120   $FILE --out $DIR/Icon120-1.png
  sips -s format png -z 180 180     $FILE --out $DIR/Icon180.png
}

function file_error
{
  echo "Error: Sorry but the file does not exist!"
}

function hint
{
  echo "This script is used to convert one large iOS App icon (1024x1024) into smaller ones based on iOS Human Interface Guidelines"
  echo ""
  echo " Usages:"
  echo "   bash appicons.sh file.png"
  echo ""
}

# --- main -----------------------------------------------------------

FILE=$1

if [ -e "$FILE" ]; then
  init
elif [ "$FILE" ]; then
  file_error
else
  hint
fi
