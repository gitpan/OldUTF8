# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use OldUTF8;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいう' =~ /(あい+いう)/) {
    print "not ok - 1 $^X $__FILE__ not ('あいう' =~ /あい+いう/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('あいう' =~ /あい+いう/).\n";
}

__END__
