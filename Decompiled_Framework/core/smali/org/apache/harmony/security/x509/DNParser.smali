.class public final Lorg/apache/harmony/security/x509/DNParser;
.super Ljava/lang/Object;
.source "DNParser.java"


# instance fields
.field private beg:I

.field private final chars:[C

.field private encoded:[B

.field private end:I

.field private hasQE:Z

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x20

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    :cond_0
    :goto_0
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v2, v2

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_0

    :sswitch_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    move-result v3

    aput-char v3, v1, v2

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    aput-char v5, v1, v2

    :goto_2
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    aput-char v5, v1, v2

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v2, v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private getByte(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x61

    const/16 v7, 0x46

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v3, v3

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid distinguished name string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    aget-char v0, v2, p1

    if-lt v0, v4, :cond_1

    if-gt v0, v5, :cond_1

    add-int/lit8 v0, v0, -0x30

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v1, v2, v3

    if-lt v1, v4, :cond_4

    if-gt v1, v5, :cond_4

    add-int/lit8 v1, v1, -0x30

    :goto_1
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    return v2

    :cond_1
    if-lt v0, v8, :cond_2

    const/16 v2, 0x66

    if-gt v0, v2, :cond_2

    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v7, :cond_3

    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid distinguished name string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-lt v1, v8, :cond_5

    const/16 v2, 0x66

    if-gt v1, v2, :cond_5

    add-int/lit8 v1, v1, -0x57

    goto :goto_1

    :cond_5
    if-lt v1, v6, :cond_6

    if-gt v1, v7, :cond_6

    add-int/lit8 v1, v1, -0x37

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid distinguished name string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEscaped()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid distinguished name string"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v1, v2

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->getUTF8()C

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_1
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private hexAV()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x20

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v4, v4

    if-lt v3, v4, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid distinguished name string"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    :goto_0
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v4, v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4

    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    :cond_2
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int v0, v3, v4

    const/4 v3, 0x5

    if-lt v0, v3, :cond_3

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_7

    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid distinguished name string"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_5

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    :goto_1
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v4, v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_2

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x41

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_6

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v5, v3, v4

    add-int/lit8 v5, v5, 0x20

    int-to-char v5, v5

    aput-char v5, v3, v4

    :cond_6
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto/16 :goto_0

    :cond_7
    div-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    const/4 v1, 0x0

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v2, v3, 0x1

    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    array-length v3, v3

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method private nextAT()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x3d

    const/16 v2, 0x20

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    :goto_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid distinguished name string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_6

    :goto_3
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_6

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid distinguished name string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    :goto_4
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_7

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_b

    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    :cond_a
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid distinguished name string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    :goto_1
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    :goto_2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method protected getUTF8()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x80

    const/16 v4, 0x3f

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    invoke-direct {p0, v5}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v3

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    if-ge v3, v7, :cond_1

    int-to-char v4, v3

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/16 v5, 0xc0

    if-lt v3, v5, :cond_0

    const/16 v5, 0xf7

    if-gt v3, v5, :cond_0

    const/16 v5, 0xdf

    if-gt v3, v5, :cond_2

    const/4 v1, 0x1

    and-int/lit8 v3, v3, 0x1f

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v6, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v6, v6

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v6, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    invoke-direct {p0, v5}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v0

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    and-int/lit16 v5, v0, 0xc0

    if-ne v5, v7, :cond_0

    shl-int/lit8 v5, v3, 0x6

    and-int/lit8 v6, v0, 0x3f

    add-int v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/16 v5, 0xef

    if-gt v3, v5, :cond_3

    const/4 v1, 0x2

    and-int/lit8 v3, v3, 0xf

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    and-int/lit8 v3, v3, 0x7

    goto :goto_1

    :cond_4
    int-to-char v4, v3

    goto :goto_0
.end method

.method public parse()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v4, v4

    if-ne v3, v4, :cond_2

    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v4, Lorg/apache/harmony/security/x501/AttributeValue;

    const-string v5, ""

    invoke-direct {v4, v5, v7}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v1, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v4, Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->escapedAV()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v1, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    array-length v4, v4

    if-lt v3, v4, :cond_3

    invoke-interface {v2, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v4, Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->quotedAV()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v1, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v4, Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->hexAV()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v3, v1, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v4, Lorg/apache/harmony/security/x501/AttributeValue;

    const-string v5, ""

    invoke-direct {v4, v5, v7}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v1, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_6

    :cond_4
    invoke-interface {v2, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid distinguished name string"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_5

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid distinguished name string"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
    .end sparse-switch
.end method
