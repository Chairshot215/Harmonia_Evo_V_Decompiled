.class public Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "SignedData.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private version:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERObject;

    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :pswitch_1
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
    .locals 3

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getContentInfo()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithms()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getSignerInfos()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
