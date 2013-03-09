.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.super Ljava/security/Signature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;
    }
.end annotation


# static fields
.field private static jdkToOpenSsl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:I

.field private dsa:I

.field private final evpAlgorithm:Ljava/lang/String;

.field private rsa:I

.field private final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "MD5WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "MD5WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "MD5/RSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.4"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA1WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA1WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA1/RSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA-1/RSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.5"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.29"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA256WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA256WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.11"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA384WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA384WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.12"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA512WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA512WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.13"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA1withDSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA/DSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "DSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26with1.2.840.10040.4.1"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26with1.2.840.10040.4.3"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "DSAWithSHA1"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.10040.4.3"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    const-string v0, "RSA-MD2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v2, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v2, p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v2, p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v6, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v6, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v2, v0

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)I

    move-result v6

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyInit(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_0
    move-exception v3

    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-direct {v6, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    instance-of v6, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v6, :cond_1

    :try_start_2
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v5, v0

    invoke-interface {v5}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-interface {v5}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B)I

    move-result v6

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-direct {v6, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_1
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "Need DSA or RSA public key"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_2
    move-exception v4

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    return-void
.end method

.method protected engineSign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineUpdate([BII)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 2

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyUpdate(I[BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    if-eqz v5, :cond_0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    :goto_0
    if-nez v1, :cond_1

    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Need DSA or RSA public key"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    goto :goto_0

    :cond_1
    :try_start_0
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    const/4 v6, 0x0

    array-length v7, p1

    invoke-static {v5, p1, v6, v7, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyFinal(I[BIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v3, :cond_2

    :goto_1
    return v3

    :cond_2
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_free(I)V

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_free(I)V

    :cond_1
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_destroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
