.class public final Lcom/coremobility/e/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/a;
.implements Lcom/coremobility/i/a;
.implements Lcom/coremobility/integration/t;


# static fields
.field private static r:Ljava/lang/String;


# instance fields
.field a:Lcom/coremobility/integration/a/a;

.field b:Lcom/coremobility/g/b;

.field c:Lcom/coremobility/e/y;

.field d:Lcom/coremobility/g/m;

.field e:[Lcom/coremobility/j/a;

.field f:Lcom/coremobility/j/b;

.field g:Lcom/coremobility/j/e;

.field h:Ljava/lang/String;

.field i:[B

.field j:I

.field k:I

.field l:Z

.field m:I

.field n:I

.field o:I

.field p:Z

.field q:Lcom/coremobility/f/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/coremobility/j/a;

    iput-object v0, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    invoke-virtual {v0}, Lcom/coremobility/j/e;->d()V

    iput-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    :cond_0
    iput-object v2, p0, Lcom/coremobility/e/ag;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/e/ag;->i:[B

    iput v1, p0, Lcom/coremobility/e/ag;->m:I

    iput v1, p0, Lcom/coremobility/e/ag;->n:I

    iput v1, p0, Lcom/coremobility/e/ag;->o:I

    const v0, 0xe0001

    invoke-static {v0, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/coremobility/e/ag;->l:Z

    new-instance v0, Lcom/coremobility/e/h;

    invoke-direct {v0}, Lcom/coremobility/e/h;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;I[BII)I
    .locals 9

    const/16 v3, 0x2a

    const/16 v8, 0x1301

    const/16 v7, 0x21

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/coremobility/e/i;

    invoke-direct {v0, p1, p6, p3, p2}, Lcom/coremobility/e/i;-><init>(IIILjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return p6

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x1e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v8, v2, v2}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v4

    long-to-int v4, v4

    if-lez v0, :cond_9

    sub-int v0, v4, v0

    iget-object v4, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/16 v5, 0x1302

    const v6, 0xa8c0

    invoke-virtual {v4, v5, v2, v6}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v4

    if-le v0, v4, :cond_4

    iget-object v0, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/a/a;->b(I)V

    iget-object v0, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    iget v4, p0, Lcom/coremobility/e/ag;->k:I

    add-int/lit16 v4, v4, 0x1320

    invoke-virtual {v0, v4}, Lcom/coremobility/integration/a/a;->a(I)V

    :cond_4
    :goto_2
    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_10

    const/16 v0, 0x133

    if-gt p1, v0, :cond_10

    :cond_5
    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v3, "Retry-After"

    invoke-virtual {v0, v3}, Lcom/coremobility/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+MMT  RetryAfter "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_b

    move-object v0, v3

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x12d

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v4, "Location"

    invoke-virtual {v0, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/coremobility/e/s;

    invoke-direct {v4, v0}, Lcom/coremobility/e/s;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-eqz v0, :cond_7

    iget v4, p0, Lcom/coremobility/e/ag;->j:I

    if-nez v4, :cond_6

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v4, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    iget v5, p0, Lcom/coremobility/e/ag;->k:I

    add-int/lit16 v5, v5, 0x1320

    const-string v6, ""

    invoke-virtual {v4, v5, v2, v6}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    iget v6, p0, Lcom/coremobility/e/ag;->k:I

    add-int/lit16 v6, v6, 0x1320

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v1

    :goto_4
    invoke-virtual {v5, v6, v2, v0, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    :cond_7
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    move v0, v1

    :goto_5
    if-nez v0, :cond_e

    move v0, v1

    :goto_6
    invoke-direct {p0}, Lcom/coremobility/e/ag;->c()V

    iget-boolean v4, p0, Lcom/coremobility/e/ag;->p:Z

    if-eqz v4, :cond_8

    iput-boolean v2, p0, Lcom/coremobility/e/ag;->p:Z

    :cond_8
    iget-object v4, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {v4, p1, v0}, Lcom/coremobility/e/y;->a(IZ)V

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    :goto_7
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    sget-object v1, Lcom/coremobility/e/ah;->k:[Ljava/lang/String;

    iget v2, p0, Lcom/coremobility/e/ag;->k:I

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1, v3}, Lcom/coremobility/e/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v8, v4}, Lcom/coremobility/integration/a/a;->a(II)Z

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/a/a;->b(I)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "null"

    goto/16 :goto_3

    :cond_c
    move v4, v2

    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    move v0, v2

    goto :goto_6

    :cond_f
    move v1, v2

    goto :goto_7

    :cond_10
    if-ne p1, v3, :cond_12

    iget-boolean v0, p0, Lcom/coremobility/e/ag;->p:Z

    if-nez v0, :cond_11

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/e/ag;->c()V

    iput-boolean v1, p0, Lcom/coremobility/e/ag;->p:Z

    const-string v0, "CM+MMT handle sending timeout"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/e/ah;->k:[Ljava/lang/String;

    iget v1, p0, Lcom/coremobility/e/ag;->k:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/coremobility/e/ag;->k:I

    iget-object v2, p0, Lcom/coremobility/e/ag;->q:Lcom/coremobility/f/b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/coremobility/e/ag;->a(Ljava/lang/String;ILcom/coremobility/f/b;)V

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto :goto_8

    :cond_12
    const/16 v0, 0x191

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    iget v4, p0, Lcom/coremobility/e/ag;->k:I

    iget-object v5, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    invoke-virtual {v5}, Lcom/coremobility/j/e;->g()Lcom/coremobility/j/a;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v0, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    iget v4, p0, Lcom/coremobility/e/ag;->k:I

    aget-object v0, v0, v4

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    iget v4, p0, Lcom/coremobility/e/ag;->k:I

    aget-object v0, v0, v4

    iget v4, p0, Lcom/coremobility/e/ag;->k:I

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v0, v4}, Lcom/coremobility/j/a;->b(I)Z

    iget-object v0, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    iget v4, p0, Lcom/coremobility/e/ag;->k:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/coremobility/j/a;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, -0x1

    :goto_9
    invoke-direct {p0}, Lcom/coremobility/e/ag;->c()V

    iget-boolean v0, p0, Lcom/coremobility/e/ag;->p:Z

    if-eqz v0, :cond_13

    iput-boolean v2, p0, Lcom/coremobility/e/ag;->p:Z

    if-nez v1, :cond_13

    move p1, v3

    :cond_13
    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {v0, p1, v1}, Lcom/coremobility/e/y;->a(IZ)V

    goto/16 :goto_1

    :cond_14
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_18

    if-lez p1, :cond_16

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-nez p5, :cond_17

    if-nez p6, :cond_17

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/e/ag;->c()V

    iget-boolean v0, p0, Lcom/coremobility/e/ag;->p:Z

    if-eqz v0, :cond_15

    iput-boolean v2, p0, Lcom/coremobility/e/ag;->p:Z

    :cond_15
    if-eq p1, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {v0, p1, v2}, Lcom/coremobility/e/y;->a(IZ)V

    goto/16 :goto_1

    :cond_16
    move v0, v2

    goto :goto_a

    :cond_17
    move v0, v2

    goto :goto_b

    :cond_18
    iget-boolean v0, p0, Lcom/coremobility/e/ag;->p:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/coremobility/e/ag;->c()V

    iput-boolean v2, p0, Lcom/coremobility/e/ag;->p:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+MMT handle sending timeout, get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {v0, v3, v2}, Lcom/coremobility/e/y;->a(IZ)V

    goto/16 :goto_1

    :cond_19
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1c

    move v4, v1

    :goto_c
    if-eqz p2, :cond_1d

    const-string v0, "application/vnd.wap.mms-message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v3, v1

    :goto_d
    if-eqz p4, :cond_1a

    if-lez p6, :cond_1a

    if-lez p3, :cond_1e

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz v4, :cond_1f

    if-eqz v3, :cond_1f

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {v0, p4, p5, p6, p3}, Lcom/coremobility/e/y;->a([BIII)I

    move-result p6

    :goto_f
    iget v0, p0, Lcom/coremobility/e/ag;->o:I

    add-int/2addr v0, p6

    iput v0, p0, Lcom/coremobility/e/ag;->o:I

    :cond_1a
    iget v0, p0, Lcom/coremobility/e/ag;->o:I

    if-gt v0, p3, :cond_21

    :goto_10
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/ag;->o:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v1, "MMS-Ind"

    invoke-virtual {v0, v1}, Lcom/coremobility/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Lcom/coremobility/e/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-direct {p0}, Lcom/coremobility/e/ag;->c()V

    if-nez p3, :cond_22

    if-eqz v4, :cond_22

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {v0}, Lcom/coremobility/e/y;->d()V

    goto/16 :goto_1

    :cond_1c
    move v4, v2

    goto :goto_c

    :cond_1d
    move v3, v2

    goto :goto_d

    :cond_1e
    move v0, v2

    goto :goto_e

    :cond_1f
    const-string v0, "CM+MMT ignoring http resp content:"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v5}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+MMT   type "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_20

    :goto_11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v5}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+MMT   seg size "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v5}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_20
    const-string p2, "null"

    goto :goto_11

    :cond_21
    move v1, v2

    goto :goto_10

    :cond_22
    if-nez v4, :cond_23

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {v0, p1, v2}, Lcom/coremobility/e/y;->a(IZ)V

    goto/16 :goto_1

    :cond_23
    if-nez v3, :cond_24

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/y;->a(IZ)V

    goto/16 :goto_1

    :cond_24
    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {v0}, Lcom/coremobility/e/y;->f()V

    goto/16 :goto_1

    :cond_25
    move v1, v2

    goto/16 :goto_9

    :cond_26
    move v0, v2

    goto/16 :goto_6
.end method

.method public final a(Lcom/coremobility/i/g;)I
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/coremobility/i/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {p1}, Lcom/coremobility/i/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coremobility/i/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coremobility/e/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/coremobility/i/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {p1}, Lcom/coremobility/i/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremobility/e/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-virtual {v0}, Lcom/coremobility/e/y;->e()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/coremobility/e/ag;->l:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/e/ag;->c()V

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/coremobility/e/y;->a(IZ)V

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

    iget v1, p0, Lcom/coremobility/e/ag;->j:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/e/ag;->h:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/coremobility/e/ag;->c()V

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/y;->a(IZ)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coremobility/e/ag;->k:I

    add-int/lit16 v1, v1, 0x1320

    iget-object v2, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v2, v1, v3, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x1300

    const/4 v2, 0x0

    sget-object v3, Lcom/coremobility/e/ag;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :cond_1
    iget v2, p0, Lcom/coremobility/e/ag;->j:I

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/e/ag;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v3, Lcom/coremobility/e/v;

    iget v2, p0, Lcom/coremobility/e/ag;->j:I

    if-nez v2, :cond_3

    const/16 v2, 0x67

    :goto_1
    invoke-direct {v3, v2, v1}, Lcom/coremobility/e/v;-><init>(CLjava/lang/String;)V

    invoke-static {v3}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v2, p0, Lcom/coremobility/e/ag;->f:Lcom/coremobility/j/b;

    if-nez v2, :cond_5

    new-instance v2, Lcom/coremobility/j/e;

    invoke-direct {v2}, Lcom/coremobility/j/e;-><init>()V

    iput-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    :goto_3
    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    iget v3, p0, Lcom/coremobility/e/ag;->j:I

    invoke-virtual {v2, v3, v1}, Lcom/coremobility/j/e;->a(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+MMT http init fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/e/ag;->c()V

    iget-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/y;->a(IZ)V

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x70

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/coremobility/e/ag;->f:Lcom/coremobility/j/b;

    invoke-virtual {v2}, Lcom/coremobility/j/b;->a()Lcom/coremobility/j/e;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/16 v3, 0x12

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/16 v4, 0xf

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/16 v5, 0x11

    const/4 v6, 0x0

    const-string v7, "Sprint"

    invoke-virtual {v4, v5, v6, v7}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

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

    iget-object v6, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/4 v7, 0x6

    const/4 v8, 0x1

    const-string v9, ""

    invoke-virtual {v6, v7, v8, v9}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-string v9, ""

    invoke-virtual {v6, v7, v8, v9}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v8, "Carrier"

    invoke-virtual {v7, v8, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v7, "ESN"

    invoke-virtual {v4, v7, v6}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v6, "MEID"

    invoke-virtual {v4, v6, v2}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v4, "MSID"

    invoke-virtual {v2, v4, v3}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v3, "NAI-1"

    invoke-virtual {v2, v3, v5}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v3, "MDN"

    invoke-virtual {v2, v3, v1}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v3, "CM-MMS"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v3, "Q-ID"

    sget-object v4, Lcom/coremobility/e/ah;->k:[Ljava/lang/String;

    iget v5, p0, Lcom/coremobility/e/ag;->k:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v3, "AND-MDN"

    invoke-static {}, Lcom/coremobility/integration/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    iget v3, p0, Lcom/coremobility/e/ag;->k:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    iget v2, p0, Lcom/coremobility/e/ag;->k:I

    add-int/lit16 v2, v2, 0x1340

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v0, 0x21

    const-string v2, "CM+MMT no pwd key"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    iget-object v3, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    iget v4, p0, Lcom/coremobility/e/ag;->k:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1, v0}, Lcom/coremobility/j/e;->a(Lcom/coremobility/j/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v0, 0x0

    iget v2, p0, Lcom/coremobility/e/ag;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    iget v2, p0, Lcom/coremobility/e/ag;->n:I

    const-string v3, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v2, v3}, Lcom/coremobility/j/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    iget-object v2, p0, Lcom/coremobility/e/ag;->i:[B

    iget v3, p0, Lcom/coremobility/e/ag;->m:I

    invoke-virtual {v0, v2, v3}, Lcom/coremobility/j/e;->a([BI)V

    iget v0, p0, Lcom/coremobility/e/ag;->m:I

    iget v2, p0, Lcom/coremobility/e/ag;->n:I

    if-gt v0, v2, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/ag;->m:I

    iget v2, p0, Lcom/coremobility/e/ag;->n:I

    if-ge v0, v2, :cond_f

    const/4 v0, 0x1

    :cond_9
    :goto_6
    iget-object v2, p0, Lcom/coremobility/e/ag;->q:Lcom/coremobility/f/b;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/coremobility/e/ag;->q:Lcom/coremobility/f/b;

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v2, v1, v3}, Lcom/coremobility/f/a;->a(Lcom/coremobility/f/b;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    const-string v3, "dynaTrace"

    invoke-virtual {v2, v3, v1}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    invoke-virtual {v1, p0, v0}, Lcom/coremobility/j/e;->a(Lcom/coremobility/integration/t;Z)V

    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    iget-object v1, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    const/16 v2, 0x1300

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/j/e;->f(I)V

    new-instance v0, Lcom/coremobility/e/f;

    invoke-direct {v0}, Lcom/coremobility/e/f;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    invoke-virtual {v0}, Lcom/coremobility/j/e;->e()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    const/16 v0, 0x21

    const-string v2, "CM+MMT empty pwd key"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_c
    const/16 v3, 0x40

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    if-gt v3, v2, :cond_d

    const/16 v0, 0x21

    const-string v2, "CM+MMT pwd key too big"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_d
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

    if-le v2, v3, :cond_7

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0xe0001
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;ILcom/coremobility/f/b;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {p2}, Lcom/coremobility/e/ah;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-boolean v0, p0, Lcom/coremobility/e/ag;->l:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/ag;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/e/t;

    invoke-direct {v0, p2, p1}, Lcom/coremobility/e/t;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iput v2, p0, Lcom/coremobility/e/ag;->j:I

    iput-object p1, p0, Lcom/coremobility/e/ag;->h:Ljava/lang/String;

    iput p2, p0, Lcom/coremobility/e/ag;->k:I

    iput-object p3, p0, Lcom/coremobility/e/ag;->q:Lcom/coremobility/f/b;

    iput-boolean v1, p0, Lcom/coremobility/e/ag;->l:Z

    iget-object v0, p0, Lcom/coremobility/e/ag;->b:Lcom/coremobility/g/b;

    const v1, 0xe0001

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void

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

.method public final b()V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/coremobility/a/b;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "https://locator1.corevm.com:443/locator/"

    sput-object v0, Lcom/coremobility/e/ag;->r:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/ag;->b:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/e/y;->a()Lcom/coremobility/e/y;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/ag;->c:Lcom/coremobility/e/y;

    invoke-static {}, Lcom/coremobility/g/m;->a()Lcom/coremobility/g/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/ag;->d:Lcom/coremobility/g/m;

    iput-boolean v1, p0, Lcom/coremobility/e/ag;->p:Z

    iput-boolean v1, p0, Lcom/coremobility/e/ag;->l:Z

    iput v1, p0, Lcom/coremobility/e/ag;->m:I

    iput v1, p0, Lcom/coremobility/e/ag;->n:I

    iput v1, p0, Lcom/coremobility/e/ag;->o:I

    iget-object v0, p0, Lcom/coremobility/e/ag;->b:Lcom/coremobility/g/b;

    const/high16 v2, 0xe

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    move v0, v1

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/e/ag;->a:Lcom/coremobility/integration/a/a;

    add-int/lit16 v3, v0, 0x1320

    const-string v4, ""

    invoke-virtual {v2, v3, v1, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    new-instance v3, Lcom/coremobility/j/a;

    invoke-direct {v3}, Lcom/coremobility/j/a;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3}, Lcom/coremobility/j/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "https://locator2.corevm.com:443/locator/"

    sput-object v0, Lcom/coremobility/e/ag;->r:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/coremobility/i/b;->a()Lcom/coremobility/i/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/i/b;->a(Lcom/coremobility/i/a;)V

    return-void
.end method
