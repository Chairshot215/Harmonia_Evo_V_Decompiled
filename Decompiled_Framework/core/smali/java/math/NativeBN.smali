.class final Ljava/math/NativeBN;
.super Ljava/lang/Object;
.source "NativeBN.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native BN_add(III)Z
.end method

.method public static native BN_add_word(II)Z
.end method

.method public static native BN_bin2bn([BIZI)Z
.end method

.method public static native BN_bn2bin(I)[B
.end method

.method public static native BN_bn2dec(I)Ljava/lang/String;
.end method

.method public static native BN_bn2hex(I)Ljava/lang/String;
.end method

.method public static native BN_cmp(II)I
.end method

.method public static native BN_copy(II)Z
.end method

.method public static native BN_dec2bn(ILjava/lang/String;)I
.end method

.method public static native BN_div(IIII)Z
.end method

.method public static native BN_div_word(II)I
.end method

.method public static native BN_exp(III)Z
.end method

.method public static native BN_free(I)V
.end method

.method public static native BN_gcd(III)Z
.end method

.method public static native BN_generate_prime_ex(IIZIII)Z
.end method

.method public static native BN_hex2bn(ILjava/lang/String;)I
.end method

.method public static native BN_is_bit_set(II)Z
.end method

.method public static native BN_is_prime_ex(III)Z
.end method

.method public static native BN_mod_exp(IIII)Z
.end method

.method public static native BN_mod_inverse(III)Z
.end method

.method public static native BN_mod_word(II)I
.end method

.method public static native BN_mul(III)Z
.end method

.method public static native BN_mul_word(II)Z
.end method

.method public static native BN_new()I
.end method

.method public static native BN_nnmod(III)Z
.end method

.method public static native BN_set_negative(II)V
.end method

.method public static native BN_shift(III)Z
.end method

.method public static native BN_sub(III)Z
.end method

.method public static native BN_sub_word(II)Z
.end method

.method public static native ERR_error_string(I)Ljava/lang/String;
.end method

.method public static native ERR_get_error()I
.end method

.method public static native bitLength(I)I
.end method

.method public static native bn2litEndInts(I)[I
.end method

.method public static native litEndInts2bn([IIZI)Z
.end method

.method public static native longInt(I)J
.end method

.method public static native modifyBit(III)Z
.end method

.method public static native putLongInt(IJ)Z
.end method

.method public static native putULongInt(IJZ)Z
.end method

.method public static native sign(I)I
.end method

.method public static native twosComp2bn([BII)Z
.end method
