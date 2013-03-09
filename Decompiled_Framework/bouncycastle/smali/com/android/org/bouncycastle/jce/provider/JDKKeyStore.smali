.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKKeyStore.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;,
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field private static final KEY_CIPHER:Ljava/lang/String; = "PBEWithSHAAnd3-KeyTripleDES-CBC"

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field private static final KEY_SALT_SIZE:I = 0x14

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final STORE_CIPHER:Ljava/lang/String; = "PBEWithSHAAndTwofish-CBC"

.field private static final STORE_SALT_SIZE:I = 0x14

.field private static final STORE_VERSION:I = 0x1


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method static synthetic access$000(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method private decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-array v1, v5, [B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    :try_start_0
    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v3

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_1
    move-exception v3

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    new-array v2, v6, [B

    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    const-string v6, "PKCS#8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "PKCS8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    :goto_0
    packed-switch v4, :pswitch_data_0

    :try_start_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not recognised!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception creating key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-string v6, "X.509"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "X509"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    :cond_3
    const-string v6, "RAW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v6, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_1
    return-object v6

    :cond_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not recognised!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    :try_start_1
    const-string v6, "BC"

    invoke-static {v0, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    goto :goto_1

    :pswitch_1
    const-string v6, "BC"

    invoke-static {v0, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    goto :goto_1

    :pswitch_2
    const-string v6, "BC"

    invoke-static {v0, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    :goto_0
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void

    :cond_0
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/Certificate;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject([C)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    goto :goto_0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v2

    if-eq v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    if-eqz v10, :cond_2

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Wrong version of key store."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    new-array v9, v11, [B

    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-instance v1, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v11, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v1, v11}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    if-eqz p2, :cond_3

    array-length v11, p2

    if-eqz v11, :cond_3

    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v7

    new-instance v8, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v11, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v8, v11}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    invoke-virtual {v8, v7, v9, v2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    invoke-static {v7, v12}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    new-instance v3, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;

    invoke-direct {v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Mac;)V

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->loadStore(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    new-array v4, v11, [B

    invoke-virtual {v1, v4, v12}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    new-array v6, v11, [B

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v4, v6}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    new-instance v11, Ljava/io/IOException;

    const-string v12, "KeyStore integrity check failed."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->loadStore(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    new-array v6, v11, [B

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    goto/16 :goto_0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key store already has a key entry with alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    invoke-virtual {v7, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    new-instance v0, Ljava/security/KeyStoreException;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public engineSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v9, 0x14

    new-array v8, v9, [B

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9}, Ljava/security/SecureRandom;->nextInt()I

    move-result v9

    and-int/lit16 v9, v9, 0x3ff

    add-int/lit16 v3, v9, 0x400

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v9, v8

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v1, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v9, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v1, v9}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    new-instance v4, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;

    invoke-direct {v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;-><init>(Ljava/io/OutputStream;Lcom/android/org/bouncycastle/crypto/Mac;)V

    new-instance v7, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v9, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v7, v9}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v6

    invoke-virtual {v7, v6, v8, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    const/4 v2, 0x0

    :goto_0
    array-length v9, v6

    if-eq v2, v9, :cond_0

    aput-byte v10, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->saveStore(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v9

    new-array v5, v9, [B

    invoke-virtual {v1, v5, v10}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method protected loadStore(Ljava/io/InputStream;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v23, Ljava/io/DataInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->read()I

    move-result v19

    :goto_0
    if-lez v19, :cond_1

    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    const/4 v14, 0x0

    if-eqz v22, :cond_0

    move/from16 v0, v22

    new-array v14, v0, [Ljava/security/cert/Certificate;

    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    aput-object v2, v14, v24

    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    :cond_0
    packed-switch v19, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown object type in store."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    const/4 v6, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V

    invoke-virtual {v8, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->read()I

    move-result v19

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v8 .. v14}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v2, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v0, v2, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    move-object/from16 v16, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v21}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v2, v4, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    const-string v5, "BC"

    invoke-static {p1, v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v1, p4, p5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    const-string v5, "BC"

    invoke-static {p1, v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v0, p2, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error initialising store of key store: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected saveStore(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unknown object type in store."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    array-length v6, v1

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v5, 0x0

    :goto_1
    array-length v6, v1

    if-eq v5, v6, :cond_0

    aget-object v6, v1, v5

    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Key;

    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    array-length v6, v0

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->write(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    return-void
.end method
