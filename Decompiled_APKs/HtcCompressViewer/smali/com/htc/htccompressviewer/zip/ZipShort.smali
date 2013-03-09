.class public final Lcom/htc/htccompressviewer/zip/ZipShort;
.super Ljava/lang/Object;
.source "ZipShort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8

.field private static final BYTE_MASK:I = 0xff


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/htc/htccompressviewer/zip/ZipShort;->value:I

    .line 40
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/htccompressviewer/zip/ZipShort;-><init>([BI)V

    .line 49
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1, p2}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lcom/htc/htccompressviewer/zip/ZipShort;->value:I

    .line 59
    return-void
.end method

.method public static getBytes(I)[B
    .locals 3
    .parameter "value"

    .prologue
    .line 88
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 89
    .local v0, result:[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 90
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 91
    return-object v0
.end method

.method public static getValue([B)I
    .locals 1
    .parameter "bytes"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v0

    return v0
.end method

.method public static getValue([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 101
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int v0, v1, v2

    .line 102
    .local v0, value:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 103
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 122
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/htc/htccompressviewer/zip/ZipShort;

    if-nez v1, :cond_1

    .line 125
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget v1, p0, Lcom/htc/htccompressviewer/zip/ZipShort;->value:I

    check-cast p1, Lcom/htc/htccompressviewer/zip/ZipShort;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 4

    .prologue
    .line 67
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 68
    .local v0, result:[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/htccompressviewer/zip/ZipShort;->value:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 69
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/htccompressviewer/zip/ZipShort;->value:I

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 70
    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/htccompressviewer/zip/ZipShort;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/htccompressviewer/zip/ZipShort;->value:I

    return v0
.end method
