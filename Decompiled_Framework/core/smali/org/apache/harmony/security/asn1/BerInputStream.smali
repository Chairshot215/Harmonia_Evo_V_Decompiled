.class public Lorg/apache/harmony/security/asn1/BerInputStream;
.super Ljava/lang/Object;
.source "BerInputStream.java"


# static fields
.field private static final BUF_INCREASE_SIZE:I = 0x4000

.field protected static final INDEFINIT_LENGTH:I = -0x1


# instance fields
.field protected buffer:[B

.field public choiceIndex:I

.field public content:Ljava/lang/Object;

.field protected contentOffset:I

.field private final in:Ljava/io/InputStream;

.field protected isIndefinedLength:Z

.field protected isVerify:Z

.field protected length:I

.field protected offset:I

.field public oidElement:I

.field private pool:[[Ljava/lang/Object;

.field public tag:I

.field protected tagOffset:I

.field public times:[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    new-array v1, p2, [B

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v1, v2

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isIndefinedLength:Z

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Decoding indefinite length encoding is not supported"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iput p2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Wrong content length"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v5

    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-boolean v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v5, :cond_0

    :goto_0
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-le v1, v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-le v1, v5, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    iput-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    :cond_2
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v5, v1, :cond_3

    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong encoding at ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]. Content\'s length and encoded length are not the same"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    return-void
.end method

.method private expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " identifier expected at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLength([B)I
    .locals 5

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    const/4 v2, 0x0

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_0

    and-int/lit8 v2, v1, 0x7f

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_0

    shl-int/lit8 v3, v1, 0x8

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    return v3
.end method

.method private strToInt(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    const/4 v3, 0x0

    move v2, p1

    add-int v1, p1, p2

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    aget-byte v4, v4, v2

    add-int/lit8 v0, v4, -0x30

    if-ltz v0, :cond_0

    const/16 v4, 0x9

    if-le v0, v4, :cond_1

    :cond_0
    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v5, "Time encoding has invalid char"

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method public compactBuffer()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final getBuffer()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final getEndOffset()I
    .locals 2

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    return v0
.end method

.method public final getTagOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    return v0
.end method

.method public next()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v4, 0x80

    if-eq v3, v4, :cond_2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit8 v2, v3, 0x7f

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too long encoding at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v0

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const v4, 0xffffff

    if-le v3, v4, :cond_3

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too long encoding at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    :cond_3
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    return v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v2, :cond_0

    const/16 v2, 0xa

    filled-new-array {v4, v2}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v3, v1, v5

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aget-object v3, v1, v6

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aput-object p1, v2, v0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    goto :goto_1
.end method

.method protected read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Unexpected end of encoding"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Unexpected end of encoding"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method public readBitString()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 Bitstring: wrong length. Tag at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 Bitstring: wrong content at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. A number of unused bits MUST be in range 0 to 7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 Bitstring: wrong content at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. For empty string unused bits MUST be 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 bitstring  type is not provided"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "bitstring"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    :cond_4
    return-void
.end method

.method public readBoolean()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-eq v0, v1, :cond_0

    const-string v0, "boolean"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong length for ASN.1 boolean at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    return-void
.end method

.method public readContent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "Unexpected end of encoding"

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v2, :cond_5

    move v1, v0

    :cond_2
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v0, v2, :cond_4

    :cond_3
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "Failed to read encoded content"

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v5, v0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ne v0, v2, :cond_2

    :cond_5
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    goto :goto_0
.end method

.method public readEnumerated()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const-string v1, "enumerated"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v1

    throw v1

    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 enumerated: wrong length for identifier at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_2

    add-int/lit16 v0, v0, 0x100

    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_4

    :cond_3
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 enumerated: wrong content at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. An integer MUST be encoded in minimum number of octets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method public readGeneralizedTime()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x6

    const/4 v4, 0x2

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "ASN.1 GeneralizedTime: encoded format is not implemented"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-lt v1, v8, :cond_1

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    :cond_1
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 GeneralizedTime wrongly encoded at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v7, :cond_3

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xe

    aget-byte v0, v1, v2

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 GeneralizedTime wrongly encoded at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v1, :cond_4

    const/4 v1, 0x7

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v3, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x3

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0x8

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v6

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x5

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0xc

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v7, :cond_5

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xf

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v3, v3, -0x10

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v5

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ne v1, v8, :cond_6

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0x64

    aput v2, v1, v5

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0xa

    aput v2, v1, v5

    goto :goto_0

    :cond_7
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x38

    if-ne v1, v2, :cond_8

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Decoding constructed ASN.1 GeneralizedTime type is not supported"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v1, "GeneralizedTime"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v1

    throw v1
.end method

.method public readInteger()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "integer"

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v2

    throw v2

    :cond_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v2, v4, :cond_1

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong length for ASN.1 integer at ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v2, v4, :cond_4

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    aget-byte v0, v2, v3

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    int-to-byte v1, v2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    const/16 v2, -0x80

    if-ne v1, v2, :cond_4

    :cond_3
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong content for ASN.1 integer at ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. An integer MUST be encoded in minimum number of octets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    return-void
.end method

.method public readOID()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const-string v1, "OID"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v1

    throw v1

    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v1, v3, :cond_1

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong length for ASN.1 object identifier at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong encoding at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v0, v1, :cond_4

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public readOctetString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 octet string type is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "octetstring"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0
.end method

.method public readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    const-string v6, "sequence"

    invoke-direct {p0, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v6

    throw v6

    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v6

    iget-object v4, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    iget-boolean v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v6, :cond_6

    :goto_0
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_5

    array-length v6, v4

    if-ge v2, v6, :cond_5

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    :goto_1
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_1

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_2

    :cond_1
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    :cond_5
    array-length v6, v4

    if-ge v2, v6, :cond_f

    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_4

    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    array-length v6, v4

    new-array v5, v6, [Ljava/lang/Object;

    :goto_2
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_d

    array-length v6, v4

    if-ge v2, v6, :cond_d

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    :goto_3
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_7

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_8

    :cond_7
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_9

    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_c

    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    :cond_c
    add-int/lit8 v2, v2, 0x1

    :cond_d
    array-length v6, v4

    if-ge v2, v6, :cond_e

    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_b

    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_e
    iput-object v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    :cond_f
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v6, v1, :cond_10

    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong encoding at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]. Content\'s length and encoded length are not the same"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_10
    return-void
.end method

.method public readSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    const-string v0, "sequenceOf"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    return-void
.end method

.method public readSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    const-string v0, "set"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding ASN.1 Set type is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    const-string v0, "setOf"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    return-void
.end method

.method public readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 string type is not provided"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "string"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0
.end method

.method public readUTCTime()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 UTCTime: wrong length, identifier at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "ASN.1 UTCTime: local time format is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 UTCTime wrongly encoded at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v0, :cond_1

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v0, v0, v2

    const/16 v1, 0x31

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x76c

    aput v1, v0, v2

    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x4

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x5

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x7d0

    aput v1, v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_5

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 UTCTime type is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "UTCTime"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    return-void
.end method

.method public final setVerify()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    return-void
.end method
