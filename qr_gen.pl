#!/usr/bin/perl

if ($#ARGV<0){
	print "USE: perl gen_qr.pl address amount\n";
        exit();

}


my $text=$ARGV[0];
if ($#ARGV>0){
   $text="bitcoin:".$text."?amount=$ARGV[1]"
}

#print "ARGV $#ARGV TEXT:$text\n";
use Imager::QRCode;

    my $qrcode = Imager::QRCode->new(
        size          => 2,
        margin        => 2,
        version       => 1,
        level         => 'M',
        casesensitive => 1,
        lightcolor    => Imager::Color->new(255, 255, 255),
        darkcolor     => Imager::Color->new(0, 0, 0),
    );
    my $img = $qrcode->plot("$text");
    $img->write(file => "addr1.png");


