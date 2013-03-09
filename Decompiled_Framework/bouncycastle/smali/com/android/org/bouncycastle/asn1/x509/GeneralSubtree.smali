.class public Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "GeneralSubtree.java"


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

.field private maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad sequence size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad tag number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad tag number for \'minimum\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-eq v3, v5, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad tag number for \'maximum\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    if-eqz p3, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getMaximum()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinimum()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
