pragma circom 2.0.0;

include "hasher.circom";

template CoinWithdraw() {
    signal input a;
    signal input b;
    signal output c;

    component hasher = Hasher();
    hasher.left <== a;
    hasher.right <== b;
    c <== hasher.hash;
 }

 component main = CoinWithdraw();