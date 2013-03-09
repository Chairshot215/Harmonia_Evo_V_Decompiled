.class public Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source "JCEECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPointEncoder;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

.field private d:Ljava/math/BigInteger;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "EC"

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "EC"

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-void

    :cond_0
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "EC"

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method private getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 11

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-direct {v10, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v9}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v9}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getCurveName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_2
    new-instance v7, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getKey()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v9, v6}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_3

    new-instance v8, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v8, v2, v3, v9}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    new-instance v7, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getDEREncoded()[B

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v2, :cond_2

    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v9, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v8, v2, v9}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
