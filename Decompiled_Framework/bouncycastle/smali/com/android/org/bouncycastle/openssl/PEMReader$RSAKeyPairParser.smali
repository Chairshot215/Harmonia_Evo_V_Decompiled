.class Lcom/android/org/bouncycastle/openssl/PEMReader$RSAKeyPairParser;
.super Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAKeyPairParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAKeyPairParser;->readKeyPair(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMException;

    const-string v3, "malformed sequence in RSA private key"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v11

    throw v11

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x7

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    new-instance v20, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "RSA"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v14

    new-instance v2, Ljava/security/KeyPair;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v14, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v11

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem creating RSA private key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
