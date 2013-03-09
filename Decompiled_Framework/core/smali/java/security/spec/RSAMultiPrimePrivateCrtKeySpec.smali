.class public Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAMultiPrimePrivateCrtKeySpec.java"


# instance fields
.field private final crtCoefficient:Ljava/math/BigInteger;

.field private final otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

.field private final primeExponentP:Ljava/math/BigInteger;

.field private final primeExponentQ:Ljava/math/BigInteger;

.field private final primeP:Ljava/math/BigInteger;

.field private final primeQ:Ljava/math/BigInteger;

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/security/spec/RSAOtherPrimeInfo;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "publicExponent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "primeP == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "primeQ == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "primeExponentP == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "primeExponentQ == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crtCoefficient == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz p9, :cond_9

    array-length v0, p9

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "otherPrimeInfo.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    array-length v0, p9

    new-array v0, v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    array-length v1, v1

    invoke-static {p9, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput-object p2, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    iput-object p4, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    iput-object p5, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    iput-object p6, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    iput-object p7, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    iput-object p8, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    return-void

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    goto :goto_0
.end method


# virtual methods
.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/spec/RSAOtherPrimeInfo;

    iget-object v1, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
