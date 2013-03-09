.class public Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "NetscapeCertRequest.java"


# instance fields
.field challenge:Ljava/lang/String;

.field content:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field pubkey:Ljava/security/PublicKey;

.field sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field sigBits:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7

    const/4 v6, 0x2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid SPKAC (size):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_1
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v4, v6, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid PKAC (len): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v4, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/org/bouncycastle/asn1/DERBitString;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getReq([B)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private getKeySpec()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getReq([B)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSigningAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    return-void
.end method

.method public setKeyAlgorithm(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-void
.end method

.method public setSigningAlgorithm(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public sign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {v2, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    :goto_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :try_start_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    return-void

    :cond_0
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 4

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    goto :goto_0
.end method
