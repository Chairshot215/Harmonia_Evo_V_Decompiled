.class public Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "DistributionPointName.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final FULL_NAME:I = 0x0

.field public static final NAME_RELATIVE_TO_CRL_ISSUER:I = 0x1


# instance fields
.field name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

.field type:I


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V

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
.method public getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPointName: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v2, :cond_0

    const-string v2, "fullName"

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v2, "nameRelativeToCRLIssuer"

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
