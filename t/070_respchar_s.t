# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use OldUTF8;
print "1..1\n";

my $__FILE__ = __FILE__;

$a = "アソア";
if ($a =~ s/(ア([イソウ])ア)//) {
    if ($1 eq "アソア") {
        if ($2 eq "ソ") {
            print qq{ok - 1 "アソア" =~ s/(ア([イソウ])ア)// \$1=($1), \$2=($2) $^X $__FILE__\n};
        }
        else {
            print qq{not ok - 1 "アソア" =~ s/(ア([イソウ])ア)// \$1=($1), \$2=($2) $^X $__FILE__\n};
        }
    }
    else {
        print qq{not ok - 1 "アソア" =~ s/(ア([イソウ])ア)// \$1=($1), \$2=($2) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 "アソア" =~ s/(ア([イソウ])ア)// \$1=($1), \$2=($2) $^X $__FILE__\n};
}

__END__
