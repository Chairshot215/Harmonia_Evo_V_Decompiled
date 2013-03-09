.class public Lorg/apache/harmony/security/utils/JarUtils;
.super Ljava/lang/Object;
.source "JarUtils.java"


# static fields
.field private static final MESSAGE_DIGEST_OID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    check-cast v4, [Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, p1}, Lorg/apache/harmony/security/utils/JarUtils;->findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    new-array v4, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    check-cast v4, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    goto :goto_1
.end method

.method private static findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v27, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v25

    if-nez v25, :cond_0

    new-instance v27, Ljava/io/IOException;

    const-string v28, "No SignedData found"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_0
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_1

    const/16 v27, 0x0

    :goto_0
    return-object v27

    :cond_1
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v6, v0, [Ljava/security/cert/X509Certificate;

    const/4 v14, 0x0

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/harmony/security/x509/Certificate;

    add-int/lit8 v15, v14, 0x1

    new-instance v27, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    aput-object v27, v6, v14

    move v14, v15

    goto :goto_1

    :cond_2
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_4

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v26

    const/16 v19, 0x0

    const/4 v14, 0x0

    :goto_2
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_3

    aget-object v27, v6, v14

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    aget-object v27, v6, v14

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    move/from16 v19, v14

    :cond_3
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v14, v0, :cond_6

    const/16 v27, 0x0

    goto :goto_0

    :cond_4
    const/16 v27, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    aget-object v27, v6, v19

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v27

    if-eqz v27, :cond_7

    new-instance v27, Ljava/lang/SecurityException;

    const-string v28, "Can not recognize a critical extension"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_7
    const/16 v22, 0x0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "with"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v22

    :cond_8
    :goto_3
    if-nez v22, :cond_a

    move-object v3, v8

    if-nez v3, :cond_9

    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    :cond_a
    aget-object v27, v6, v19

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getAuthenticatedAttributes()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    if-nez v4, :cond_c

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    :cond_b
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v27

    if-nez v27, :cond_f

    new-instance v27, Ljava/lang/SecurityException;

    const-string v28, "Incorrect signature"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    :catch_0
    move-exception v10

    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncodedAuthenticatedAttributes()[B

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    const/4 v13, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_d
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v27

    sget-object v28, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    invoke-static/range {v27 .. v28}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v27

    if-eqz v27, :cond_d

    goto :goto_4

    :cond_e
    if-eqz v13, :cond_b

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v20

    invoke-virtual/range {v20 .. v21}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-static {v13, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v27

    if-nez v27, :cond_b

    new-instance v27, Ljava/lang/SecurityException;

    const-string v28, "Incorrect MD"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_f
    aget-object v27, v6, v19

    move-object/from16 v0, v27

    invoke-static {v0, v6}, Lorg/apache/harmony/security/utils/JarUtils;->createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v27

    goto/16 :goto_0

    :catch_1
    move-exception v27

    goto/16 :goto_3
.end method
