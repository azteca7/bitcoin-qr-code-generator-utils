


ADDRESS=$1
AMOUNT=$2
FILE1=addr1.png
if [ X$AMOUNT == "X" ];then
TXT=$ADDRESS
qrencode -o addr.png -s 7 $ADDRESS
else
TXT="bitcoin:$ADDRESS?amount=$AMOUNT"
fi

qrencode -o $FILE1 -s 7 $TXT
