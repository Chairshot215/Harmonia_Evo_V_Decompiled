.class public Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;
.super Lorg/apache/harmony/security/PrivateKeyImpl;
.source "DSAPrivateKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/DSAPrivateKey;


# static fields
.field private static final serialVersionUID:J = -0x41736807029d1541L


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private transient params:Ljava/security/interfaces/DSAParams;

.field private q:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/DSAPrivateKeySpec;)V
    .locals 7

    const-string v3, "DSA"

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/PrivateKeyImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    new-instance v2, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;

    iget-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;-><init>([B[B[B)V

    new-instance v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const-string v3, "DSA"

    invoke-static {v3}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;

    new-instance v1, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;

    const/4 v3, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Integer;->encode(Ljava/lang/Object;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v0, v4, v5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->getEncoded()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->setEncoding([B)V

    new-instance v3, Ljava/security/spec/DSAParameterSpec;

    iget-object v4, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-string v7, "DSA"

    invoke-direct {p0, v7}, Lorg/apache/harmony/security/PrivateKeyImpl;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    sget-object v7, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v8, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->getPrivateKey()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v8, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    :try_start_2
    sget-object v7, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->p:[B

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->q:[B

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->g:[B

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    new-instance v7, Ljava/security/spec/DSAParameterSpec;

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    iget-object v9, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    iget-object v10, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    invoke-direct {v7, v8, v9, v10}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->setEncoding([B)V

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->setAlgorithm(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v3

    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode keySpec encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_1
    move-exception v3

    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_2
    move-exception v3

    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;

    return-object v0
.end method
