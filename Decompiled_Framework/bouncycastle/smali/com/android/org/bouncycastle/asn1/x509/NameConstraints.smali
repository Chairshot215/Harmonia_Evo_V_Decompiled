.class public Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "NameConstraints.java"


# instance fields
.field private excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createSequence(Ljava/util/Vector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createSequence(Ljava/util/Vector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    :cond_1
    return-void
.end method

.method private createSequence(Ljava/util/Vector;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    .locals 3

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method


# virtual methods
.method public getExcludedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getPermittedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
