.class Lcom/android/org/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;
.super Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ECDSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;->readKeyPair(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    new-instance v3, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-direct {v3, v8}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    invoke-direct {v4, v0, v9}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v9

    invoke-direct {v6, v0, v9}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v9, "ECDSA"

    iget-object v10, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v9, Ljava/security/KeyPair;

    invoke-virtual {v2, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v9

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v1

    new-instance v9, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "problem creating EC private key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9
.end method
