.class public Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private keyidentifier:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-void
.end method

.method public static createSHA1KeyIdentifier(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-object v0
.end method

.method public static createTruncatedSHA1KeyIdentifier(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    const/16 v2, 0x8

    new-array v1, v2, [B

    array-length v2, v0

    add-int/lit8 v2, v2, -0x8

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aget-byte v2, v1, v4

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    return-object v2
.end method

.method private static getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v2
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 3

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SubjectKeyIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
