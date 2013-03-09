.class public Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERObjectIdentifier.java"


# instance fields
.field identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([B)V
    .locals 12

    const/16 v11, 0x2e

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    array-length v7, p1

    if-eq v3, v7, :cond_4

    aget-byte v7, p1, v3

    and-int/lit16 v0, v7, 0xff

    const-wide/high16 v7, 0x80

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    const-wide/16 v7, 0x80

    mul-long/2addr v7, v5

    and-int/lit8 v9, v0, 0x7f

    int-to-long v9, v9

    add-long v5, v7, v9

    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_1

    if-eqz v2, :cond_0

    long-to-int v7, v5

    div-int/lit8 v7, v7, 0x28

    packed-switch v7, :pswitch_data_0

    const/16 v7, 0x32

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0x50

    sub-long/2addr v5, v7

    :goto_1
    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-wide/16 v5, 0x0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x31

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0x28

    sub-long/2addr v5, v7

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    :cond_3
    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    and-int/lit8 v7, v0, 0x7f

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_1

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    if-nez p1, :cond_0

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

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

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 9

    const/16 v8, 0x30

    const/16 v7, 0x2e

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v8, :cond_3

    const/16 v5, 0x32

    if-le v1, v5, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_1
    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v8, v0, :cond_5

    const/16 v5, 0x39

    if-gt v0, v5, :cond_5

    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    if-ne v0, v7, :cond_7

    if-nez v3, :cond_6

    move v3, v4

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_0
.end method

.method private writeField(Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x9

    new-array v1, v2, [B

    const/16 v0, 0x8

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x7

    shr-long/2addr p2, v2

    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private writeField(Ljava/io/OutputStream;Ljava/math/BigInteger;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    div-int/lit8 v0, v4, 0x7

    if-nez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    move-object v3, p2

    new-array v2, v0, [B

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x28

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-direct {p0, v0, v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;J)V

    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x12

    if-ge v5, v6, :cond_0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;J)V

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
