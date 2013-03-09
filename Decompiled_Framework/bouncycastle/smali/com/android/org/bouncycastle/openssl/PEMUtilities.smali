.class final Lcom/android/org/bouncycastle/openssl/PEMUtilities;
.super Ljava/lang/Object;
.source "PEMUtilities.java"


# static fields
.field private static final KEYSIZES:Ljava/util/Map;

.field private static final PKCS5_SCHEME_1:Ljava/util/Set;

.field private static final PKCS5_SCHEME_2:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xc0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v3, "CBC"

    const-string v9, "PKCS5Padding"

    const-string v14, "-CFB"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v3, "CFB"

    const-string v9, "NoPadding"

    :cond_0
    const-string v14, "-ECB"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "DES-EDE"

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "DES-EDE3"

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    const-string v3, "ECB"

    const/4 v10, 0x0

    :cond_2
    const-string v14, "-OFB"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v3, "OFB"

    const-string v9, "NoPadding"

    :cond_3
    const-string v14, "DES-EDE"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v2, "DESede"

    const-string v14, "DES-EDE3"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v5, 0x1

    :goto_0
    const/16 v14, 0x18

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1, v5}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v11

    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v4

    if-eqz p0, :cond_11

    const/4 v8, 0x1

    :goto_2
    if-nez v10, :cond_12

    invoke-virtual {v4, v8, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    return-object v14

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const-string v14, "DES-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v2, "DES"

    const/16 v14, 0x8

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    goto :goto_1

    :cond_6
    const-string v14, "BF-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v2, "Blowfish"

    const/16 v14, 0x10

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    goto :goto_1

    :cond_7
    const-string v14, "RC2-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v2, "RC2"

    const/16 v7, 0x80

    const-string v14, "RC2-40-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v7, 0x28

    :cond_8
    :goto_4
    div-int/lit8 v14, v7, 0x8

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    if-nez v10, :cond_a

    new-instance v10, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-direct {v10, v7}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I)V

    goto/16 :goto_1

    :cond_9
    const-string v14, "RC2-64-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v7, 0x40

    goto :goto_4

    :cond_a
    new-instance v10, Ljavax/crypto/spec/RC2ParameterSpec;

    move-object/from16 v0, p5

    invoke-direct {v10, v7, v0}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    goto/16 :goto_1

    :cond_b
    const-string v14, "AES-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    const-string v2, "AES"

    move-object/from16 v12, p5

    array-length v14, v12

    const/16 v15, 0x8

    if-le v14, v15, :cond_c

    const/16 v14, 0x8

    new-array v12, v14, [B

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x8

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-static {v0, v14, v12, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    const-string v14, "AES-128-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v7, 0x80

    :goto_5
    const-string v14, "AES"

    div-int/lit8 v15, v7, 0x8

    move-object/from16 v0, p3

    invoke-static {v0, v14, v15, v12}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    goto/16 :goto_1

    :cond_d
    const-string v14, "AES-192-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v7, 0xc0

    goto :goto_5

    :cond_e
    const-string v14, "AES-256-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/16 v7, 0x100

    goto :goto_5

    :cond_f
    new-instance v14, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    const-string v15, "unknown AES encryption with private key"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_10
    new-instance v14, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    const-string v15, "unknown encryption with private key"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_11
    const/4 v8, 0x2

    goto/16 :goto_2

    :cond_12
    :try_start_1
    invoke-virtual {v4, v8, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v6

    new-instance v14, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    const-string v15, "exception using cipher - please check password and data."

    invoke-direct {v14, v15, v6}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method static generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKeySize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {v2, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private static getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;
    .locals 6

    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->init([B[B)V

    mul-int/lit8 v3, p2, 0x8

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    if-eqz p4, :cond_0

    array-length v3, v0

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    invoke-static {v0, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method static getKeySize(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no key size for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static isPKCS12(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isPKCS5Scheme1(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isPKCS5Scheme2(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
