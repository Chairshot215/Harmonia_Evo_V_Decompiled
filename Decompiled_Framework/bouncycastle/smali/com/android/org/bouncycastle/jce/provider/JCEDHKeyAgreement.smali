.class public Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "JCEDHKeyAgreement.java"


# static fields
.field private static final algorithms:Ljava/util/Hashtable;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private result:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v5, "DES"

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v5, "DESEDE"

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v5, "BLOWFISH"

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v5, "AES"

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    aget-byte v2, v1, v4

    if-nez v2, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [B

    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Diffie-Hellman not initialised."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "DHKeyAgreement doPhase requires DHPublicKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "DHPublicKey not for this KeyAgreement!"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eqz p2, :cond_4

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_4
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    goto :goto_0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Diffie-Hellman not initialised."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_1

    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string v2, "DHKeyAgreement - buffer too short"

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Diffie-Hellman not initialised."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    new-array v1, v4, [B

    array-length v4, v1

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v4, "DES"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    :cond_1
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method protected engineGenerateSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v1, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "DHKeyAgreement requires DHPrivateKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "DHKeyAgreement requires DHPrivateKey for initialisation"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p1

    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p2, :cond_2

    instance-of v2, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v2, :cond_1

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "DHKeyAgreement only accepts DHParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    :goto_0
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    return-void

    :cond_2
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    goto :goto_0
.end method
