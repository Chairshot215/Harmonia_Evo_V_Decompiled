.class public Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v31, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v9, 0x0

    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v2, v9, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;->getY()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getP()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getG()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getQ()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getJ()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getJ()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    :cond_2
    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getValidationParms()Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    move-result-object v22

    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getSeed()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getPgenCounter()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v30

    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move-object/from16 v0, v32

    invoke-direct {v7, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    :cond_3
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    move-object/from16 v0, v33

    invoke-direct {v9, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    move-object v2, v9

    goto :goto_0

    :cond_4
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v29, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v26

    if-nez v26, :cond_5

    const/16 v25, 0x0

    :goto_1
    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-direct {v0, v2, v9, v10, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-direct {v2, v9, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->intValue()I

    move-result v25

    goto :goto_1

    :cond_6
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    const/16 v28, 0x0

    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v29

    new-instance v28, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v9, v10}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_8
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v0, v28

    invoke-direct {v2, v9, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v29, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObject;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    const/4 v8, 0x0

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v27

    check-cast v27, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v23

    if-nez v23, :cond_a

    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v23

    if-nez v23, :cond_a

    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v23

    :cond_a
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v16

    new-instance v24, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    new-instance v18, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-direct {v2, v9, v8}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    goto/16 :goto_0

    :cond_b
    new-instance v23, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_2

    :cond_c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v9, "algorithm identifier in key not recognised"

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

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

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
