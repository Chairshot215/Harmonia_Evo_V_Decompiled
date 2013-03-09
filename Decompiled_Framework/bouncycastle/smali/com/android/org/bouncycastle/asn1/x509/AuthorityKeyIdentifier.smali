.class public Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    :pswitch_2
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v3, p3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 3

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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
.method public getAuthorityCertIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyIdentifier()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
