# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use OldUTF8;
print "1..1\n";

my $__FILE__ = __FILE__;

$a = "アソソ";
if ($a !~ s/(イソ+)//) {
    print qq{ok - 1 "アソソ" !~ s/(イソ+)// \$1=($1) $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 "アソソ" !~ s/(イソ+)// \$1=($1) $^X $__FILE__\n};
}

__END__
