.class public Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERApplicationSpecific.java"


# instance fields
.field private final isConstructed:Z

.field private final octets:[B

.field private final tag:I


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p2, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-interface {p3}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v0

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getLengthOfLength([B)I

    move-result v1

    array-length v3, v0

    sub-int/2addr v3, v1

    new-array v2, v3, [B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    goto :goto_0
.end method

.method constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    return-void
.end method

.method private getLengthOfLength([B)I
    .locals 2

    const/4 v0, 0x2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private replaceTagNumber(I[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    aget-byte v5, p2, v7

    and-int/lit8 v3, v5, 0x1f

    const/4 v1, 0x1

    const/16 v5, 0x1f

    if-ne v3, v5, :cond_2

    const/4 v3, 0x0

    add-int/lit8 v2, v1, 0x1

    aget-byte v5, p2, v1

    and-int/lit16 v0, v5, 0xff

    and-int/lit8 v5, v0, 0x7f

    if-nez v5, :cond_0

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    const-string v6, "corrupted stream - invalid high tag number found"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1

    and-int/lit8 v5, v0, 0x7f

    or-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x7

    add-int/lit8 v1, v2, 0x1

    aget-byte v5, p2, v2

    and-int/lit16 v0, v5, 0xff

    move v2, v1

    goto :goto_0

    :cond_1
    and-int/lit8 v5, v0, 0x7f

    or-int/2addr v3, v5

    move v1, v2

    :cond_2
    array-length v5, p2

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    const/4 v5, 0x1

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {p2, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v5, p1

    aput-byte v5, v4, v7

    return-object v4
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    iget-boolean v3, v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iget v3, v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    iget-object v3, v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    return-void
.end method

.method public getApplicationTag()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    return v0
.end method

.method public getContents()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    return-object v0
.end method

.method public getObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v2, 0x1f

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "unsupported tag number"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->replaceTagNumber(I[B)[B

    move-result-object v1

    aget-byte v2, v0, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    return v0
.end method
