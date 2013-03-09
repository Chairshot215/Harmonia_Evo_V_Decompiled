.class final Ljavax/crypto/EncryptedPrivateKeyInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EncryptedPrivateKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/EncryptedPrivateKeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    move-object v2, p1

    check-cast v2, Ljavax/crypto/EncryptedPrivateKeyInfo;

    :try_start_0
    #getter for: Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;
    invoke-static {v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$000(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$100()[B

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    new-instance v4, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #getter for: Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;
    invoke-static {v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$200(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    aput-object v4, p2, v3

    const/4 v3, 0x1

    #getter for: Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B
    invoke-static {v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$300(Ljavax/crypto/EncryptedPrivateKeyInfo;)[B

    move-result-object v4

    aput-object v4, p2, v3

    return-void

    :cond_0
    #getter for: Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;
    invoke-static {v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$000(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/AlgorithmParameters;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
