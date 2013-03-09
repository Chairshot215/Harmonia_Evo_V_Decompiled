.class public Lcom/android/org/bouncycastle/asn1/x509/Holder;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "Holder.java"


# instance fields
.field baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

.field entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

.field private version:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput v5, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag in Holder"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_1

    :pswitch_2
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_1

    :cond_1
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    :goto_0
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    return-void

    :pswitch_1
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Holder;
    .locals 3

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

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
.method public getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    if-ne v1, v3, :cond_3

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    :goto_0
    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
