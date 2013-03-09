.class public final Lcom/coremobility/h/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/a;
.implements Lcom/coremobility/integration/t;


# static fields
.field private static q:Ljava/lang/String;


# instance fields
.field a:Lcom/coremobility/f/b;

.field private b:Lcom/coremobility/integration/a/a;

.field private c:Lcom/coremobility/g/b;

.field private d:Lcom/coremobility/h/u;

.field private e:Lcom/coremobility/g/m;

.field private f:[Lcom/coremobility/j/a;

.field private g:Ljava/lang/String;

.field private h:Lcom/coremobility/j/e;

.field private i:I

.field private j:Z

.field private k:I

.field private l:[B

.field private m:I

.field private n:Lcom/coremobility/h/ab;

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/coremobility/j/a;

    iput-object v0, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x32

    const-string v1, "Release Http request"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    invoke-virtual {v0}, Lcom/coremobility/j/e;->d()V

    iput-object v3, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    :cond_0
    iput-object v3, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/h/z;->l:[B

    iput-object v3, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iput v4, p0, Lcom/coremobility/h/z;->o:I

    const v0, 0x3c0001

    invoke-static {v0, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/coremobility/h/z;->j:Z

    new-instance v0, Lcom/coremobility/h/i;

    invoke-direct {v0}, Lcom/coremobility/h/i;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;I[BII)I
    .locals 9

    const/16 v3, 0x2a

    const/16 v8, 0x1801

    const/16 v7, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/coremobility/h/j;

    invoke-direct {v0, p1, p6, p3, p2}, Lcom/coremobility/h/j;-><init>(IIILjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v8, v2, v2}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v4

    long-to-int v4, v4

    if-lez v0, :cond_6

    sub-int v0, v4, v0

    iget-object v4, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/16 v5, 0x1802

    const v6, 0xa8c0

    invoke-virtual {v4, v5, v2, v6}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v4

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/a/a;->b(I)V

    iget-object v0, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    iget v4, p0, Lcom/coremobility/h/z;->i:I

    add-int/lit16 v4, v4, 0x1820

    invoke-virtual {v0, v4}, Lcom/coremobility/integration/a/a;->a(I)V

    :cond_1
    :goto_1
    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_c

    const/16 v0, 0x133

    if-gt p1, v0, :cond_c

    :cond_2
    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v3, "Retry-After"

    invoke-virtual {v0, v3}, Lcom/coremobility/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+RST  RetryAfter "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_8

    move-object v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x12d

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v4, "Location"

    invoke-virtual {v0, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/coremobility/h/p;

    invoke-direct {v4, v0}, Lcom/coremobility/h/p;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    iget v5, p0, Lcom/coremobility/h/z;->i:I

    add-int/lit16 v5, v5, 0x1820

    const-string v6, ""

    invoke-virtual {v0, v5, v2, v6}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    iget v6, p0, Lcom/coremobility/h/z;->i:I

    add-int/lit16 v6, v6, 0x1820

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v5, v6, v2, v4, v0}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    :cond_3
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    move v0, v1

    :goto_4
    if-nez v0, :cond_b

    :goto_5
    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    invoke-virtual {v0, p1, v1}, Lcom/coremobility/h/u;->a(IZ)V

    :cond_4
    :goto_6
    return p6

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v8, v4}, Lcom/coremobility/integration/a/a;->a(II)Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/a/a;->b(I)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "null"

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_5

    :cond_c
    if-ne p1, v3, :cond_e

    iget-boolean v0, p0, Lcom/coremobility/h/z;->p:Z

    if-nez v0, :cond_d

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iput-boolean v1, p0, Lcom/coremobility/h/z;->p:Z

    const-string v0, "CM+RST handle sending timeout"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/h/aa;->h:[Ljava/lang/String;

    iget v1, p0, Lcom/coremobility/h/z;->i:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/coremobility/h/z;->i:I

    iget-object v2, p0, Lcom/coremobility/h/z;->a:Lcom/coremobility/f/b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/coremobility/h/z;->a(Ljava/lang/String;ILcom/coremobility/f/b;)Z

    goto :goto_6

    :cond_d
    move v0, v2

    goto :goto_7

    :cond_e
    const/16 v0, 0x191

    if-eq p1, v0, :cond_f

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    invoke-virtual {v0}, Lcom/coremobility/j/e;->g()Lcom/coremobility/j/a;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v4, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    iget v5, p0, Lcom/coremobility/h/z;->i:I

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    iget v4, p0, Lcom/coremobility/h/z;->i:I

    aget-object v0, v0, v4

    iget v4, p0, Lcom/coremobility/h/z;->i:I

    add-int/lit8 v4, v4, 0x21

    invoke-virtual {v0, v4}, Lcom/coremobility/j/a;->b(I)Z

    iget-object v0, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    iget v4, p0, Lcom/coremobility/h/z;->i:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/j/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, -0x1

    move v4, v1

    :goto_8
    const/16 v5, 0x191

    if-ne p1, v5, :cond_11

    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iget-boolean v1, p0, Lcom/coremobility/h/z;->p:Z

    if-eqz v1, :cond_10

    iput-boolean v2, p0, Lcom/coremobility/h/z;->p:Z

    if-nez v4, :cond_10

    move v0, v3

    :cond_10
    iget-object v1, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    invoke-virtual {v1, v0, v4}, Lcom/coremobility/h/u;->a(IZ)V

    goto/16 :goto_6

    :cond_11
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_13

    const-string v0, "server error"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iget-boolean v0, p0, Lcom/coremobility/h/z;->p:Z

    if-eqz v0, :cond_12

    iput-boolean v2, p0, Lcom/coremobility/h/z;->p:Z

    :cond_12
    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    invoke-virtual {v0, p1, v2}, Lcom/coremobility/h/u;->a(IZ)V

    goto/16 :goto_6

    :cond_13
    const/16 v0, 0x190

    if-lt p1, v0, :cond_15

    const/16 v0, 0x1a1

    if-gt p1, v0, :cond_15

    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iget-boolean v0, p0, Lcom/coremobility/h/z;->p:Z

    if-eqz v0, :cond_14

    iput-boolean v2, p0, Lcom/coremobility/h/z;->p:Z

    :cond_14
    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    invoke-virtual {v0, p1, v2}, Lcom/coremobility/h/u;->a(IZ)V

    goto/16 :goto_6

    :cond_15
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_16

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_16

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_19

    :cond_16
    move v0, v1

    :goto_9
    const/16 v4, 0x3c

    if-lt p1, v4, :cond_17

    if-nez v0, :cond_1a

    :cond_17
    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iget-boolean v0, p0, Lcom/coremobility/h/z;->p:Z

    if-eqz v0, :cond_18

    iput-boolean v2, p0, Lcom/coremobility/h/z;->p:Z

    :cond_18
    if-eq p1, v1, :cond_4

    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    invoke-virtual {v0, p1, v2}, Lcom/coremobility/h/u;->a(IZ)V

    goto/16 :goto_6

    :cond_19
    move v0, v2

    goto :goto_9

    :cond_1a
    iget-boolean v0, p0, Lcom/coremobility/h/z;->p:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iput-boolean v2, p0, Lcom/coremobility/h/z;->p:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+RST handle sending timeout, get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    invoke-virtual {v0, v3, v2}, Lcom/coremobility/h/u;->a(IZ)V

    goto/16 :goto_6

    :cond_1b
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1c

    const/16 v0, 0xcc

    if-gt p1, v0, :cond_1e

    :cond_1c
    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    invoke-virtual {v0, p4, p5, p6, p3}, Lcom/coremobility/h/u;->a([BIII)I

    move-result p6

    iget v0, p0, Lcom/coremobility/h/z;->o:I

    add-int/2addr v0, p6

    iput v0, p0, Lcom/coremobility/h/z;->o:I

    iget v0, p0, Lcom/coremobility/h/z;->o:I

    if-gt v0, p3, :cond_1d

    :goto_a
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/h/z;->o:I

    if-ne v0, p3, :cond_4

    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    goto/16 :goto_6

    :cond_1d
    move v1, v2

    goto :goto_a

    :cond_1e
    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Other http error status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    invoke-virtual {v0, p1, v2}, Lcom/coremobility/h/u;->a(IZ)V

    goto/16 :goto_6

    :cond_1f
    move v0, p1

    move v4, v2

    goto/16 :goto_8

    :cond_20
    move v1, v2

    goto/16 :goto_5
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/coremobility/h/z;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/coremobility/h/u;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;II)V
    .locals 10

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/h/u;->a(IZ)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/coremobility/h/z;->i:I

    add-int/lit16 v1, v1, 0x1820

    iget-object v2, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v2, v1, v3, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x1800

    const/4 v2, 0x0

    sget-object v3, Lcom/coremobility/h/z;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/h/s;

    iget v1, p0, Lcom/coremobility/h/z;->k:I

    if-nez v1, :cond_3

    const/16 v1, 0x67

    :goto_1
    invoke-direct {v3, v1, v2}, Lcom/coremobility/h/s;-><init>(CLjava/lang/String;)V

    invoke-static {v3}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v1, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v1, Lcom/coremobility/j/e;

    invoke-direct {v1}, Lcom/coremobility/j/e;-><init>()V

    iput-object v1, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v1, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget v3, p0, Lcom/coremobility/h/z;->k:I

    invoke-virtual {v1, v3, v2}, Lcom/coremobility/j/e;->a(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REST http init fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/h/z;->d()V

    iget-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/h/u;->a(IZ)V

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x70

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/16 v3, 0x12

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/16 v4, 0xf

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/16 v5, 0x11

    const/4 v6, 0x0

    const-string v7, "Sprint"

    invoke-virtual {v4, v5, v6, v7}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/4 v7, 0x4

    const/4 v8, 0x1

    const-string v9, ""

    invoke-virtual {v6, v7, v8, v9}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/4 v7, 0x6

    const/4 v8, 0x1

    const-string v9, ""

    invoke-virtual {v6, v7, v8, v9}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-string v9, ""

    invoke-virtual {v6, v7, v8, v9}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v8, "Carrier"

    invoke-virtual {v7, v8, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v7, "ESN"

    invoke-virtual {v4, v7, v6}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v6, "MEID"

    invoke-virtual {v4, v6, v2}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v4, "MSID"

    invoke-virtual {v2, v4, v3}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v3, "NAI-1"

    invoke-virtual {v2, v3, v5}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v3, "MDN"

    invoke-virtual {v2, v3, v1}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v3, "SM-REST"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v3, "Q-ID"

    sget-object v4, Lcom/coremobility/h/aa;->h:[Ljava/lang/String;

    iget v5, p0, Lcom/coremobility/h/z;->i:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v3, "AND-MDN"

    invoke-static {}, Lcom/coremobility/integration/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    iget v3, p0, Lcom/coremobility/h/z;->i:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    iget v2, p0, Lcom/coremobility/h/z;->i:I

    add-int/lit16 v2, v2, 0x1840

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/16 v0, 0x32

    const-string v2, "CM+RST no pwd key"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v3, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    iget v4, p0, Lcom/coremobility/h/z;->i:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1, v0}, Lcom/coremobility/j/e;->a(Lcom/coremobility/j/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/coremobility/h/z;->l:[B

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/coremobility/h/z;->l:[B

    array-length v0, v0

    :goto_4
    if-lez v0, :cond_e

    iget-object v2, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v0, v3}, Lcom/coremobility/j/e;->b(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v3, p0, Lcom/coremobility/h/z;->l:[B

    invoke-virtual {v2, v3, v0}, Lcom/coremobility/j/e;->a([BI)V

    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/coremobility/h/z;->a:Lcom/coremobility/f/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/h/z;->a:Lcom/coremobility/f/b;

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/coremobility/f/a;->a(Lcom/coremobility/f/b;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const-string v2, "dynaTrace"

    invoke-virtual {v1, v2, v0}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/j/e;->a(Lcom/coremobility/integration/t;Z)V

    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v1, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/16 v2, 0x1300

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/j/e;->f(I)V

    new-instance v0, Lcom/coremobility/h/h;

    invoke-direct {v0}, Lcom/coremobility/h/h;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    invoke-virtual {v0}, Lcom/coremobility/j/e;->e()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    const/16 v0, 0x32

    const-string v2, "CM+RST empty pwd key"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    const/16 v3, 0x40

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    if-gt v3, v2, :cond_c

    const/16 v0, 0x32

    const-string v2, "CM+RST pwd key too big"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/g/a;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/g/a;->a([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_6

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v2, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iget-object v2, v2, Lcom/coremobility/h/ab;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iget-object v3, v3, Lcom/coremobility/h/ab;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iget v4, v4, Lcom/coremobility/h/ab;->b:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iget v0, v0, Lcom/coremobility/h/ab;->b:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget v0, v0, Lcom/coremobility/j/e;->H:I

    new-array v2, v0, [B

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First Body: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v5, v5, Lcom/coremobility/j/e;->F:[B

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v3, v3, Lcom/coremobility/j/e;->F:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v6, v6, Lcom/coremobility/j/e;->F:[B

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v3, v3, Lcom/coremobility/j/e;->F:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x0

    const/16 v4, 0x32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position after first part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iget-object v4, v4, Lcom/coremobility/h/ab;->d:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iget v6, v6, Lcom/coremobility/h/ab;->b:I

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iget v4, v4, Lcom/coremobility/h/ab;->b:I

    add-int/2addr v3, v4

    const/16 v4, 0x32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position after audio part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v4, v4, Lcom/coremobility/j/e;->G:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iget-object v6, v6, Lcom/coremobility/j/e;->G:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send buffer length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    invoke-virtual {v3, v2, v0}, Lcom/coremobility/j/e;->a([BI)V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x3c0001
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;ILcom/coremobility/f/b;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {p2}, Lcom/coremobility/h/aa;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-boolean v0, p0, Lcom/coremobility/h/z;->j:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/h/q;

    invoke-direct {v0, p2, p1}, Lcom/coremobility/h/q;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iput p2, p0, Lcom/coremobility/h/z;->i:I

    iput v2, p0, Lcom/coremobility/h/z;->k:I

    iput-object p1, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    iput-object v4, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iput-object p3, p0, Lcom/coremobility/h/z;->a:Lcom/coremobility/f/b;

    iput-boolean v1, p0, Lcom/coremobility/h/z;->j:Z

    iget-object v0, p0, Lcom/coremobility/h/z;->c:Lcom/coremobility/g/b;

    const v3, 0x3c0001

    invoke-virtual {v0, v3, v4, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Lcom/coremobility/h/ab;ILcom/coremobility/f/b;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {p3}, Lcom/coremobility/h/aa;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-boolean v0, p0, Lcom/coremobility/h/z;->j:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/z;->l:[B

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/h/r;

    iget v3, p2, Lcom/coremobility/h/ab;->b:I

    iget-object v4, p2, Lcom/coremobility/h/ab;->c:Ljava/lang/String;

    iget-object v5, p2, Lcom/coremobility/h/ab;->a:Ljava/lang/String;

    invoke-direct {v0, p3, v3, v4, v5}, Lcom/coremobility/h/r;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iput p3, p0, Lcom/coremobility/h/z;->i:I

    iput v1, p0, Lcom/coremobility/h/z;->k:I

    iput-object p1, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iput-object v6, p0, Lcom/coremobility/h/z;->l:[B

    iput-object p4, p0, Lcom/coremobility/h/z;->a:Lcom/coremobility/f/b;

    iput-boolean v1, p0, Lcom/coremobility/h/z;->j:Z

    iget-object v0, p0, Lcom/coremobility/h/z;->c:Lcom/coremobility/g/b;

    const v3, 0x3c0001

    invoke-virtual {v0, v3, v6, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return v1

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
    move v0, v2

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;[BILcom/coremobility/f/b;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p3, p0, Lcom/coremobility/h/z;->i:I

    iput-object p1, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/h/z;->k:I

    iput-object p2, p0, Lcom/coremobility/h/z;->l:[B

    iput-object v4, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iput-object p4, p0, Lcom/coremobility/h/z;->a:Lcom/coremobility/f/b;

    iput-boolean v3, p0, Lcom/coremobility/h/z;->j:Z

    iget-object v0, p0, Lcom/coremobility/h/z;->c:Lcom/coremobility/g/b;

    const v1, 0x3c0001

    invoke-virtual {v0, v1, v4, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return v3
.end method

.method public final b()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    sget-boolean v0, Lcom/coremobility/a/b;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "https://locator1.corevm.com:443/locator/"

    sput-object v0, Lcom/coremobility/h/z;->q:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/h/z;->c:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/h/u;->a()Lcom/coremobility/h/u;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/h/z;->d:Lcom/coremobility/h/u;

    invoke-static {}, Lcom/coremobility/g/m;->a()Lcom/coremobility/g/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/h/z;->e:Lcom/coremobility/g/m;

    iput-boolean v1, p0, Lcom/coremobility/h/z;->j:Z

    iput-object v5, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    iput-object v5, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    iput-object v5, p0, Lcom/coremobility/h/z;->l:[B

    iput v1, p0, Lcom/coremobility/h/z;->m:I

    iput-object v5, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iput-boolean v1, p0, Lcom/coremobility/h/z;->p:Z

    iput v1, p0, Lcom/coremobility/h/z;->o:I

    iget-object v0, p0, Lcom/coremobility/h/z;->c:Lcom/coremobility/g/b;

    const/high16 v2, 0x3c

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    move v0, v1

    :goto_1
    if-gtz v0, :cond_2

    iget-object v2, p0, Lcom/coremobility/h/z;->b:Lcom/coremobility/integration/a/a;

    const/16 v3, 0x1820

    const-string v4, ""

    invoke-virtual {v2, v3, v1, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    new-instance v3, Lcom/coremobility/j/a;

    invoke-direct {v3}, Lcom/coremobility/j/a;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    aget-object v2, v2, v1

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/coremobility/j/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    aput-object v5, v2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "https://locator2.corevm.com:443/locator/"

    sput-object v0, Lcom/coremobility/h/z;->q:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;ILcom/coremobility/f/b;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput p2, p0, Lcom/coremobility/h/z;->i:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/coremobility/h/z;->k:I

    iput-object p1, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/h/z;->l:[B

    iput-object v2, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iput-object p3, p0, Lcom/coremobility/h/z;->a:Lcom/coremobility/f/b;

    iput-boolean v4, p0, Lcom/coremobility/h/z;->j:Z

    iget-object v0, p0, Lcom/coremobility/h/z;->c:Lcom/coremobility/g/b;

    const v1, 0x3c0001

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return v4
.end method

.method public final b(Ljava/lang/String;[BILcom/coremobility/f/b;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {p3}, Lcom/coremobility/h/aa;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-boolean v0, p0, Lcom/coremobility/h/z;->j:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/z;->l:[B

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/h/r;

    array-length v3, p2

    invoke-direct {v0, p3, v3}, Lcom/coremobility/h/r;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iput p3, p0, Lcom/coremobility/h/z;->i:I

    iput v1, p0, Lcom/coremobility/h/z;->k:I

    iput-object p1, p0, Lcom/coremobility/h/z;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/coremobility/h/z;->l:[B

    iput-object v4, p0, Lcom/coremobility/h/z;->n:Lcom/coremobility/h/ab;

    iput-object p4, p0, Lcom/coremobility/h/z;->a:Lcom/coremobility/f/b;

    iput-boolean v1, p0, Lcom/coremobility/h/z;->j:Z

    iget-object v0, p0, Lcom/coremobility/h/z;->c:Lcom/coremobility/g/b;

    const v3, 0x3c0001

    invoke-virtual {v0, v3, v4, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return v1

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
    move v0, v2

    goto :goto_5
.end method

.method public final c()V
    .locals 4

    const/4 v1, 0x0

    const/high16 v0, 0x3c

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    move v0, v1

    :goto_0
    if-gtz v0, :cond_1

    iget-object v2, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/h/z;->f:[Lcom/coremobility/j/a;

    aget-object v2, v2, v1

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/coremobility/j/a;->b(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/h/z;->h:Lcom/coremobility/j/e;

    if-eqz v0, :cond_2

    const/16 v0, 0x4b4

    invoke-virtual {p0, v0}, Lcom/coremobility/h/z;->a(I)V

    :cond_2
    return-void
.end method
