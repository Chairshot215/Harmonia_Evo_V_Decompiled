.class Ljava/util/jar/InitManifest;
.super Ljava/lang/Object;
.source "InitManifest.java"


# instance fields
.field private final buf:[B

.field private consecutiveLineBreaks:I

.field private name:Ljava/util/jar/Attributes$Name;

.field private pos:I

.field private value:Ljava/lang/String;

.field private final valueBuffer:Ljava/lang/UnsafeByteSequence;


# direct methods
.method constructor <init>([BLjava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsafeByteSequence;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/UnsafeByteSequence;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    iput-object p1, p0, Ljava/util/jar/InitManifest;->buf:[B

    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, p3}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing version attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-le v2, v0, :cond_0

    iput v1, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readName()V

    iput v1, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readValue()V

    iget v2, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-lez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private readName()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Ljava/util/jar/InitManifest;->pos:I

    :cond_0
    iget v3, p0, Ljava/util/jar/InitManifest;->pos:I

    iget-object v4, p0, Ljava/util/jar/InitManifest;->buf:[B

    array-length v4, v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/jar/InitManifest;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget-object v3, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/jar/InitManifest;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid value for attribute \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/jar/Attributes$Name;

    invoke-direct {v3, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    iget v0, p0, Ljava/util/jar/InitManifest;->pos:I

    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    invoke-virtual {v4}, Ljava/lang/UnsafeByteSequence;->rewind()V

    :goto_0
    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v5, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/jar/InitManifest;->pos:I

    aget-byte v3, v4, v5

    sparse-switch v3, :sswitch_data_0

    :cond_0
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-lt v4, v7, :cond_3

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/util/jar/InitManifest;->pos:I

    :cond_1
    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/UnsafeByteSequence;->write([BII)V

    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    sget-object v5, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/UnsafeByteSequence;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    return-void

    :sswitch_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NUL character in a manifest"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x1

    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_0

    :sswitch_3
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/UnsafeByteSequence;->write([BII)V

    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    const/4 v4, 0x0

    iput v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_0

    :cond_3
    iget v0, p0, Ljava/util/jar/InitManifest;->pos:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method getPos()I
    .locals 1

    iget v0, p0, Ljava/util/jar/InitManifest;->pos:I

    return v0
.end method

.method initEntries(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    :goto_0
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Entry is not named"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v1, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/jar/Attributes;

    const/16 v3, 0xc

    invoke-direct {v0, v3}, Ljava/util/jar/Attributes;-><init>(I)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/IOException;

    const-string v4, "A jar verifier does not support more than one entry with the same name"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Ljava/util/jar/Manifest$Chunk;

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    invoke-direct {v3, v2, v4}, Ljava/util/jar/Manifest$Chunk;-><init>(II)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    :cond_4
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-void
.end method
