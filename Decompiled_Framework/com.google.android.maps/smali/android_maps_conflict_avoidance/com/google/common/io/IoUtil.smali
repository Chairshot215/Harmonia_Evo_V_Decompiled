.class public Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDataInputFromBytes([B)Ljava/io/DataInput;
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;-><init>([B)V

    return-object v0
.end method

.method public static decodeUtf8([BIIZ)Ljava/lang/String;
    .locals 10

    new-instance v7, Ljava/lang/StringBuffer;

    sub-int v0, p2, p1

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    if-ge p1, p2, :cond_d

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v8, v0, 0xff

    const/16 v0, 0x7f

    if-gt v8, v0, :cond_0

    int-to-char v0, v8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xf5

    if-lt v8, v0, :cond_2

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    int-to-char v0, v8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v4, 0xe0

    const/4 v3, 0x1

    const/16 v2, 0x80

    const/16 v0, 0x1f

    move v5, v3

    move v9, v2

    move v2, v0

    move v0, v4

    move v4, v9

    :goto_2
    if-lt v8, v0, :cond_4

    shr-int/lit8 v0, v0, 0x1

    or-int/lit16 v6, v0, 0x80

    const/4 v0, 0x1

    if-ne v5, v0, :cond_3

    const/4 v0, 0x4

    :goto_3
    shl-int v3, v4, v0

    add-int/lit8 v4, v5, 0x1

    shr-int/lit8 v0, v2, 0x1

    move v2, v0

    move v5, v4

    move v4, v3

    move v0, v6

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    goto :goto_3

    :cond_4
    and-int/2addr v2, v8

    const/4 v0, 0x0

    move v3, v0

    move v0, v2

    :goto_4
    if-ge v3, v5, :cond_8

    shl-int/lit8 v0, v0, 0x6

    if-lt v1, p2, :cond_5

    if-nez p3, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p3, :cond_6

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xc0

    const/16 v6, 0x80

    if-eq v2, v6, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    move v1, v2

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_8
    if-nez p3, :cond_9

    if-lt v0, v4, :cond_a

    :cond_9
    const v2, 0xd800

    if-lt v0, v2, :cond_b

    const v2, 0xdfff

    if-gt v0, v2, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const v2, 0xffff

    if-gt v0, v2, :cond_c

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_c
    const/high16 v2, 0x1

    sub-int/2addr v0, v2

    const v2, 0xd800

    shr-int/lit8 v3, v0, 0xa

    or-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const v2, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v2

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeUtf8(Ljava/lang/String;[BI)I
    .locals 9

    const v7, 0xd800

    const v6, 0xfc00

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v7, :cond_0

    const v0, 0xdfff

    if-gt v1, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int v4, v0, v6

    and-int v5, v1, v6

    xor-int/2addr v4, v5

    const/16 v5, 0x400

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    and-int v4, v0, v6

    if-ne v4, v7, :cond_2

    :goto_1
    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v1, v0

    :cond_0
    const/16 v0, 0x7f

    if-gt v1, v0, :cond_3

    if-eqz p1, :cond_1

    int-to-byte v0, v1

    aput-byte v0, p1, p2

    :cond_1
    add-int/lit8 v0, p2, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move p2, v0

    goto :goto_0

    :cond_2
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_1

    :cond_3
    const/16 v0, 0x7ff

    if-gt v1, v0, :cond_5

    if-eqz p1, :cond_4

    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_4
    add-int/lit8 v0, p2, 0x2

    goto :goto_2

    :cond_5
    const v0, 0xffff

    if-gt v1, v0, :cond_7

    if-eqz p1, :cond_6

    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_6
    add-int/lit8 v0, p2, 0x3

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    shr-int/lit8 v0, v1, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x3

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_8
    add-int/lit8 v0, p2, 0x4

    goto :goto_2

    :cond_9
    return p2
.end method

.method public static encodeUtf8(Ljava/lang/String;)[B
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    new-array v1, v0, [B

    invoke-static {p0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    return-object v1
.end method

.method public static inflate([BIII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [B

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v4, p2, 0x1

    invoke-direct {v3, v1, v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    new-array v3, p3, [B

    move v1, p3

    :goto_0
    if-lez v1, :cond_0

    :try_start_0
    invoke-virtual {v2, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sub-int/2addr v1, v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] bytes, but only read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v3
.end method
