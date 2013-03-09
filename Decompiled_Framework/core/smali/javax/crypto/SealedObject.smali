.class public Ljavax/crypto/SealedObject;
.super Ljava/lang/Object;
.source "SealedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3e363da6c3b75470L


# instance fields
.field protected encodedParams:[B

.field private encryptedContent:[B

.field private paramsAlg:Ljava/lang/String;

.field private sealAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "c == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v5, v4

    :goto_0
    iput-object v5, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-nez v0, :cond_2

    :goto_1
    iput-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected constructor <init>(Ljavax/crypto/SealedObject;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "so == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    iget-object v0, p1, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    iget-object v0, p1, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    return-object v0
.end method

.method public final getObject(Ljava/security/Key;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "key == null"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    :try_start_0
    iget-object v5, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    iget-object v5, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->init([B)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    :goto_0
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_1
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_2
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_3
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_4
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getObject(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "provider name empty or null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    :try_start_0
    iget-object v5, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v5, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    iget-object v5, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->init([B)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    :goto_0
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    :cond_2
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_1
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_2
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_3
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_4
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "c == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {p1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
