.class public abstract Llibcore/net/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 6

    const/16 v5, 0x25

    const/4 v4, -0x1

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Llibcore/net/UriCodec;->isRetained(C)Z

    move-result v3

    if-nez v3, :cond_4

    if-ne v0, v5, :cond_9

    if-eqz p4, :cond_9

    :cond_4
    if-eq v1, v4, :cond_5

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    const/4 v1, -0x1

    :cond_5
    if-ne v0, v5, :cond_7

    if-eqz p4, :cond_7

    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p1, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/16 v3, 0x20

    if-ne v0, v3, :cond_8

    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    if-ne v1, v4, :cond_6

    move v1, v2

    goto :goto_1

    :cond_a
    if-eq v1, v4, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    :cond_b
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .locals 1

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    invoke-static {p0, v1}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, v1}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x2b

    const/16 v9, 0x25

    const/4 v8, -0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_7

    :cond_2
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incomplete % sequence at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v1

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v2

    if-eq v1, v8, :cond_4

    if-ne v2, v8, :cond_5

    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid % sequence "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    shl-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_2

    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_1

    :cond_7
    if-eqz p1, :cond_8

    if-ne v0, v10, :cond_8

    const/16 v0, 0x20

    :cond_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static hexToInt(C)I
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_3

    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character"

    invoke-direct {v2, p0, v3, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public final appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public final encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract isRetained(C)Z
.end method

.method public final validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v5, -0x1

    move v3, p2

    :goto_0
    if-ge v3, p3, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x61

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7a

    if-le v0, v4, :cond_3

    :cond_0
    const/16 v4, 0x41

    if-lt v0, v4, :cond_1

    const/16 v4, 0x5a

    if-le v0, v4, :cond_3

    :cond_1
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-le v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Llibcore/net/UriCodec;->isRetained(C)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v4, 0x25

    if-ne v0, v4, :cond_8

    add-int/lit8 v4, v3, 0x2

    if-lt v4, p3, :cond_5

    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete % sequence in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    :cond_5
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v1

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v2

    if-eq v1, v5, :cond_6

    if-ne v2, v5, :cond_7

    :cond_6
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid % sequence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    :cond_7
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal character in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    :cond_9
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
