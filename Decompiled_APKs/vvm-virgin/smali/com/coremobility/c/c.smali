.class public final Lcom/coremobility/c/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field protected static b:[I

.field protected static c:[I

.field protected static final d:I

.field protected static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/c/c;->a:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coremobility/c/c;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coremobility/c/c;->c:[I

    const-string v0, "DM-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/coremobility/c/c;->d:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coremobility/c/c;->e:I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/coremobility/integration/h/d;)S
    .locals 2

    invoke-static {}, Lcom/coremobility/c/c;->c()S

    move-result v0

    invoke-static {v0}, Lcom/coremobility/c/c;->d(S)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    return v0
.end method

.method public static a()V
    .locals 12

    const/16 v11, 0x1a

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/coremobility/c/c;->a:Z

    move v0, v2

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/coremobility/c/c;->b:[I

    sget-object v4, Lcom/coremobility/c/c;->c:[I

    aput v2, v4, v0

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {}, Lcom/coremobility/integration/file/a;->b()Lcom/coremobility/integration/p;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/p;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/coremobility/c/c;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File name ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v11, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/c/c;->b(Ljava/lang/String;)S

    move-result v4

    if-nez v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v11, v5, v6}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-static {v4}, Lcom/coremobility/c/c;->d(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    if-eqz v4, :cond_3

    const/16 v0, 0x100

    if-gt v4, v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    add-int/lit8 v0, v4, -0x1

    div-int/lit8 v4, v0, 0x20

    const-wide/16 v5, 0x1

    rem-int/lit8 v0, v0, 0x20

    shl-long/2addr v5, v0

    sget-object v0, Lcom/coremobility/c/c;->b:[I

    aget v0, v0, v4

    int-to-long v7, v0

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget-object v0, Lcom/coremobility/c/c;->b:[I

    aget v7, v0, v4

    int-to-long v7, v7

    or-long/2addr v5, v7

    long-to-int v5, v5

    aput v5, v0, v4

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    const-string v4, "CM+DMF del anomaly %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v11, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/p;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/coremobility/c/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/coremobility/c/c;->b(Ljava/lang/String;)S

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0x100

    if-gt v3, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v3, v0, 0x20

    const-wide/16 v4, 0x1

    rem-int/lit8 v0, v0, 0x20

    shl-long/2addr v4, v0

    sget-object v0, Lcom/coremobility/c/c;->b:[I

    aget v0, v0, v3

    int-to-long v6, v0

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget-object v0, Lcom/coremobility/c/c;->b:[I

    aget v2, v0, v3

    int-to-long v6, v2

    const-wide/16 v8, -0x1

    xor-long/2addr v4, v8

    and-long/2addr v4, v6

    long-to-int v2, v4

    aput v2, v0, v3

    sput-boolean v1, Lcom/coremobility/c/c;->a:Z

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static a(S)Z
    .locals 7

    const/16 v6, 0x1a

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 v2, 0x100

    if-le p0, v2, :cond_1

    :cond_0
    const-string v2, "CM+DMF il file id %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v6, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v3, v2, 0x20

    const-wide/16 v4, 0x1

    rem-int/lit8 v2, v2, 0x20

    shl-long/2addr v4, v2

    sget-object v2, Lcom/coremobility/c/c;->b:[I

    aget v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const-string v2, "CM+DMF %s%d not found"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "DM-"

    aput-object v4, v3, v0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v6, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)S
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const-string v1, "DM-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    const-string v3, "Hex part of DM file name is: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1, v5}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v1

    long-to-int v1, v1

    if-eqz v1, :cond_0

    const/16 v2, 0x100

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    int-to-short v0, v1

    goto :goto_0
.end method

.method public static b()V
    .locals 15

    const-wide/16 v13, 0x1

    const-wide/16 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    const/16 v0, 0x8

    if-ge v5, v0, :cond_3

    sget-object v0, Lcom/coremobility/c/c;->b:[I

    aget v0, v0, v5

    sget-object v3, Lcom/coremobility/c/c;->c:[I

    aget v3, v3, v5

    if-eq v0, v3, :cond_2

    sget-object v0, Lcom/coremobility/c/c;->b:[I

    aget v0, v0, v5

    sget-object v3, Lcom/coremobility/c/c;->c:[I

    aget v3, v3, v5

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    int-to-long v3, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    cmp-long v0, v3, v11

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget-object v0, Lcom/coremobility/c/c;->b:[I

    sget-object v6, Lcom/coremobility/c/c;->c:[I

    aget v6, v6, v5

    aput v6, v0, v5

    move v0, v2

    :goto_2
    const/16 v6, 0x20

    if-ge v0, v6, :cond_2

    and-long v6, v3, v13

    cmp-long v6, v6, v11

    if-eqz v6, :cond_0

    mul-int/lit8 v6, v5, 0x20

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    invoke-static {v6}, Lcom/coremobility/c/c;->d(S)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a

    const-string v8, "CM+DMF del orphan %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v2

    invoke-static {v7, v8, v9}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v6}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget-object v6, Lcom/coremobility/c/c;->b:[I

    aget v7, v6, v5

    int-to-long v7, v7

    shl-long v9, v13, v0

    or-long/2addr v7, v9

    long-to-int v7, v7

    aput v7, v6, v5

    :cond_0
    shr-long/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static b(S)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    add-int/lit8 v0, p0, -0x1

    div-int/lit8 v3, v0, 0x20

    const-wide/16 v4, 0x1

    rem-int/lit8 v0, v0, 0x20

    shl-long/2addr v4, v0

    sget-object v0, Lcom/coremobility/c/c;->c:[I

    aget v0, v0, v3

    int-to-long v6, v0

    and-long v3, v6, v4

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    const/16 v0, 0x1a

    const-string v3, "CM+DMF %s%d owned"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "DM-"

    aput-object v5, v4, v2

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static c()S
    .locals 14

    const-wide/16 v10, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/coremobility/c/c;->b:[I

    aget v3, v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    :goto_1
    return v1

    :cond_1
    sget-object v3, Lcom/coremobility/c/c;->b:[I

    aget v3, v3, v0

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    move-wide v12, v3

    move-wide v4, v12

    move v3, v1

    :goto_2
    and-long v6, v4, v10

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    shr-long/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/16 v4, 0x20

    if-ge v3, v4, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget-object v1, Lcom/coremobility/c/c;->b:[I

    aget v2, v1, v0

    int-to-long v4, v2

    shl-long v6, v10, v3

    or-long/2addr v4, v6

    long-to-int v2, v4

    aput v2, v1, v0

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-short v1, v0

    goto :goto_1
.end method

.method public static c(S)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    add-int/lit8 v0, p0, -0x1

    div-int/lit8 v3, v0, 0x20

    const-wide/16 v4, 0x1

    rem-int/lit8 v0, v0, 0x20

    shl-long/2addr v4, v0

    sget-object v0, Lcom/coremobility/c/c;->c:[I

    aget v0, v0, v3

    int-to-long v6, v0

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget-object v0, Lcom/coremobility/c/c;->c:[I

    aget v1, v0, v3

    int-to-long v1, v1

    or-long/2addr v1, v4

    long-to-int v1, v1

    aput v1, v0, v3

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v3, Lcom/coremobility/c/c;->d:I

    if-ge v0, v3, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget v0, Lcom/coremobility/c/c;->d:I

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DM-"

    sget v4, Lcom/coremobility/c/c;->d:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_1
.end method

.method public static d(S)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-nez p0, :cond_1

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
