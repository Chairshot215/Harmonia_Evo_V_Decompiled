.class public Ljavax/crypto/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# static fields
.field private static final ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

.field private static final ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final nullParam:[B


# instance fields
.field private algName:Ljava/lang/String;

.field private final algParameters:Ljava/security/AlgorithmParameters;

.field private volatile encoded:[B

.field private final encryptedData:[B

.field private oid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->nullParam:[B

    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo$1;

    new-array v1, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Ljavax/crypto/EncryptedPrivateKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo$2;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v4

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljavax/crypto/EncryptedPrivateKeyInfo$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    nop

    :array_0
    .array-data 0x1
        0x5t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the algName parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptedData == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encryptedData.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmParameters;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algParams == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptedData == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encryptedData.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public constructor <init>([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "encoded == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    array-length v5, p1

    new-array v5, v5, [B

    iput-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v5, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v5, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    aget-object v0, v4, v7

    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljavax/crypto/EncryptedPrivateKeyInfo;->isNullValue([B)Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/AlgorithmParameters;->init([B)V

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    check-cast v5, [B

    check-cast v5, [B

    iput-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method static synthetic access$000(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    sget-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->nullParam:[B

    return-object v0
.end method

.method static synthetic access$200(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljavax/crypto/EncryptedPrivateKeyInfo;)[B
    .locals 1

    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    return-object v0
.end method

.method private invalidKey()Ljava/security/InvalidKeyException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Decrypted data does not represent valid PKCS#8 PrivateKeyInfo"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isNullValue([B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private mapAlgName()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/harmony/security/utils/AlgNameMapper;->isOID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/harmony/security/utils/AlgNameMapper;->getStandardName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    if-nez v2, :cond_3

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    if-eqz v2, :cond_1

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAlgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    if-nez v1, :cond_0

    sget-object v1, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    :cond_0
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getEncryptedData()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "decryptKey == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    :try_start_1
    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    :cond_1
    const/4 v4, 0x2

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v3

    :try_start_3
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->invalidKey()Ljava/security/InvalidKeyException;

    move-result-object v4

    throw v4
    :try_end_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_2
    move-exception v2

    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_3
    move-exception v2

    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_4
    move-exception v2

    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_5
    move-exception v2

    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/lang/String;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "decryptKey == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "providerName == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :try_start_0
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez v4, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    :try_start_1
    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    :cond_2
    const/4 v4, 0x2

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v3

    :try_start_3
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->invalidKey()Ljava/security/InvalidKeyException;

    move-result-object v4

    throw v4
    :try_end_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_2
    move-exception v2

    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_3
    move-exception v2

    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_4
    move-exception v2

    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_5
    move-exception v2

    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "decryptKey == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "provider == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :try_start_0
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez v4, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    :try_start_1
    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    :cond_2
    const/4 v4, 0x2

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v3

    :try_start_3
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->invalidKey()Ljava/security/InvalidKeyException;

    move-result-object v4

    throw v4
    :try_end_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_2
    move-exception v2

    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_3
    move-exception v2

    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_4
    move-exception v2

    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_5
    move-exception v2

    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "cipher == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :try_start_1
    sget-object v3, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Decrypted data does not represent valid PKCS#8 PrivateKeyInfo"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_1
    move-exception v1

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2
    move-exception v1

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_3
    move-exception v1

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
