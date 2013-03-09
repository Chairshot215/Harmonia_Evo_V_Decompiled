.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMidTerms([I)[I
    .locals 6

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-array v0, v2, [I

    array-length v1, p0

    if-ne v1, v3, :cond_0

    aget v1, p0, v5

    aput v1, v0, v5

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only Trinomials and pentanomials supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_3

    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_3

    aget v1, p0, v5

    aput v1, v0, v5

    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_2

    aget v1, p0, v3

    aput v1, v0, v3

    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_0

    :cond_2
    aget v1, p0, v4

    aput v1, v0, v3

    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_0

    :cond_3
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_5

    aget v1, p0, v3

    aput v1, v0, v5

    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_4

    aget v1, p0, v5

    aput v1, v0, v3

    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_0

    :cond_4
    aget v1, p0, v4

    aput v1, v0, v3

    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_0

    :cond_5
    aget v1, p0, v4

    aput v1, v0, v5

    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_6

    aget v1, p0, v5

    aput v1, v0, v3

    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_0

    :cond_6
    aget v1, p0, v3

    aput v1, v0, v3

    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_0
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    move-object v6, p0

    check-cast v6, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v7

    :cond_0
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v9

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v8, v9, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v8

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify EC private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v2, 0x0

    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    move-object v6, p0

    check-cast v6, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v9

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    move-object v7, p0

    check-cast v7, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v9

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot identify EC public key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurveName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    :cond_0
    return-object v0
.end method
