use Test::More tests => 26;
use Crypt::Rhash;

#########################

$r = new Crypt::Rhash(RHASH_ALL);
$r->update("a")->final();

is( $r->hash(RHASH_CRC32), "e8b7be43");
is( $r->hash(RHASH_MD4),   "bde52cb31de33e46245e05fbdbd6fb24");
is( $r->hash(RHASH_MD5),   "0cc175b9c0f1b6a831c399e269772661");
is( $r->hash(RHASH_SHA1),  "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8");
is( $r->hash(RHASH_TIGER), "77befbef2e7ef8ab2ec8f93bf587a7fc613e247f5f247809");
is( $r->hash(RHASH_TTH),   "czquwh3iyxbf5l3bgyugzhassmxu647ip2ike4y");
is( $r->hash(RHASH_BTIH),  "fd408e9d024b58a57aa1313eff14005ff8b2c5d1");
is( $r->hash(RHASH_ED2K),  "bde52cb31de33e46245e05fbdbd6fb24");
is( $r->hash(RHASH_AICH),  "q336in72uwt7zyk5dxolt2xk5i3xmz5y");
is( $r->hash(RHASH_WHIRLPOOL), "8aca2602792aec6f11a67206531fb7d7f0dff59413145e6973c45001d0087b42d11bc645413aeff63a42391a39145a591a92200d560195e53b478584fdae231a");
is( $r->hash(RHASH_RIPEMD160), "0bdc9d2d256b3ee9daae347be6f4dc835a467ffe");
is( $r->hash(RHASH_GOST),  "d42c539e367c66e9c88a801f6649349c21871b4344c6a573f849fdce62f314dd");
is( $r->hash(RHASH_GOST_CRYPTOPRO), "e74c52dd282183bf37af0079c9f78055715a103f17e3133ceff1aacf2f403011");
is( $r->hash(RHASH_HAS160), "4872bcbc4cd0f0a9dc7c2f7045e5b43b6c830db8");
is( $r->hash(RHASH_SNEFRU128), "bf5ce540ae51bc50399f96746c5a15bd");
is( $r->hash(RHASH_SNEFRU256), "45161589ac317be0ceba70db2573ddda6e668a31984b39bf65e4b664b584c63d");
is( $r->hash(RHASH_SHA224),   "abd37534c7d9a2efb9465de931cd7055ffdb8879563ae98078d6d6d5");
is( $r->hash(RHASH_SHA256),   "ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb");
is( $r->hash(RHASH_SHA384),   "54a59b9f22b0b80880d8427e548b7c23abd873486e1f035dce9cd697e85175033caa88e6d57bc35efae0b5afd3145f31");
is( $r->hash(RHASH_SHA512),   "1f40fc92da241694750979ee6cf582f2d5d7d28e18335de05abc54d0560e0f5302860c652bf08d560252aa5e74210546f369fbbbce8c12cfc7957b2652fe9a75");
is( $r->hash(RHASH_EDONR256), "943aa9225a2cf154ec2e4dd81237720ba538ca8df2fd83c0b893c5d265f353a0");
is( $r->hash(RHASH_EDONR512), "b59ec44f7beef8a04ceed38a973d77c65e22e9458d5f67b497948da34986c093b5efc5483fbee55f2f740fcad31f18d80db44bb6b8843e7fd599188e7c07233b");
is( $r->hash(RHASH_SHA3_224), "7cf87d912ee7088d30ec23f8e7100d9319bff090618b439d3fe91308");
is( $r->hash(RHASH_SHA3_256), "3ac225168df54212a25c1c01fd35bebfea408fdac2e31ddd6f80a4bbf9a5f1cb");
is( $r->hash(RHASH_SHA3_384), "85e964c0843a7ee32e6b5889d50e130e6485cffc826a30167d1dc2b3a0cc79cba303501a1eeaba39915f13baab5abacf");
is( $r->hash(RHASH_SHA3_512), "9c46dbec5d03f74352cc4a4da354b4e9796887eeb66ac292617692e765dbe400352559b16229f97b27614b51dbfbbb14613f2c10350435a8feaf53f73ba01c7c");

__END__
