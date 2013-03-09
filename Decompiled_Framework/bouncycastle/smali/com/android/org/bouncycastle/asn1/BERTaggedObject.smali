.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    instance-of v3, p1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v3, :cond_7

    :cond_0
    const/16 v3, 0xa0

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {p1, v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeTag(II)V

    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not implemented: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    :goto_1
    return-void

    :cond_7
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_1
.end method
