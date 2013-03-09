.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.source "JDKKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;-><init>()V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    if-eqz v13, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wrong version of key store."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v4, v0, [B

    array-length v0, v4

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v8, v4}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-ltz v5, :cond_4

    const/16 v0, 0x1000

    if-le v5, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v13, :cond_6

    const-string v1, "OldPBEWithSHAAndTwofish-CBC"

    :goto_0
    const/4 v2, 0x2

    move-object v0, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-instance v10, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    new-instance v9, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v9, v6, v10}, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V

    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v12, v0, [B

    invoke-static {v6, v12}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    new-instance v0, Ljava/io/IOException;

    const-string v2, "KeyStore integrity check failed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    goto :goto_0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x14

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v0, v4

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v1, "PBEWithSHAAndTwofish-CBC"

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance v9, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v9, v6, v0}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;-><init>(Ljava/io/OutputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V

    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->getDigest()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-virtual {v6, v11}, Ljavax/crypto/CipherOutputStream;->write([B)V

    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V

    return-void
.end method
