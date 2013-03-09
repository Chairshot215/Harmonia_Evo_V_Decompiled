.class public final Lcom/android/internal/net/DNParser;
.super Ljava/lang/Object;
.source "DNParser.java"


# static fields
.field private static final ERROR_PARSE_ERROR:Ljava/lang/String; = "Failed to parse DN"

.field private static final TAG:Ljava/lang/String; = "DNParser"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/DNParser;->length:I

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->end:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->cur:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    aput-char v4, v0, v1

    :goto_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/DNParser;->end:I

    aput-char v4, v0, v1

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->cur:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

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

    iget v3, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse DN"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    aget-char v0, v2, p1

    if-lt v0, v4, :cond_1

    if-gt v0, v5, :cond_1

    add-int/lit8 v0, v0, -0x30

    :goto_0
    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

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

    const-string v3, "Failed to parse DN"

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

    const-string v3, "Failed to parse DN"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEscaped()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->getUTF8()C

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private getUTF8()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x80

    const/16 v4, 0x3f

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    invoke-direct {p0, v5}, Lcom/android/internal/net/DNParser;->getByte(I)I

    move-result v3

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/net/DNParser;->pos:I

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

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v6, p0, Lcom/android/internal/net/DNParser;->length:I

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v6, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    invoke-direct {p0, v5}, Lcom/android/internal/net/DNParser;->getByte(I)I

    move-result v0

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/net/DNParser;->pos:I

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

.method private hexAV()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x20

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v4, v5, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse DN"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_0
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_4

    :cond_1
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v4, p0, Lcom/android/internal/net/DNParser;->end:I

    :cond_2
    iget v4, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int v1, v4, v5

    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_7

    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse DN"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_5

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v4, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_1
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_2

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x41

    if-lt v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x46

    if-gt v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v6, v4, v5

    add-int/lit8 v6, v6, 0x20

    int-to-char v6, v6

    aput-char v6, v4, v5

    :cond_6
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto/16 :goto_0

    :cond_7
    div-int/lit8 v4, v1, 0x2

    new-array v0, v4, [B

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v3, v4, 0x1

    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/net/DNParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v6, p0, Lcom/android/internal/net/DNParser;->beg:I

    invoke-direct {v4, v5, v6, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4
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

    :goto_0
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v0, v1, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_6

    :goto_3
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_6

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_4
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    :cond_a
    iget v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

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

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->beg:I

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    :goto_0
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    :goto_1
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v1, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    :goto_2
    iget v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v0, p0, Lcom/android/internal/net/DNParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/DNParser;->end:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v1, p0, Lcom/android/internal/net/DNParser;->end:I

    iget-object v2, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v3, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v2, p0, Lcom/android/internal/net/DNParser;->beg:I

    iget v3, p0, Lcom/android/internal/net/DNParser;->end:I

    iget v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/net/DNParser;->beg:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/net/DNParser;->end:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/net/DNParser;->cur:I

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-ne v4, v5, :cond_2

    move-object v1, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    :goto_1
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    iget v5, p0, Lcom/android/internal/net/DNParser;->length:I

    if-lt v4, v5, :cond_3

    move-object v1, v3

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/net/DNParser;->pos:I

    invoke-direct {p0}, Lcom/android/internal/net/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse DN"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v4, "DNParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/net/DNParser;->dn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/net/DNParser;->chars:[C

    iget v5, p0, Lcom/android/internal/net/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_4

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse DN"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
