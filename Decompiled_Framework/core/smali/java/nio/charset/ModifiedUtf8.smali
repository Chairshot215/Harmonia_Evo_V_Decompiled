.class public Ljava/nio/charset/ModifiedUtf8;
.super Ljava/lang/Object;
.source "ModifiedUtf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countBytes(Ljava/lang/String;Z)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_0

    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    :goto_1
    if-eqz p1, :cond_2

    const-wide/32 v5, 0xffff

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/io/UTFDataFormatException;

    const-string v6, "String more than 65535 UTF bytes long"

    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/16 v5, 0x7ff

    if-gt v0, v5, :cond_1

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-wide v3
.end method

.method public static decode([B[CII)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/16 v9, 0x80

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, v5

    move v4, v3

    :goto_0
    if-ge v4, p3, :cond_8

    add-int/lit8 v3, v4, 0x1

    add-int v7, p2, v4

    aget-byte v7, p0, v7

    int-to-char v7, v7

    aput-char v7, p1, v6

    if-ge v7, v9, :cond_0

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v4, v3

    goto :goto_0

    :cond_0
    aget-char v0, p1, v6

    and-int/lit16 v7, v0, 0xe0

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_3

    if-lt v3, p3, :cond_1

    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad second byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    add-int/lit8 v4, v3, 0x1

    add-int v7, p2, v3

    aget-byte v1, p0, v7

    and-int/lit16 v7, v1, 0xc0

    if-eq v7, v9, :cond_2

    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad second byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v0, 0x1f

    shl-int/lit8 v7, v7, 0x6

    and-int/lit8 v8, v1, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    goto :goto_0

    :cond_3
    and-int/lit16 v7, v0, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_7

    add-int/lit8 v7, v3, 0x1

    if-lt v7, p3, :cond_4

    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad third byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    add-int/lit8 v4, v3, 0x1

    add-int v7, p2, v3

    aget-byte v1, p0, v7

    add-int/lit8 v3, v4, 0x1

    add-int v7, p2, v4

    aget-byte v2, p0, v7

    and-int/lit16 v7, v1, 0xc0

    if-ne v7, v9, :cond_5

    and-int/lit16 v7, v2, 0xc0

    if-eq v7, v9, :cond_6

    :cond_5
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad second or third byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, -0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v0, 0xf

    shl-int/lit8 v7, v7, 0xc

    and-int/lit8 v8, v1, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    and-int/lit8 v8, v2, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    move v4, v3

    goto/16 :goto_0

    :cond_7
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    move v3, p1

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_0

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_0

    add-int/lit8 p1, v3, 0x1

    int-to-byte v4, v0

    aput-byte v4, p0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, p1

    goto :goto_0

    :cond_0
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_1

    add-int/lit8 p1, v3, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, p1, 0x1

    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    move p1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 p1, v3, 0x1

    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 p1, v3, 0x1

    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/lit8 v2, v1, 0x2

    new-array v0, v2, [B

    const/4 v2, 0x0

    int-to-short v3, v1

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v3, v4}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    const/4 v2, 0x2

    invoke-static {v0, v2, p0}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    return-object v0
.end method
