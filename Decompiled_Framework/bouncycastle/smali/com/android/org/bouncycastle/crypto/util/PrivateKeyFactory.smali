.class public Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v16, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime1()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime2()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent1()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent2()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v21, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v18

    if-nez v18, :cond_1

    const/16 v17, 0x0

    :goto_1
    new-instance v13, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-direct {v13, v2, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v13}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->intValue()I

    move-result v17

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    const/16 v20, 0x0

    if-eqz v11, :cond_3

    invoke-interface {v11}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v21

    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v21, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObject;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    const/4 v1, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v15

    if-nez v15, :cond_5

    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v15

    if-nez v15, :cond_5

    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v15

    :cond_5
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_2
    new-instance v14, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v14, v2}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getKey()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_6
    new-instance v15, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v15, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_2

    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "algorithm identifier in key not recognised"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createKey(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey([B)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
