# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use OldUTF8;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あeえ' =~ /(あ[^いう]え)/) {
    if ("$1" eq "あeえ") {
        print "ok - 1 $^X $__FILE__ ('あeえ' =~ /あ[^いう]え/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あeえ' =~ /あ[^いう]え/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あeえ' =~ /あ[^いう]え/).\n";
}

__END__
