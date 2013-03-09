.class public final Lcom/android/org/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .locals 14

    const/16 v13, 0xf0

    const/16 v12, 0xe0

    const/16 v11, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v9, p0

    if-ge v6, v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_0

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_0

    :cond_0
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_1

    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    :cond_1
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_2

    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-array v5, v7, [C

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    array-length v9, p0

    if-ge v6, v9, :cond_8

    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_4

    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int v4, v9, v10

    const/high16 v9, 0x1

    sub-int v0, v4, v9

    const v9, 0xd800

    shr-int/lit8 v10, v0, 0xa

    or-int/2addr v9, v10

    int-to-char v1, v9

    const v9, 0xdc00

    and-int/lit16 v10, v0, 0x3ff

    or-int/2addr v9, v10

    int-to-char v2, v9

    add-int/lit8 v8, v7, 0x1

    aput-char v1, v5, v7

    move v3, v2

    add-int/lit8 v6, v6, 0x4

    move v7, v8

    :goto_2
    add-int/lit8 v8, v7, 0x1

    aput-char v3, v5, v7

    move v7, v8

    goto :goto_1

    :cond_4
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_5

    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0xc

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    add-int/lit8 v6, v6, 0x3

    goto :goto_2

    :cond_5
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xd0

    const/16 v10, 0xd0

    if-ne v9, v10, :cond_6

    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_6
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_7

    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_7
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    int-to-char v3, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    return-object v9
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 7

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v5, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    array-length v6, v2

    if-eq v0, v6, :cond_2

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toByteArray([C)[B
    .locals 3

    array-length v2, p0

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    aget-char v0, v2, v3

    const/16 v4, 0x41

    if-gt v4, v0, :cond_0

    const/16 v4, 0x5a

    if-lt v4, v0, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v4, v0, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    :cond_2
    return-object p0
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUTF8ByteArray([C)[B
    .locals 9

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, p0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_5

    aget-char v4, v3, v6

    const/16 v7, 0x80

    if-ge v4, v7, :cond_0

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/16 v7, 0x800

    if-ge v4, v7, :cond_1

    shr-int/lit8 v7, v4, 0x6

    or-int/lit16 v7, v7, 0xc0

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v7, v4, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    const v7, 0xd800

    if-lt v4, v7, :cond_4

    const v7, 0xdfff

    if-gt v4, v7, :cond_4

    add-int/lit8 v7, v6, 0x1

    array-length v8, v3

    if-lt v7, v8, :cond_2

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "invalid UTF-16 codepoint"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    move v0, v4

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v3, v6

    move v1, v4

    const v7, 0xdbff

    if-le v0, v7, :cond_3

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "invalid UTF-16 codepoint"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    and-int/lit16 v7, v0, 0x3ff

    shl-int/lit8 v7, v7, 0xa

    and-int/lit16 v8, v1, 0x3ff

    or-int/2addr v7, v8

    const/high16 v8, 0x1

    add-int v5, v7, v8

    shr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v7, v5, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_4
    shr-int/lit8 v7, v4, 0xc

    or-int/lit16 v7, v7, 0xe0

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v7, v4, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    aget-char v0, v2, v3

    const/16 v4, 0x61

    if-gt v4, v0, :cond_0

    const/16 v4, 0x7a

    if-lt v4, v0, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v4, v0, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    aput-char v4, v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    :cond_2
    return-object p0
.end method
