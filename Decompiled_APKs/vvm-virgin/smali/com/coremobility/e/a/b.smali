.class public final Lcom/coremobility/e/a/b;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;

.field static b:I

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field static final f:[[Ljava/lang/String;

.field static final g:[I


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "application/"

    aput-object v1, v0, v3

    const-string v1, "audio/"

    aput-object v1, v0, v4

    const-string v1, "chemical/"

    aput-object v1, v0, v5

    const-string v1, "image/"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "message/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "model/"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multipart/"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "video/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/e/a/b;->a:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/coremobility/e/a/b;->b:I

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "vnd.wap.mms-message"

    aput-object v1, v0, v3

    const-string v1, "x-dm-batch"

    aput-object v1, v0, v4

    const-string v1, "x-dm-toc"

    aput-object v1, v0, v5

    sput-object v0, Lcom/coremobility/e/a/b;->c:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hevr"

    aput-object v1, v0, v3

    const-string v1, "x-evrc-full"

    aput-object v1, v0, v4

    const-string v1, "x-gsm"

    aput-object v1, v0, v5

    const-string v1, "x-qcelp-full-fixed"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "x-qcelp-full-var"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "x-qcelp-half-fixed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "x-qcelp-half-var"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "x-wav"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "amr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "awb"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mp3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/e/a/b;->d:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "plain"

    aput-object v1, v0, v3

    const-string v1, "xml"

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/e/a/b;->e:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/coremobility/e/a/b;->c:[Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coremobility/e/a/b;->d:[Ljava/lang/String;

    aput-object v1, v0, v4

    aput-object v6, v0, v5

    aput-object v6, v0, v7

    const/4 v1, 0x4

    aput-object v6, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v6, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coremobility/e/a/b;->e:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v6, v0, v1

    sput-object v0, Lcom/coremobility/e/a/b;->f:[[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [I

    sget-object v1, Lcom/coremobility/e/a/b;->c:[Ljava/lang/String;

    array-length v1, v1

    aput v1, v0, v3

    sget-object v1, Lcom/coremobility/e/a/b;->d:[Ljava/lang/String;

    array-length v1, v1

    aput v1, v0, v4

    aput v3, v0, v5

    aput v3, v0, v7

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coremobility/e/a/b;->e:[Ljava/lang/String;

    array-length v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    sput-object v0, Lcom/coremobility/e/a/b;->g:[I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/coremobility/e/a/b;->a:[Ljava/lang/String;

    sget v3, Lcom/coremobility/e/a/b;->b:I

    invoke-static {v2, v3, p0, v1}, Lcom/coremobility/e/a/b;->a([Ljava/lang/String;ILjava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lcom/coremobility/e/a/b;->f:[[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    sget-object v5, Lcom/coremobility/e/a/b;->g:[I

    aget v2, v5, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, v1, v0}, Lcom/coremobility/e/a/b;->a([Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v0, v1, 0x1

    :cond_2
    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    if-ge v6, p1, :cond_3

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    aget-object v3, p0, v6

    move-object v0, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v6

    :goto_1
    return v0

    :cond_1
    aget-object v0, p0, v6

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a(ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z
    .locals 6

    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    sget v2, Lcom/coremobility/e/a/b;->b:I

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/coremobility/e/a/b;->f:[[Ljava/lang/String;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    const v3, 0xffff

    and-int/2addr v3, p0

    if-eqz v3, :cond_0

    sget-object v4, Lcom/coremobility/e/a/b;->g:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_0

    sget-object v0, Lcom/coremobility/e/a/b;->a:[Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    add-int/lit8 v0, v3, -0x1

    aget-object v0, v2, v0

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coremobility/e/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/coremobility/e/a/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/e/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
