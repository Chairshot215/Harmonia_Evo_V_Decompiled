.class public Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;
.super Ljava/security/Signature;
.source "SHA1withDSA_SignatureImpl.java"


# instance fields
.field private dsaKey:Ljava/security/interfaces/DSAKey;

.field private msgDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA1withDSA"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method private checkSignature([BII)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    add-int/lit8 v19, p2, 0x3

    :try_start_0
    aget-byte v7, p1, v19

    add-int v19, p2, v7

    add-int/lit8 v19, v19, 0x5

    aget-byte v8, p1, v19

    add-int/lit8 v19, p2, 0x0

    aget-byte v19, p1, v19

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    add-int/lit8 v19, p2, 0x2

    aget-byte v19, p1, v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    add-int v19, p2, v7

    add-int/lit8 v19, v19, 0x4

    aget-byte v19, p1, v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    add-int/lit8 v19, p2, 0x1

    aget-byte v19, p1, v19

    add-int v20, v7, v8

    add-int/lit8 v20, v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 v19, 0x15

    move/from16 v0, v19

    if-gt v7, v0, :cond_0

    const/16 v19, 0x15

    move/from16 v0, v19

    if-gt v8, v0, :cond_0

    if-eqz p3, :cond_1

    add-int/lit8 v19, p2, 0x1

    aget-byte v19, p1, v19

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v19, Ljava/security/SignatureException;

    const-string v20, "signature bytes have invalid encoding"

    invoke-direct/range {v19 .. v20}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    new-instance v19, Ljava/security/SignatureException;

    const-string v20, "bad argument: byte[] is too small"

    invoke-direct/range {v19 .. v20}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_1
    add-int/lit8 v19, v7, 0x5

    add-int v19, v19, v8

    :try_start_1
    aget-byte v19, p1, v19
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    new-array v3, v7, [B

    add-int/lit8 v19, p2, 0x4

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v3}, Ljava/math/BigInteger;-><init>([B)V

    new-array v3, v8, [B

    add-int/lit8 v19, p2, 0x6

    add-int v19, v19, v7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v3}, Ljava/math/BigInteger;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v19, v0

    check-cast v19, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_2
    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_3
    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    new-instance v19, Ljava/math/BigInteger;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v6, v14, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x0

    goto :goto_0

    :cond_4
    const/16 v19, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    instance-of v5, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5}, Ljava/security/InvalidKeyException;-><init>()V

    throw v5

    :cond_1
    move-object v5, p1

    check-cast v5, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    move-object v5, p1

    check-cast v5, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v7, :cond_2

    const/16 v5, 0x200

    if-lt v0, v5, :cond_2

    const/16 v5, 0x400

    if-gt v0, v5, :cond_2

    and-int/lit8 v5, v0, 0x3f

    if-eqz v5, :cond_3

    :cond_2
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "bad p"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-eq v5, v7, :cond_4

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_4

    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "bad q"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-ne v5, v7, :cond_5

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    :cond_5
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "x <= 0 || x >= q"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    check-cast p1, Ljava/security/interfaces/DSAKey;

    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    instance-of v5, p1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "publicKey is not an instance of DSAPublicKey"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v5, p1

    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    move-object v5, p1

    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v7, :cond_2

    const/16 v5, 0x200

    if-lt v0, v5, :cond_2

    const/16 v5, 0x400

    if-gt v0, v5, :cond_2

    and-int/lit8 v5, v0, 0x3f

    if-eqz v5, :cond_3

    :cond_2
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "bad p"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-ne v5, v7, :cond_4

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_5

    :cond_4
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "bad q"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-eq v5, v7, :cond_6

    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "y <= 0"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    check-cast p1, Ljava/security/interfaces/DSAKey;

    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "param == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid parameter for this engine"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    new-instance v20, Ljava/security/SecureRandom;

    invoke-direct/range {v20 .. v20}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface {v11}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v12

    invoke-interface {v11}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v20, v0

    check-cast v20, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface/range {v20 .. v20}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v19

    new-instance v4, Ljava/math/BigInteger;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v20, 0x14

    move/from16 v0, v20

    new-array v15, v0, [B

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v6, Ljava/math/BigInteger;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v6, v0, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-virtual {v5, v6, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->signum()I

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    array-length v8, v14

    const/16 v20, 0x0

    aget-byte v20, v14, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_2

    add-int/lit8 v8, v8, 0x1

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v9, v0

    const/16 v20, 0x0

    aget-byte v20, v17, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    add-int/lit8 v20, v8, 0x6

    add-int v20, v20, v9

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x30

    aput-byte v21, v18, v20

    const/16 v20, 0x1

    add-int/lit8 v21, v8, 0x4

    add-int v21, v21, v9

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v18, v20

    const/16 v20, 0x2

    const/16 v21, 0x2

    aput-byte v21, v18, v20

    const/16 v20, 0x3

    int-to-byte v0, v8

    move/from16 v21, v0

    aput-byte v21, v18, v20

    add-int/lit8 v20, v8, 0x4

    const/16 v21, 0x2

    aput-byte v21, v18, v20

    add-int/lit8 v20, v8, 0x5

    int-to-byte v0, v9

    move/from16 v21, v0

    aput-byte v21, v18, v20

    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_4

    const/4 v7, 0x4

    :goto_0
    const/16 v20, 0x0

    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v14, v0, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v9, v0, :cond_5

    add-int/lit8 v7, v8, 0x6

    :goto_1
    const/16 v20, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v18

    :cond_4
    const/4 v7, 0x5

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v8, 0x7

    goto :goto_1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sigBytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->checkSignature([BII)Z

    move-result v0

    return v0
.end method

.method protected engineVerify([BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->checkSignature([BII)Z

    move-result v0

    return v0
.end method
