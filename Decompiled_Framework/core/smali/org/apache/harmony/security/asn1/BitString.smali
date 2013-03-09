.class public final Lorg/apache/harmony/security/asn1/BitString;
.super Ljava/lang/Object;
.source "BitString.java"


# static fields
.field private static final RESET_MASK:[B

.field private static final SET_MASK:[B


# instance fields
.field public final bytes:[B

.field public final unusedBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/harmony/security/asn1/BitString;->RESET_MASK:[B

    return-void

    nop

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

    :array_1
    .array-data 0x1
        0x7ft
        0xbft
        0xdft
        0xeft
        0xf7t
        0xfbt
        0xfdt
        0xfet
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    const/4 v0, 0x7

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of unused bits MUST be in range 0-7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "For empty bit string unused bits MUST be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    iput p2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    array-length v2, p1

    div-int/lit8 v1, v2, 0x8

    iget v2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-boolean v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/harmony/security/asn1/BitString;->setBit(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBit(I)Z
    .locals 4

    rem-int/lit8 v1, p1, 0x8

    div-int/lit8 v0, p1, 0x8

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-byte v2, v2, v0

    sget-object v3, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    aget-byte v3, v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBit(IZ)V
    .locals 5

    rem-int/lit8 v1, p1, 0x8

    div-int/lit8 v0, p1, 0x8

    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-byte v3, v2, v0

    sget-object v4, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    aget-byte v4, v4, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-byte v3, v2, v0

    sget-object v4, Lorg/apache/harmony/security/asn1/BitString;->RESET_MASK:[B

    aget-byte v4, v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_0
.end method

.method public toBooleanArray()[Z
    .locals 4

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    sub-int/2addr v2, v3

    new-array v1, v2, [Z

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/BitString;->getBit(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
