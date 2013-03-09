.class Lcom/android/org/bouncycastle/openssl/PEMReader$DSAKeyPairParser;
.super Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$DSAKeyPairParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/openssl/PEMReader$DSAKeyPairParser;->readKeyPair(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_0

    new-instance v10, Lcom/android/org/bouncycastle/openssl/PEMException;

    const-string v11, "malformed sequence in DSA private key"

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/DERInteger;

    new-instance v4, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v4, v10, v11, v12, v13}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v5, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v5, v10, v11, v12, v13}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v10, "DSA"

    iget-object v11, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v10, Ljava/security/KeyPair;

    invoke-virtual {v1, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v10

    :catch_1
    move-exception v0

    new-instance v10, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "problem creating DSA private key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
.end method
