.class public Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
.super Lorg/apache/harmony/security/asn1/ASN1BitString;
.source "ASN1BitString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1BitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASN1NamedBitList"
.end annotation


# static fields
.field private static final INDEFINITE_SIZE:I = -0x1

.field private static final SET_MASK:[B

.field private static final emptyString:Lorg/apache/harmony/security/asn1/BitString;


# instance fields
.field private final maxBits:I

.field private final minBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    new-instance v0, Lorg/apache/harmony/security/asn1/BitString;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    return-void

    :array_0
    .array-data 0x1
        0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    iput p1, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, -0x1

    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v6, v8, v11

    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x8

    sub-int v0, v8, v6

    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    if-ne v8, v12, :cond_3

    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    if-ne v8, v12, :cond_1

    new-array v7, v0, [Z

    :goto_0
    if-nez v0, :cond_5

    :cond_0
    return-object v7

    :cond_1
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    if-le v0, v8, :cond_2

    new-array v7, v0, [Z

    goto :goto_0

    :cond_2
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    new-array v7, v8, [Z

    goto :goto_0

    :cond_3
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    if-le v0, v8, :cond_4

    new-instance v8, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v9, "ASN.1 Named Bitstring: size constraints"

    invoke-direct {v8, v9}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    new-array v7, v8, [Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v11, v1

    aget-byte v4, v8, v11

    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v5, v8, -0x1

    :goto_1
    if-ge v1, v5, :cond_8

    const/4 v3, 0x0

    :goto_2
    const/16 v8, 0x8

    if-ge v3, v8, :cond_7

    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v3

    and-int/2addr v8, v4

    if-eqz v8, :cond_6

    move v8, v9

    :goto_3
    aput-boolean v8, v7, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v8, v10

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v11, v1

    aget-byte v4, v8, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_4
    rsub-int/lit8 v8, v6, 0x8

    if-ge v3, v8, :cond_0

    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v3

    and-int/2addr v8, v4

    if-eqz v8, :cond_9

    move v8, v9

    :goto_5
    aput-boolean v8, v7, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move v8, v10

    goto :goto_5
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 9

    const/4 v8, -0x1

    iget-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v7, [Z

    move-object v5, v7

    check-cast v5, [Z

    array-length v7, v5

    add-int/lit8 v2, v7, -0x1

    :goto_0
    if-le v2, v8, :cond_0

    aget-boolean v7, v5, v2

    if-nez v7, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    sget-object v7, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    iput-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    :goto_1
    return-void

    :cond_1
    rem-int/lit8 v7, v2, 0x8

    rsub-int/lit8 v6, v7, 0x7

    div-int/lit8 v7, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [B

    const/4 v3, 0x0

    array-length v7, v0

    add-int/lit8 v2, v7, -0x1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    const/4 v4, 0x0

    :goto_3
    const/16 v7, 0x8

    if-ge v4, v7, :cond_3

    aget-boolean v7, v5, v3

    if-eqz v7, :cond_2

    aget-byte v7, v0, v1

    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_4
    rsub-int/lit8 v7, v6, 0x8

    if-ge v4, v7, :cond_6

    aget-boolean v7, v5, v3

    if-eqz v7, :cond_5

    aget-byte v7, v0, v2

    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    new-instance v7, Lorg/apache/harmony/security/asn1/BitString;

    invoke-direct {v7, v0, v6}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    iput-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    array-length v7, v0

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    goto :goto_1
.end method
