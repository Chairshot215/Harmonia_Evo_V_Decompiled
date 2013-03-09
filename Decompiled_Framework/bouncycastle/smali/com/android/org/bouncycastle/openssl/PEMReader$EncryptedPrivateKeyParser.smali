.class Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedPrivateKeyParser"
.end annotation


# instance fields
.field private asymProvider:Ljava/lang/String;

.field private symProvider:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v20

    if-nez v20, :cond_0

    new-instance v20, Lcom/android/org/bouncycastle/openssl/PEMException;

    const-string v21, "no PasswordFinder specified"

    invoke-direct/range {v20 .. v21}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v7

    throw v7

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->isPKCS5Scheme2(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v8

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v18

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v17

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1, v10}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v5, v0, v11, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v14

    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    :goto_0
    return-object v20

    :cond_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->isPKCS12(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v15

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v19

    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v14

    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->isPKCS5Scheme1(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;

    move-result-object v15

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v19

    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->getSalt()[B

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v14

    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    goto/16 :goto_0

    :cond_3
    new-instance v20, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown algorithm: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v7

    new-instance v20, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "problem parsing ENCRYPTED PRIVATE KEY: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v20
.end method
