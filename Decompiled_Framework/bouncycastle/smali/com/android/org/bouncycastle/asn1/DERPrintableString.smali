.class public Lcom/android/org/bouncycastle/asn1/DERPrintableString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERPrintableString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERString;


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    array-length v2, p1

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    .locals 3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    if-nez p1, :cond_0

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

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

.method public static isPrintableString(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    :goto_1
    return v2

    :cond_0
    const/16 v3, 0x61

    if-gt v3, v0, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    :cond_1
    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x41

    if-gt v3, v0, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_1

    :cond_3
    const/16 v3, 0x30

    if-gt v3, v0, :cond_4

    const/16 v3, 0x39

    if-le v0, v3, :cond_1

    :cond_4
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .locals 3

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public getOctets()[B
    .locals 4

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    new-array v0, v3, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    return-object v0
.end method
