# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use OldUTF8 qw(reverse);
print "1..2\n";

my $__FILE__ = __FILE__;

@_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ');
if ("@_" eq "さしすせそ かきくけこ あいうえお") {
    print qq{ok - 1 \@_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ') $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 \@_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ') $^X $__FILE__\n};
}

$_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ');
if ($_ eq "そせすしさこけくきかおえういあ") {
    print qq{ok - 2 \$_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ') $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ') $^X $__FILE__\n};
}

__END__
