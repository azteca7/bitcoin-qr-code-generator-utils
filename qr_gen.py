#!/usr/bin/python
import qrcode
import sys
import qrcode
#print len(sys.argv)


if len(sys.argv)<2:
   print  "Use: python qr_gen.py address [amount]"
   sys.exit() 
text=sys.argv[1]
if len(sys.argv)>2:
    text="bitcoin:"+text+"?amount="+sys.argv[2]


def genqr():
#    text="bitcoin:"+address+"?amount="+amnt
    #print text
     img=qrcode.make(text)
     img.save("addr1.png")


if __name__  == "__main__":
    genqr()
