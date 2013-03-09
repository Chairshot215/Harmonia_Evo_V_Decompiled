.class public Ljava/security/spec/RSAOtherPrimeInfo;
.super Ljava/lang/Object;
.source "RSAOtherPrimeInfo.java"


# instance fields
.field private final crtCoefficient:Ljava/math/BigInteger;

.field private final prime:Ljava/math/BigInteger;

.field private final primeExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prime == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "primeExponent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crtCoefficient == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    iput-object p2, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    iput-object p3, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getPrime()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    return-object v0
.end method
