# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use OldUTF8;
print "1..1\n";

eval q< '-' =~ /(あ[い-あ])/ >;
if ($@) {
    print "ok - 1 $^X 149_jperlre.t die ('-' =~ /あ[い-あ]/).\n";
}
else {
    print "not ok - 1 $^X 149_jperlre.t die ('-' =~ /あ[い-あ]/).\n";
}

__END__
