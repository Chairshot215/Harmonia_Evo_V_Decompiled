.class public Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKPKCS12KeyStore.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;,
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;,
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;,
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final bcProvider:Ljava/security/Provider;


# instance fields
.field private certAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    :goto_0
    return-void

    :cond_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/security/Provider;
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-object v0
.end method

.method private static calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    invoke-virtual {v1, p4}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, p5}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    return-object v5
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 4

    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error creating key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doStore(Ljava/io/OutputStream;[CZ)V
    .locals 61
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v47, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v50

    :goto_0
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/security/PrivateKey;

    new-instance v44, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v44

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v41

    new-instance v39, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v42, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const/16 v18, 0x0

    new-instance v43, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, v58

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_4

    move-object/from16 v21, v58

    check-cast v21, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-eqz v54, :cond_1

    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_3
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v46, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    const/16 v18, 0x1

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    :cond_4
    if-nez v18, :cond_5

    new-instance v46, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v46, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_5
    new-instance v40, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v43

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v40

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    :cond_6
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v47

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v48

    new-instance v49, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v30, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v25, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_c

    :try_start_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v27

    const/16 v22, 0x0

    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    new-instance v36, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_a

    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-eqz v54, :cond_7

    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_8
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_9
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    const/16 v22, 0x1

    goto :goto_3

    :cond_a
    if-nez v22, :cond_b

    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_b
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v35

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    :cond_d
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_13

    :try_start_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    new-instance v36, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_11

    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-eqz v54, :cond_e

    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_f
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    :cond_10
    :goto_5
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    const/16 v22, 0x1

    goto :goto_5

    :cond_11
    if-nez v22, :cond_12

    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_12
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v35

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    :cond_14
    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_17

    :try_start_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14

    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    new-instance v36, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_16

    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    :cond_15
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v35

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_16
    :try_start_3
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    :cond_17
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v9

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v28

    new-instance v24, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v6, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    const/4 v4, 0x2

    new-array v0, v4, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-object/from16 v38, v0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v49

    invoke-direct {v5, v7, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    aput-object v5, v38, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    aput-object v5, v38, v4

    new-instance v19, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V

    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_18

    new-instance v17, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v57

    new-instance v52, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v57

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v52

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    const/16 v4, 0x14

    new-array v11, v4, [B

    const/16 v12, 0x400

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual/range {v52 .. v52}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    :try_start_4
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v14, 0x0

    move-object/from16 v13, p2

    invoke-static/range {v10 .. v15}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v59

    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v33, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v51, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v11, v12}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    new-instance v56, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V

    if-eqz p3, :cond_19

    new-instance v17, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_9
    move-object/from16 v0, v17

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    :cond_18
    new-instance v17, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    goto/16 :goto_8

    :catch_3
    move-exception v35

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_19
    new-instance v17, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_9
.end method


# virtual methods
.method protected cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v10}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v2, v7, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception decrypting data - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 5

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Key;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null alias passed to getCertificate."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 20

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null alias passed to getCertificateChain."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const/4 v7, 0x0

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    :goto_1
    if-eqz v6, :cond_7

    move-object/from16 v16, v6

    check-cast v16, Ljava/security/cert/X509Certificate;

    const/4 v13, 0x0

    sget-object v17, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_3

    :try_start_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-nez v13, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    :try_start_1
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v8

    :cond_5
    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eq v13, v6, :cond_6

    move-object v6, v13

    goto/16 :goto_1

    :catch_0
    move-exception v10

    new-instance v17, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    :goto_3
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    invoke-virtual {v9, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/Certificate;

    aput-object v17, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 54
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0xa

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->read()I

    move-result v38

    const/16 v3, 0x30

    move/from16 v0, v38

    if-eq v0, v3, :cond_3

    new-instance v3, Ljava/io/IOException;

    const-string v6, "stream does not represent a PKCS12 key store"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->reset()V

    new-instance v22, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v45

    check-cast v45, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v23

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v40

    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    const/16 v53, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v16

    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v4

    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v34

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_4

    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v35

    throw v35

    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v35

    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v13, 0x1

    :cond_6
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    new-instance v22, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    new-instance v20, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v26

    const/16 v39, 0x0

    :goto_0
    move-object/from16 v0, v26

    array-length v3, v0

    move/from16 v0, v39

    if-eq v0, v3, :cond_22

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v32, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v51

    check-cast v51, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/16 v41, 0x0

    :goto_1
    invoke-virtual/range {v51 .. v51}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    new-instance v21, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v36, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    move-object/from16 v24, v49

    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    const/16 v17, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    :cond_7
    :goto_2
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/16 v18, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERObject;

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    if-eqz v37, :cond_8

    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_9
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v42, v18

    check-cast v42, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_2

    :cond_b
    if-eqz v42, :cond_d

    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    const/16 v53, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v6, "unmarked"

    move-object/from16 v0, v49

    invoke-virtual {v3, v6, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_e
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    new-instance v31, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    const/4 v10, 0x0

    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v14

    move-object/from16 v9, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v51

    check-cast v51, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/16 v41, 0x0

    :goto_4
    invoke-virtual/range {v51 .. v51}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    new-instance v21, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v41, v41, 0x1

    goto :goto_4

    :cond_11
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v36, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    move-object/from16 v24, v49

    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    const/16 v17, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    :cond_12
    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/16 v18, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_14

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERObject;

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    if-eqz v37, :cond_13

    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_14
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v42, v18

    check-cast v42, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_6

    :cond_16
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    if-nez v17, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_18
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    new-instance v48, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static/range {v48 .. v48}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v49

    move-object/from16 v24, v49

    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    const/16 v17, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    :cond_19
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/16 v18, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_1b

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERObject;

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    if-eqz v37, :cond_1a

    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_1b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_1c
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v42, v18

    check-cast v42, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_7

    :cond_1d
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    if-nez v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in encryptedData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_20
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_21
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    :cond_22
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    const/16 v39, 0x0

    :goto_8
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v39

    if-eq v0, v3, :cond_0

    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    new-instance v28, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported certificate type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_23
    :try_start_2
    new-instance v27, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v29

    const/16 v42, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    :cond_24
    :goto_9
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v47

    check-cast v47, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERObject;

    const/16 v24, 0x0

    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_26

    move-object/from16 v24, v29

    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v0, v24

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    if-eqz v37, :cond_25

    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2
    move-exception v35

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_25
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_26
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    :cond_27
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move-object/from16 v42, v18

    check-cast v42, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    move-object/from16 v0, v29

    invoke-virtual {v3, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v53, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v7, "unmarked"

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v3, v0, v6}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    :goto_a
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_8

    :cond_2a
    if-eqz v42, :cond_2b

    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    if-eqz v17, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    instance-of v1, p2, Ljava/security/PrivateKey;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_1

    if-nez p4, :cond_1

    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "no certificate chain for private key"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, p1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 5

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    return v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'param\' arg cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for \'param\' of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    return-void

    :cond_2
    instance-of v3, v2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for protection parameter of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v10}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    move-object v10, v0

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v10, 0x4

    invoke-virtual {v2, v10, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v10, ""

    const/4 v11, 0x2

    invoke-virtual {v2, p2, v10, v11}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v7

    check-cast v7, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v4

    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception unwrapping private key - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v2

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception encrypting data - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
