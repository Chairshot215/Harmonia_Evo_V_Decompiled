.class public Lcom/android/org/bouncycastle/asn1/DERBMPString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERBMPString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .locals 3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    if-nez p1, :cond_0

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .locals 3

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    aget-char v4, v1, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x1e

    invoke-virtual {p1, v3, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-object v0
.end method
