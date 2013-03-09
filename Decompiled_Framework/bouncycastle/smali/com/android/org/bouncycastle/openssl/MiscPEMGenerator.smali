.class public Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;
.super Ljava/lang/Object;
.source "MiscPEMGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private password:[C

.field private provider:Ljava/security/Provider;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->password:[C

    iput-object p4, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->random:Ljava/security/SecureRandom;

    if-eqz p5, :cond_0

    invoke-static {p5}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->provider:Ljava/security/Provider;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->provider:Ljava/security/Provider;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/NoSuchProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;Ljava/security/Provider;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->password:[C

    iput-object p4, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->random:Ljava/security/SecureRandom;

    iput-object p5, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->provider:Ljava/security/Provider;

    return-void
.end method

.method private createPemObject(Ljava/lang/Object;)Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v8, p1, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    if-eqz v8, :cond_0

    check-cast p1, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    :goto_0
    return-object p1

    :cond_0
    instance-of v8, p1, Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;

    if-eqz v8, :cond_1

    check-cast p1, Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v8, p1, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_2

    const-string v4, "CERTIFICATE"

    :try_start_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    new-instance p1, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    invoke-direct {p1, v4, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v8, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot encode object: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    instance-of v8, p1, Ljava/security/cert/X509CRL;

    if-eqz v8, :cond_3

    const-string v4, "X509 CRL"

    :try_start_1
    check-cast p1, Ljava/security/cert/X509CRL;

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v8, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot encode object: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/security/cert/CRLException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    instance-of v8, p1, Ljava/security/KeyPair;

    if-eqz v8, :cond_4

    check-cast p1, Ljava/security/KeyPair;

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;)Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object p1

    goto :goto_0

    :cond_4
    instance-of v8, p1, Ljava/security/PrivateKey;

    if-eqz v8, :cond_8

    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-object v8, p1

    check-cast v8, Ljava/security/Key;

    invoke-interface {v8}, Ljava/security/Key;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    instance-of v8, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v8, :cond_5

    const-string v4, "RSA PRIVATE KEY"

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    instance-of v8, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v8, :cond_6

    const-string v4, "DSA PRIVATE KEY"

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v3

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v8, v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v8, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    check-cast p1, Ljava/security/PrivateKey;

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ECDSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v4, "EC PRIVATE KEY"

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Cannot identify private key"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    instance-of v8, p1, Ljava/security/PublicKey;

    if-eqz v8, :cond_9

    const-string v4, "PUBLIC KEY"

    check-cast p1, Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    instance-of v8, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v8, :cond_a

    const-string v4, "ATTRIBUTE CERTIFICATE"

    check-cast p1, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    instance-of v8, p1, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;

    if-eqz v8, :cond_b

    const-string v4, "CERTIFICATE REQUEST"

    check-cast p1, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    instance-of v8, p1, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v8, :cond_c

    const-string v4, "PKCS7"

    check-cast p1, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    new-instance v8, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;

    const-string v9, "unknown object passed - can\'t encode."

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private createPemObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/security/KeyPair;

    if-eqz v5, :cond_0

    check-cast p1, Ljava/security/KeyPair;

    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    const/16 v19, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v5, :cond_3

    const-string v19, "RSA PRIVATE KEY"

    move-object/from16 v16, p1

    check-cast v16, Ljava/security/interfaces/RSAPrivateCrtKey;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct/range {v4 .. v12}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getEncoded()[B

    move-result-object v7

    :cond_1
    :goto_1
    if-eqz v19, :cond_2

    if-nez v7, :cond_5

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Object type not supported: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v5, :cond_4

    const-string v19, "DSA PRIVATE KEY"

    move-object/from16 v16, p1

    check-cast v16, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v17

    new-instance v20, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v21

    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v7

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/security/PrivateKey;

    if-eqz v5, :cond_1

    const-string v6, "ECDSA"

    move-object/from16 v5, p1

    check-cast v5, Ljava/security/PrivateKey;

    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v19, "EC PRIVATE KEY"

    move-object/from16 v5, p1

    check-cast v5, Ljava/security/PrivateKey;

    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v7

    goto/16 :goto_1

    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "DESEDE"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v9, "DES-EDE3-CBC"

    :cond_6
    const-string v5, "AES-"

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v15, 0x10

    :goto_2
    new-array v10, v15, [B

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->provider:Ljava/security/Provider;

    move-object/from16 v8, p3

    invoke-static/range {v5 .. v10}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    const-string v6, "Proc-Type"

    const-string v8, "4,ENCRYPTED"

    invoke-direct {v5, v6, v8}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    const-string v6, "DEK-Info"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->getHexEncoded([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v14, v13}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    goto/16 :goto_0

    :cond_7
    const/16 v15, 0x8

    goto :goto_2
.end method

.method private getHexEncoded([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object p1

    array-length v2, p1

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-byte v2, p1, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public generate()Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->algorithm:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->password:[C

    iget-object v4, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;)Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
