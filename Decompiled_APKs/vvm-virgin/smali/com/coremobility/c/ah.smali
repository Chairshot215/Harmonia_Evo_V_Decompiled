.class public final Lcom/coremobility/c/ah;
.super Lcom/coremobility/c/an;

# interfaces
.implements Lcom/coremobility/g/a;
.implements Lcom/coremobility/g/h;


# static fields
.field protected static final o:[I

.field private static q:Lcom/coremobility/c/ah;


# instance fields
.field protected a:Lcom/coremobility/g/j;

.field protected b:Lcom/coremobility/c/ah;

.field protected c:Lcom/coremobility/integration/a/a;

.field protected d:Lcom/coremobility/g/b;

.field protected e:[Lcom/coremobility/c/ap;

.field protected f:Lcom/coremobility/c/a;

.field protected g:Lcom/coremobility/c/b;

.field protected h:[Lcom/coremobility/c/d;

.field protected i:[Lcom/coremobility/c/aa;

.field protected j:[Lcom/coremobility/c/ad;

.field protected k:Lcom/coremobility/c/aj;

.field protected l:[Z

.field protected m:[Z

.field protected n:Lcom/coremobility/c/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/c/ah;->q:Lcom/coremobility/c/ah;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coremobility/c/ah;->o:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/coremobility/c/an;-><init>()V

    new-array v0, v1, [Lcom/coremobility/c/ap;

    iput-object v0, p0, Lcom/coremobility/c/ah;->e:[Lcom/coremobility/c/ap;

    new-instance v0, Lcom/coremobility/c/a;

    invoke-direct {v0}, Lcom/coremobility/c/a;-><init>()V

    iput-object v0, p0, Lcom/coremobility/c/ah;->f:Lcom/coremobility/c/a;

    new-instance v0, Lcom/coremobility/c/b;

    invoke-direct {v0}, Lcom/coremobility/c/b;-><init>()V

    iput-object v0, p0, Lcom/coremobility/c/ah;->g:Lcom/coremobility/c/b;

    new-array v0, v3, [Lcom/coremobility/c/d;

    iput-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    new-array v0, v3, [Lcom/coremobility/c/aa;

    iput-object v0, p0, Lcom/coremobility/c/ah;->i:[Lcom/coremobility/c/aa;

    new-array v0, v3, [Lcom/coremobility/c/ad;

    iput-object v0, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    new-instance v0, Lcom/coremobility/c/aj;

    invoke-direct {v0, p0}, Lcom/coremobility/c/aj;-><init>(Lcom/coremobility/c/ah;)V

    iput-object v0, p0, Lcom/coremobility/c/ah;->k:Lcom/coremobility/c/aj;

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/coremobility/c/ah;->l:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/coremobility/c/ah;->m:[Z

    iput-object v2, p0, Lcom/coremobility/c/ah;->n:Lcom/coremobility/c/ai;

    iput-object v2, p0, Lcom/coremobility/c/ah;->c:Lcom/coremobility/integration/a/a;

    iput-object v2, p0, Lcom/coremobility/c/ah;->d:Lcom/coremobility/g/b;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    new-instance v2, Lcom/coremobility/c/d;

    invoke-direct {v2}, Lcom/coremobility/c/d;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    new-instance v2, Lcom/coremobility/c/ad;

    invoke-direct {v2}, Lcom/coremobility/c/ad;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/coremobility/c/ah;->i:[Lcom/coremobility/c/aa;

    new-instance v2, Lcom/coremobility/c/aa;

    invoke-direct {v2}, Lcom/coremobility/c/aa;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()Lcom/coremobility/c/ah;
    .locals 7

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/c/ah;->q:Lcom/coremobility/c/ah;

    if-nez v0, :cond_4

    const/16 v0, 0x1a

    const-string v3, "Creating CM_DmService instance"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/coremobility/c/ah;

    invoke-direct {v3}, Lcom/coremobility/c/ah;-><init>()V

    sput-object v3, Lcom/coremobility/c/ah;->q:Lcom/coremobility/c/ah;

    sget-object v0, Lcom/coremobility/c/an;->p:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget-object v0, Lcom/coremobility/c/ah;->o:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/c/ah;->c:Lcom/coremobility/integration/a/a;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/c/ah;->d:Lcom/coremobility/g/b;

    new-instance v0, Lcom/coremobility/c/ai;

    invoke-direct {v0, v3}, Lcom/coremobility/c/ai;-><init>(Lcom/coremobility/c/ah;)V

    iput-object v0, v3, Lcom/coremobility/c/ah;->n:Lcom/coremobility/c/ai;

    iget-object v0, v3, Lcom/coremobility/c/ah;->d:Lcom/coremobility/g/b;

    const/high16 v4, 0x6

    invoke-virtual {v0, v4, v3}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    iget-object v0, v3, Lcom/coremobility/c/ah;->f:Lcom/coremobility/c/a;

    invoke-virtual {v0}, Lcom/coremobility/c/a;->a()V

    iget-object v0, v3, Lcom/coremobility/c/ah;->g:Lcom/coremobility/c/b;

    invoke-virtual {v0}, Lcom/coremobility/c/b;->a()V

    iget-object v0, v3, Lcom/coremobility/c/ah;->k:Lcom/coremobility/c/aj;

    invoke-virtual {v0, v3}, Lcom/coremobility/c/aj;->a(Lcom/coremobility/c/ah;)V

    invoke-static {}, Lcom/coremobility/g/j;->a()Lcom/coremobility/g/j;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/c/ah;->a:Lcom/coremobility/g/j;

    iput-object v3, v3, Lcom/coremobility/c/ah;->b:Lcom/coremobility/c/ah;

    iget-object v0, v3, Lcom/coremobility/c/ah;->a:Lcom/coremobility/g/j;

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/g/j;->a(Lcom/coremobility/g/h;I)V

    invoke-static {}, Lcom/coremobility/c/c;->a()V

    move v0, v2

    :goto_2
    const/4 v4, 0x2

    if-ge v0, v4, :cond_3

    iget-object v4, v3, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3, v0}, Lcom/coremobility/c/d;->a(Lcom/coremobility/c/ah;I)V

    iget-object v4, v3, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/coremobility/c/d;->g()S

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Lcom/coremobility/c/d;->a(Z)V

    iget-object v4, v3, Lcom/coremobility/c/ah;->d:Lcom/coremobility/g/b;

    const v5, 0x60001

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_0
    iget-object v4, v3, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3, v0}, Lcom/coremobility/c/ad;->a(Lcom/coremobility/c/ah;I)V

    iget-object v4, v3, Lcom/coremobility/c/ah;->i:[Lcom/coremobility/c/aa;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3, v0}, Lcom/coremobility/c/aa;->a(Lcom/coremobility/c/ah;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/coremobility/c/c;->b()V

    :cond_4
    sget-object v0, Lcom/coremobility/c/ah;->q:Lcom/coremobility/c/ah;

    return-object v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/c/ah;->q:Lcom/coremobility/c/ah;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/coremobility/c/ap;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/ah;->e:[Lcom/coremobility/c/ap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(ILjava/lang/Object;II)V
    .locals 10

    const v9, 0x60001

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-boolean v0, Lcom/coremobility/c/c;->a:Z

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/coremobility/c/c;->a:Z

    move v0, v3

    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/coremobility/c/ah;->i:[Lcom/coremobility/c/aa;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/coremobility/c/aa;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/c/ah;->l:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coremobility/c/ah;->l:[Z

    aput-boolean v3, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_5

    if-ge v4, v5, :cond_5

    move v0, v2

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/coremobility/c/d;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-direct {v0, v8}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Lcom/coremobility/c/d;->a(Lcom/coremobility/integration/h/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget-object v1, p0, Lcom/coremobility/c/ah;->d:Lcom/coremobility/g/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v9, v5, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    if-eqz v0, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v1, v0, Lcom/coremobility/c/am;->f:I

    invoke-static {v1}, Lcom/coremobility/c/ah;->e(I)Z

    move-result v1

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v5, v0, Lcom/coremobility/c/am;->f:I

    iget-object v1, p0, Lcom/coremobility/c/ah;->e:[Lcom/coremobility/c/ap;

    aget-object v1, v1, v5

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/coremobility/c/am;->g:I

    packed-switch v1, :pswitch_data_0

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->a()V

    :cond_3
    :goto_6
    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->f()I

    move-result v0

    if-nez v0, :cond_4

    :cond_4
    :goto_7
    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->g()S

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/coremobility/c/d;->a(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    move v1, v3

    goto :goto_5

    :pswitch_0
    new-instance v6, Lcom/coremobility/c/ao;

    invoke-direct {v6}, Lcom/coremobility/c/ao;-><init>()V

    iget-object v1, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    iput-object v1, v6, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    iget v1, v0, Lcom/coremobility/c/am;->d:I

    iput v1, v6, Lcom/coremobility/c/ao;->b:I

    iget-short v1, v0, Lcom/coremobility/c/am;->b:S

    iput v1, v6, Lcom/coremobility/c/ao;->c:I

    iput-object v8, v6, Lcom/coremobility/c/ao;->d:[B

    new-instance v1, Lcom/coremobility/integration/h/d;

    invoke-direct {v1, v8}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v7, v7, v4

    invoke-virtual {v7, v0, v1}, Lcom/coremobility/c/d;->a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->a()V

    goto :goto_6

    :cond_8
    iget-object v1, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v1, [B

    iput-object v1, v6, Lcom/coremobility/c/ao;->d:[B

    iget-object v1, p0, Lcom/coremobility/c/ah;->e:[Lcom/coremobility/c/ap;

    aget-object v1, v1, v5

    iget-byte v7, v0, Lcom/coremobility/c/am;->i:B

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    iget-byte v0, v0, Lcom/coremobility/c/am;->h:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/coremobility/c/ap;->a(Lcom/coremobility/c/ao;Ljava/lang/Byte;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->a()V

    :goto_8
    iget-object v0, v6, Lcom/coremobility/c/ao;->d:[B

    if-eqz v0, :cond_3

    iput-object v8, v6, Lcom/coremobility/c/ao;->d:[B

    goto :goto_6

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->a()V

    goto :goto_8

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/c/ah;->m:[Z

    aput-boolean v2, v0, v5

    goto :goto_8

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->a()V

    invoke-virtual {p0, v6, v5}, Lcom/coremobility/c/ah;->a(Lcom/coremobility/c/ao;I)Z

    iput-object v8, v6, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    goto :goto_8

    :pswitch_4
    iget-byte v1, v0, Lcom/coremobility/c/am;->i:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    iget-byte v0, v0, Lcom/coremobility/c/am;->h:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->a()V

    goto/16 :goto_6

    :pswitch_5
    iget-byte v1, v0, Lcom/coremobility/c/am;->i:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    iget-byte v0, v0, Lcom/coremobility/c/am;->h:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->a()V

    goto/16 :goto_6

    :pswitch_6
    iget-byte v1, v0, Lcom/coremobility/c/am;->i:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    iget-byte v0, v0, Lcom/coremobility/c/am;->h:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->a()V

    goto/16 :goto_6

    :cond_9
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/d;->a()V

    goto/16 :goto_7

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_b

    if-ge v1, v5, :cond_b

    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/coremobility/c/ad;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->g()S

    move-result v0

    if-eqz v0, :cond_c

    :goto_a
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->i:[Lcom/coremobility/c/aa;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/coremobility/c/aa;->e()V

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto :goto_9

    :cond_c
    move v2, v3

    goto :goto_a

    :sswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_d

    if-ge v0, v5, :cond_d

    :goto_b
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/c/ah;->i:[Lcom/coremobility/c/aa;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/coremobility/c/aa;->e()V

    goto/16 :goto_0

    :cond_d
    move v2, v3

    goto :goto_b

    nop

    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_0
        0x60001 -> :sswitch_1
        0x60002 -> :sswitch_2
        0x60003 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/c/ap;)V
    .locals 2

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {v1}, Lcom/coremobility/c/ah;->e(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->e:[Lcom/coremobility/c/ap;

    aput-object p1, v0, v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/c/al;

    invoke-direct {v0}, Lcom/coremobility/c/al;-><init>()V

    invoke-virtual {v0, p1}, Lcom/coremobility/c/al;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/coremobility/c/al;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coremobility/c/ah;->f:Lcom/coremobility/c/a;

    invoke-virtual {v3, v0}, Lcom/coremobility/c/a;->a(Lcom/coremobility/c/al;)V

    iget-object v3, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v3, v3, p3

    invoke-virtual {v3, v0}, Lcom/coremobility/c/d;->b(Lcom/coremobility/c/al;)V

    iget-object v3, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v3, v3, p3

    invoke-virtual {v3, v0}, Lcom/coremobility/c/ad;->b(Lcom/coremobility/c/al;)V

    iget-object v3, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v3, v3, p3

    invoke-virtual {v3, v0}, Lcom/coremobility/c/d;->a(Lcom/coremobility/c/al;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/coremobility/c/al;->a()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/coremobility/c/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, p3

    invoke-virtual {v0, v1}, Lcom/coremobility/c/d;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->d:Lcom/coremobility/g/b;

    const v1, 0x60001

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public final a(Lcom/coremobility/c/ao;I)Z
    .locals 7

    const v6, 0x60002

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p1, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p1, Lcom/coremobility/c/ao;->c:I

    const v3, 0xffff

    if-gt v0, v3, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {p2}, Lcom/coremobility/c/ah;->e(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/c/al;

    invoke-direct {v0}, Lcom/coremobility/c/al;-><init>()V

    new-instance v3, Lcom/coremobility/c/am;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0}, Lcom/coremobility/c/am;-><init>(Lcom/coremobility/c/al;)V

    iput v2, v3, Lcom/coremobility/c/am;->g:I

    iput p2, v3, Lcom/coremobility/c/am;->f:I

    iget-object v0, p1, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    iget v0, p1, Lcom/coremobility/c/ao;->b:I

    iput v0, v3, Lcom/coremobility/c/am;->d:I

    iget v0, p1, Lcom/coremobility/c/ao;->c:I

    int-to-short v0, v0

    iput-short v0, v3, Lcom/coremobility/c/am;->b:S

    iput-byte v2, v3, Lcom/coremobility/c/am;->i:B

    iput-byte v2, v3, Lcom/coremobility/c/am;->h:B

    sget-object v0, Lcom/coremobility/c/ah;->o:[I

    aget v4, v0, p2

    if-ltz v4, :cond_3

    const/4 v0, 0x2

    if-ge v4, v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->g()S

    move-result v0

    const/4 v5, 0x3

    if-ge v0, v5, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p1, Lcom/coremobility/c/ao;->c:I

    add-int/lit8 v0, v0, 0x31

    iget-object v5, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/coremobility/c/ad;->e()I

    move-result v5

    if-le v0, v5, :cond_5

    iget-object v0, p0, Lcom/coremobility/c/ah;->l:[Z

    aput-boolean v1, v0, p2

    :goto_5
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-direct {v0, v3}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v3, v3, v4

    iget-object v5, p1, Lcom/coremobility/c/ao;->d:[B

    invoke-virtual {v3, v0, v5}, Lcom/coremobility/c/ad;->a(Lcom/coremobility/integration/h/d;[B)Z

    iget-object v0, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    :goto_6
    iget-object v0, p0, Lcom/coremobility/c/ah;->d:Lcom/coremobility/g/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    move v2, v1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/coremobility/c/ad;->a(Z)V

    goto :goto_6
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 7

    const/16 v6, 0x1a

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    move v0, v1

    :goto_1
    const-string v3, "70"

    invoke-virtual {p1, v2, v3, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "q%d cancel reset"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v6, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/c/ah;->c:Lcom/coremobility/integration/a/a;

    add-int/lit16 v0, v0, 0x15a0

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/a/a;->b(I)V

    move v1, v2

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_1

    :pswitch_3
    move v0, v1

    goto :goto_1

    :cond_1
    const-string v3, "71"

    invoke-virtual {p1, v2, v3, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "q%d will reset"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v6, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/c/ah;->c:Lcom/coremobility/integration/a/a;

    add-int/lit16 v0, v0, 0x15a0

    invoke-virtual {v1, v0, v2}, Lcom/coremobility/integration/a/a;->a(II)Z

    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b(I)Lcom/coremobility/c/d;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/ah;->h:[Lcom/coremobility/c/d;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/c/ah;->c:Lcom/coremobility/integration/a/a;

    add-int/lit16 v2, v0, 0x15a0

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/a/a;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)Lcom/coremobility/c/ad;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/ah;->j:[Lcom/coremobility/c/ad;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/c/ah;->i:[Lcom/coremobility/c/aa;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/coremobility/c/aa;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x6

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    return-void
.end method

.method public final d(I)Z
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/ah;->m:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public final e()Lcom/coremobility/c/a;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/ah;->f:Lcom/coremobility/c/a;

    return-object v0
.end method

.method public final f()Lcom/coremobility/c/b;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/ah;->g:Lcom/coremobility/c/b;

    return-object v0
.end method

.method public final g()Lcom/coremobility/c/ai;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/ah;->n:Lcom/coremobility/c/ai;

    return-object v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/ah;->a:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->e()V

    return-void
.end method

.method public final i()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/c/ah;->b:Lcom/coremobility/c/ah;

    iget-object v1, v1, Lcom/coremobility/c/ah;->i:[Lcom/coremobility/c/aa;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/coremobility/c/aa;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/c/ah;->a:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->e()V

    return-void
.end method
