


ADDRESS=$1
AMOUNT=$2
FILE1=addr1.png
if [ X$AMOUNT == "X" ];then
TXT=$ADDRESS
else
TXT="bitcoin:$ADDRESS?amount=$AMOUNT"
fi

qr $TXT > $FILE1
