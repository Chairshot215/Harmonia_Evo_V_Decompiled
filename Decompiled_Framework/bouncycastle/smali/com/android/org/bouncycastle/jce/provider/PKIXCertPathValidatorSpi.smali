.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# static fields
.field private static final PUBLIC_KEY_SHA1_BLACKLIST:[[B

.field private static final SERIAL_BLACKLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x14

    const/16 v6, 0x10

    const/4 v5, 0x1

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    new-array v3, v6, [B

    fill-array-data v3, :array_0

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/math/BigInteger;

    new-array v3, v6, [B

    fill-array-data v3, :array_1

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    new-array v3, v6, [B

    fill-array-data v3, :array_2

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v2, v1, v9

    const/4 v2, 0x3

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_3

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_4

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_5

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_6

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_7

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_8

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_9

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SERIAL_BLACKLIST:Ljava/util/Set;

    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v7, [B

    fill-array-data v1, :array_a

    aput-object v1, v0, v8

    new-array v1, v7, [B

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v7, [B

    fill-array-data v1, :array_c

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v2, v7, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->PUBLIC_KEY_SHA1_BLACKLIST:[[B

    return-void

    :array_0
    .array-data 0x1
        0x7t
        0x7at
        0x59t
        0xbct
        0xd5t
        0x34t
        0x59t
        0x60t
        0x1ct
        0xa6t
        0x90t
        0x72t
        0x67t
        0xa6t
        0xddt
        0x1ct
    .end array-data

    :array_1
    .array-data 0x1
        0x4t
        0x7et
        0xcbt
        0xe9t
        0xfct
        0xa5t
        0x5ft
        0x7bt
        0xd0t
        0x9et
        0xaet
        0x36t
        0xe1t
        0xct
        0xaet
        0x1et
    .end array-data

    :array_2
    .array-data 0x1
        0xd8t
        0xf3t
        0x5ft
        0x4et
        0xb7t
        0x87t
        0x2bt
        0x2dt
        0xabt
        0x6t
        0x92t
        0xe3t
        0x15t
        0x38t
        0x2ft
        0xb0t
    .end array-data

    :array_3
    .array-data 0x1
        0xb0t
        0xb7t
        0x13t
        0x3et
        0xd0t
        0x96t
        0xf9t
        0xb5t
        0x6ft
        0xaet
        0x91t
        0xc8t
        0x74t
        0xbdt
        0x3at
        0xc0t
    .end array-data

    :array_4
    .array-data 0x1
        0x92t
        0x39t
        0xd5t
        0x34t
        0x8ft
        0x40t
        0xd1t
        0x69t
        0x5at
        0x74t
        0x54t
        0x70t
        0xe1t
        0xf2t
        0x3ft
        0x43t
    .end array-data

    :array_5
    .array-data 0x1
        0xe9t
        0x2t
        0x8bt
        0x95t
        0x78t
        0xe4t
        0x15t
        0xdct
        0x1at
        0x71t
        0xat
        0x2bt
        0x88t
        0x15t
        0x44t
        0x47t
    .end array-data

    :array_6
    .array-data 0x1
        0xd7t
        0x55t
        0x8ft
        0xdat
        0xf5t
        0xf1t
        0x10t
        0x5bt
        0xb2t
        0x13t
        0x28t
        0x2bt
        0x70t
        0x77t
        0x29t
        0xa3t
    .end array-data

    :array_7
    .array-data 0x1
        0xf5t
        0xc8t
        0x6at
        0xf3t
        0x61t
        0x62t
        0xf1t
        0x3at
        0x64t
        0xf5t
        0x4ft
        0x6dt
        0xc9t
        0x58t
        0x7ct
        0x6t
    .end array-data

    :array_8
    .array-data 0x1
        0x39t
        0x2at
        0x43t
        0x4ft
        0xet
        0x7t
        0xdft
        0x1ft
        0x8at
        0xa3t
        0x5t
        0xdet
        0x34t
        0xe0t
        0xc2t
        0x29t
    .end array-data

    :array_9
    .array-data 0x1
        0x3et
        0x75t
        0xcet
        0xd4t
        0x6bt
        0x69t
        0x30t
        0x21t
        0x21t
        0x88t
        0x30t
        0xaet
        0x86t
        0xa8t
        0x2at
        0x71t
    .end array-data

    :array_a
    .array-data 0x1
        0x41t
        0xft
        0x36t
        0x36t
        0x32t
        0x58t
        0xf3t
        0xbt
        0x34t
        0x7dt
        0x12t
        0xcet
        0x48t
        0x63t
        0xe4t
        0x33t
        0x43t
        0x78t
        0x6t
        0xa8t
    .end array-data

    :array_b
    .array-data 0x1
        0xbat
        0x3et
        0x7bt
        0xd3t
        0x8ct
        0xd7t
        0xe1t
        0xe6t
        0xb9t
        0xcdt
        0x4ct
        0x21t
        0x99t
        0x62t
        0xe5t
        0x9dt
        0x7at
        0x2ft
        0x4et
        0x37t
    .end array-data

    :array_c
    .array-data 0x1
        0xe2t
        0x3bt
        0x8dt
        0x10t
        0x5ft
        0x87t
        0x71t
        0xat
        0x68t
        0xd9t
        0x24t
        0x80t
        0x50t
        0xebt
        0xeft
        0xc6t
        0x27t
        0xbet
        0x4ct
        0xa6t
    .end array-data

    :array_d
    .array-data 0x1
        0x7bt
        0x2et
        0x16t
        0xbct
        0x39t
        0xbct
        0xd7t
        0x2bt
        0x45t
        0x6et
        0x9ft
        0x5t
        0x5dt
        0x1dt
        0xe6t
        0x15t
        0xb7t
        0x49t
        0x45t
        0xdbt
    .end array-data

    :array_e
    .array-data 0x1
        0xe8t
        0xf9t
        0x12t
        0x0t
        0xc6t
        0x5ct
        0xeet
        0x16t
        0xe0t
        0x39t
        0xb9t
        0xf8t
        0x83t
        0x84t
        0x16t
        0x61t
        0x63t
        0x5ft
        0x81t
        0xc5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method

.method private static isPublicKeyBlackListed(Ljava/security/PublicKey;)Z
    .locals 9

    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    array-length v8, v2

    invoke-interface {v1, v2, v7, v8}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v5, v8, [B

    invoke-interface {v1, v5, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->PUBLIC_KEY_SHA1_BLACKLIST:[[B

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    :cond_0
    return v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/security/cert/PKIXParameters;

    if-nez v4, :cond_0

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parameters must be a "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " instance."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v4, :cond_1

    move-object/from16 v21, p2

    check-cast v21, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    :goto_0
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    check-cast p2, Ljava/security/cert/PKIXParameters;

    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v21

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v40

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Certification path is empty."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/X509Certificate;

    if-eqz v27, :cond_4

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v44

    if-eqz v44, :cond_4

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SERIAL_BLACKLIST:Ljava/util/Set;

    move-object/from16 v0, v44

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate revocation of serial 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v22

    :try_start_0
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v45

    if-nez v45, :cond_5

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Trust anchor for certification path not found."

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :catch_0
    move-exception v32

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_5
    const/4 v9, 0x0

    add-int/lit8 v4, v40, 0x1

    new-array v0, v4, [Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v37, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v37

    if-ge v0, v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v18, v37

    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    :cond_6
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-string v4, "2.5.29.32.0"

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v9, "2.5.29.32.0"

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v41, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct/range {v41 .. v41}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v34, 0x0

    :goto_2
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isAnyPolicyInhibited()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v19, 0x0

    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isPolicyMappingInhibited()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v43, 0x0

    :goto_4
    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v13

    if-eqz v13, :cond_a

    :try_start_1
    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    :goto_5
    const/16 v46, 0x0

    :try_start_2
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v47

    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v48

    move/from16 v38, v40

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v4}, Lcom/android/org/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Target certificate in certification path does not match targetConstraints."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_7
    add-int/lit8 v34, v40, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v19, v40, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v43, v40, 0x1

    goto :goto_4

    :cond_a
    :try_start_3
    new-instance v12, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    goto :goto_5

    :catch_1
    move-exception v33

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Subject of trust anchor could not be (re)encoded."

    const/4 v7, -0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :catch_2
    move-exception v32

    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_b
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_6

    :cond_c
    const/16 v27, 0x0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    :goto_7
    if-ltz v9, :cond_12

    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate revocation of public key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_d
    sub-int v35, v40, v9

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/X509Certificate;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v9, v4, :cond_e

    const/4 v11, 0x1

    :goto_8
    move-object/from16 v7, p1

    move-object/from16 v8, v21

    invoke-static/range {v7 .. v13}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    move-object/from16 v14, p1

    move v15, v9

    move-object/from16 v17, v3

    invoke-static/range {v14 .. v19}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v9, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_10

    if-eqz v27, :cond_f

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Version 1 certificates can\'t be used as CA ones."

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_e
    const/4 v11, 0x0

    goto :goto_8

    :cond_f
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v43

    invoke-static {v0, v9, v1, v3, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v34

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v43

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v34

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v43

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v19

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v38

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v38

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v30

    if-eqz v30, :cond_11

    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v30, v31

    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v42

    invoke-static {v0, v9, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    move-object/from16 v13, v27

    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v47

    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v48

    :cond_10
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_7

    :cond_11
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    goto :goto_9

    :catch_3
    move-exception v32

    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Next working key could not be retrieved."

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_12
    move/from16 v0, v34

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v34

    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v34

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v30

    if-eqz v30, :cond_14

    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v30, v31

    :goto_a
    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v30

    invoke-static {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    add-int/lit8 v23, v9, 0x1

    move-object/from16 v20, p1

    move-object/from16 v24, v18

    move-object/from16 v25, v3

    move-object/from16 v26, v16

    invoke-static/range {v20 .. v26}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v36

    if-gtz v34, :cond_13

    if-eqz v36, :cond_15

    :cond_13
    new-instance v4, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-direct {v4, v0, v1, v5}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v4

    :cond_14
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    goto :goto_a

    :cond_15
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Path processing failed on policy."

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method
