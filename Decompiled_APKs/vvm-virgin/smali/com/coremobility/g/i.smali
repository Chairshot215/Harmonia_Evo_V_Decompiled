.class public final Lcom/coremobility/g/i;
.super Ljava/lang/Object;


# static fields
.field static final d:I

.field private static e:Lcom/coremobility/g/i;

.field private static f:[B

.field private static g:I

.field private static h:I

.field private static i:I

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static l:[Lcom/coremobility/g/g;


# instance fields
.field a:Z

.field b:I

.field c:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/coremobility/g/i;->f:[B

    sput v1, Lcom/coremobility/g/i;->g:I

    sput v1, Lcom/coremobility/g/i;->h:I

    sput v1, Lcom/coremobility/g/i;->i:I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ABCabc"

    aput-object v1, v0, v3

    const-string v1, "DEFdef"

    aput-object v1, v0, v4

    const-string v1, "GHIghi"

    aput-object v1, v0, v5

    const-string v1, "JKLjkl"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "MNOmno"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PQRSpqrs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TUVtuv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WXYZwxyz"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/g/i;->j:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "27"

    aput-object v1, v0, v3

    const-string v1, "36"

    aput-object v1, v0, v4

    const-string v1, "66"

    aput-object v1, v0, v5

    const-string v1, "72"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "86"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "87"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "97"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "77"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "88"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/g/i;->k:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coremobility/g/i;->d:I

    new-array v0, v0, [Lcom/coremobility/g/g;

    sput-object v0, Lcom/coremobility/g/i;->l:[Lcom/coremobility/g/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)B
    .locals 4

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    int-to-byte v1, v0

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/coremobility/g/i;->j:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/coremobility/g/i;->j:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x32

    int-to-byte v0, v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-byte v0, p0

    goto :goto_1
.end method

.method public static a()Lcom/coremobility/g/i;
    .locals 3

    sget-object v0, Lcom/coremobility/g/i;->e:Lcom/coremobility/g/i;

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    const-string v1, "Creating CM_KeySequence"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/g/i;

    invoke-direct {v0}, Lcom/coremobility/g/i;-><init>()V

    sput-object v0, Lcom/coremobility/g/i;->e:Lcom/coremobility/g/i;

    :cond_0
    sget-object v0, Lcom/coremobility/g/i;->e:Lcom/coremobility/g/i;

    return-object v0
.end method

.method private a(I)V
    .locals 13

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v3, Lcom/coremobility/g/i;->i:I

    if-ltz v3, :cond_16

    const/16 v3, 0x83

    if-ne p1, v3, :cond_2

    sget v1, Lcom/coremobility/g/i;->i:I

    if-lez v1, :cond_0

    sget v0, Lcom/coremobility/g/i;->i:I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    sput v0, Lcom/coremobility/g/i;->i:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v3, Lcom/coremobility/g/i;->i:I

    sget v4, Lcom/coremobility/g/i;->g:I

    if-eq v3, v4, :cond_15

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sput v5, Lcom/coremobility/g/i;->h:I

    const-string v3, "*26"

    invoke-static {v3}, Lcom/coremobility/g/i;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lcom/coremobility/g/i;->h:I

    sget v4, Lcom/coremobility/g/i;->i:I

    if-ge v3, v4, :cond_3

    const/16 v3, 0x33

    sget-object v4, Lcom/coremobility/g/i;->f:[B

    sget v7, Lcom/coremobility/g/i;->h:I

    aget-byte v4, v4, v7

    if-eq v3, v4, :cond_7

    :cond_3
    move v3, v5

    :goto_1
    if-eqz v3, :cond_b

    invoke-static {v6}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget v3, Lcom/coremobility/g/i;->h:I

    add-int/lit8 v8, v3, 0x1

    sget v3, Lcom/coremobility/g/i;->i:I

    if-gt v8, v3, :cond_4

    sget v3, Lcom/coremobility/g/i;->i:I

    if-ge v8, v3, :cond_8

    :cond_4
    :goto_2
    long-to-int v3, v1

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v4, "CM+KS set log level %d"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v6, v4, v7}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v3, :cond_a

    move v5, v6

    :cond_6
    :goto_3
    if-eqz v5, :cond_14

    sput v0, Lcom/coremobility/g/i;->i:I

    invoke-static {}, Lcom/coremobility/integration/d/h;->b()Z

    goto :goto_0

    :cond_7
    sget v3, Lcom/coremobility/g/i;->h:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/coremobility/g/i;->h:I

    move v3, v6

    goto :goto_1

    :cond_8
    const-wide/16 v3, 0x0

    sget v7, Lcom/coremobility/g/i;->h:I

    :goto_4
    if-ge v7, v8, :cond_9

    sget-object v9, Lcom/coremobility/g/i;->f:[B

    sget v10, Lcom/coremobility/g/i;->h:I

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, -0x30

    int-to-long v9, v9

    const-wide/16 v11, 0x9

    cmp-long v11, v9, v11

    if-gtz v11, :cond_4

    const-wide/16 v11, 0xa

    mul-long/2addr v3, v11

    add-long/2addr v3, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    sput v8, Lcom/coremobility/g/i;->h:I

    move-wide v1, v3

    goto :goto_2

    :cond_a
    sget v1, Lcom/coremobility/g/i;->h:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/coremobility/g/i;->h:I

    :cond_b
    const-string v1, "85"

    invoke-static {v1}, Lcom/coremobility/g/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v2, 0x10

    const-string v3, ""

    invoke-virtual {v1, v2, v5, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const-string v1, "000000"

    invoke-static {v1}, Lcom/coremobility/g/i;->b(Ljava/lang/String;)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_d

    iput-boolean v6, p0, Lcom/coremobility/g/i;->a:Z

    const-string v2, "CM+KS unlocked"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    move v5, v1

    goto :goto_3

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    new-array v4, v1, [B

    move v1, v5

    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_10

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/coremobility/g/i;->a(C)B

    move-result v2

    const/16 v7, 0x30

    if-lt v2, v7, :cond_f

    const/16 v7, 0x39

    if-gt v2, v7, :cond_f

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    :cond_f
    aput-byte v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/coremobility/g/i;->b(Ljava/lang/String;)Z

    move-result v1

    goto :goto_5

    :cond_11
    iget-boolean v1, p0, Lcom/coremobility/g/i;->a:Z

    if-eqz v1, :cond_6

    const-string v1, "786"

    invoke-static {v1}, Lcom/coremobility/g/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->d()V

    move v5, v6

    goto/16 :goto_3

    :cond_12
    move v1, v5

    :goto_7
    sget v2, Lcom/coremobility/g/i;->d:I

    if-ge v1, v2, :cond_6

    sget-object v2, Lcom/coremobility/g/i;->l:[Lcom/coremobility/g/g;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    sget-object v2, Lcom/coremobility/g/i;->k:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/coremobility/g/i;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/coremobility/g/i;->f:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    sget v3, Lcom/coremobility/g/i;->h:I

    sget v4, Lcom/coremobility/g/i;->i:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/coremobility/g/i;->l:[Lcom/coremobility/g/g;

    aget-object v1, v3, v1

    invoke-interface {v1, v2}, Lcom/coremobility/g/g;->a(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    :sswitch_1
    sget-object v0, Lcom/coremobility/g/i;->f:[B

    sget v1, Lcom/coremobility/g/i;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/coremobility/g/i;->i:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto/16 :goto_0

    :cond_15
    :sswitch_2
    sput v0, Lcom/coremobility/g/i;->i:I

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    sput v5, Lcom/coremobility/g/i;->i:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2a -> :sswitch_1
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x81 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Lcom/coremobility/g/g;I)V
    .locals 1

    if-ltz p1, :cond_1

    sget v0, Lcom/coremobility/g/i;->d:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/g/i;->l:[Lcom/coremobility/g/g;

    aput-object p0, v0, p1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/coremobility/g/i;->f:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sget v1, Lcom/coremobility/g/i;->h:I

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/coremobility/g/i;->h:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/coremobility/g/i;->h:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/g/i;->e:Lcom/coremobility/g/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 7

    const/16 v6, 0x2a

    const/16 v5, 0x23

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/coremobility/g/i;->a(I)V

    :goto_2
    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/coremobility/g/i;->a(C)B

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v3, v3, 0x30

    invoke-direct {p0, v3}, Lcom/coremobility/g/i;->a(I)V

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_0
    invoke-direct {p0, v5}, Lcom/coremobility/g/i;->a(I)V

    goto :goto_3

    :sswitch_1
    invoke-direct {p0, v6}, Lcom/coremobility/g/i;->a(I)V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/g/i;->f:[B

    array-length v0, v0

    sput v0, Lcom/coremobility/g/i;->g:I

    iput-boolean v1, p0, Lcom/coremobility/g/i;->a:Z

    iput v1, p0, Lcom/coremobility/g/i;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/g/i;->c:J

    return-void
.end method
