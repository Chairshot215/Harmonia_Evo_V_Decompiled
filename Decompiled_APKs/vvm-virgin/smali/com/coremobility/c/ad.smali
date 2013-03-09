.class public final Lcom/coremobility/c/ad;
.super Lcom/coremobility/c/ae;


# instance fields
.field protected a:Lcom/coremobility/integration/file/a;

.field protected b:I

.field protected c:I

.field protected final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/c/ae;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coremobility/c/ad;->d:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/ad;->a:Lcom/coremobility/integration/file/a;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xc8t 0xaft 0x0t 0x0t
        0xc8t 0xaft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static a([BLcom/coremobility/c/al;Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/b;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget-short v0, v0, Lcom/coremobility/c/am;->b:S

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/coremobility/c/al;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/coremobility/c/c;->c()S

    move-result v0

    iput-short v0, p3, Lcom/coremobility/integration/h/b;->a:S

    iget-short v0, p3, Lcom/coremobility/integration/h/b;->a:S

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-short v0, p3, Lcom/coremobility/integration/h/b;->a:S

    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->a(S)V

    invoke-virtual {p1}, Lcom/coremobility/c/al;->e()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v4, Lcom/coremobility/integration/h;

    invoke-direct {v4}, Lcom/coremobility/integration/h;-><init>()V

    invoke-static {v0, v4}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v4, v2, v1}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v0

    if-nez v0, :cond_3

    new-instance v6, Lcom/coremobility/integration/r;

    invoke-direct {v6}, Lcom/coremobility/integration/r;-><init>()V

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->c:I

    iput v0, v6, Lcom/coremobility/integration/r;->a:I

    invoke-static {v4, v6}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v3

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget v6, v6, Lcom/coremobility/integration/r;->a:I

    iput v6, v0, Lcom/coremobility/c/am;->c:I

    move v0, v3

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget-short v0, v0, Lcom/coremobility/c/am;->b:S

    new-instance v6, Lcom/coremobility/integration/r;

    invoke-direct {v6}, Lcom/coremobility/integration/r;-><init>()V

    iput v0, v6, Lcom/coremobility/integration/r;->a:I

    invoke-static {v4, p0, v6}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v3

    iget v6, v6, Lcom/coremobility/integration/r;->a:I

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->c:I

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->d(I)V

    move v0, v3

    :cond_4
    :goto_2
    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_0

    :cond_5
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, Lcom/coremobility/c/ad;->j:S

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    invoke-virtual {v0}, Lcom/coremobility/c/al;->b()V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    invoke-virtual {v0}, Lcom/coremobility/c/al;->c()V

    iput v2, p0, Lcom/coremobility/c/ad;->c:I

    iput v2, p0, Lcom/coremobility/c/ad;->b:I

    invoke-virtual {p0, v2}, Lcom/coremobility/c/ad;->a(S)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final a(Lcom/coremobility/c/ah;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/ad;->a:Lcom/coremobility/integration/file/a;

    iput v1, p0, Lcom/coremobility/c/ad;->b:I

    iput v1, p0, Lcom/coremobility/c/ad;->c:I

    iput-object p1, p0, Lcom/coremobility/c/ad;->h:Lcom/coremobility/c/ah;

    add-int/lit16 v0, p2, 0x1020

    int-to-short v0, v0

    iput-short v0, p0, Lcom/coremobility/c/ad;->k:S

    iput p2, p0, Lcom/coremobility/c/ad;->m:I

    const/16 v0, 0x4f

    iput-byte v0, p0, Lcom/coremobility/c/ad;->n:B

    invoke-super {p0}, Lcom/coremobility/c/ae;->i()V

    return-void
.end method

.method public final a(Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-short v0, p0, Lcom/coremobility/c/ad;->j:S

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    if-eqz v0, :cond_3

    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0}, Lcom/coremobility/c/al;->d()I

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0}, Lcom/coremobility/c/al;->l()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coremobility/c/al;->f(I)V

    invoke-virtual {v0}, Lcom/coremobility/c/al;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/coremobility/c/al;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget v1, p0, Lcom/coremobility/c/ad;->c:I

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/coremobility/integration/h;

    invoke-direct {v4}, Lcom/coremobility/integration/h;-><init>()V

    invoke-static {v1, v4}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v5

    if-nez v5, :cond_a

    new-instance v6, Lcom/coremobility/integration/r;

    invoke-direct {v6}, Lcom/coremobility/integration/r;-><init>()V

    iget v1, p0, Lcom/coremobility/c/ad;->c:I

    iput v1, v6, Lcom/coremobility/integration/r;->a:I

    invoke-static {v4, v6}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v1

    iget v6, v6, Lcom/coremobility/integration/r;->a:I

    iput v6, p0, Lcom/coremobility/c/ad;->c:I

    :goto_3
    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_5

    :cond_0
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_1
    :goto_4
    iget v1, p0, Lcom/coremobility/c/ad;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget v1, p0, Lcom/coremobility/c/ad;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p4, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    new-instance v1, Lcom/coremobility/c/af;

    invoke-direct {v1, p0}, Lcom/coremobility/c/af;-><init>(Lcom/coremobility/c/ae;)V

    invoke-virtual {p0, v3, v1}, Lcom/coremobility/c/ad;->a(SLcom/coremobility/c/af;)S

    move-result v2

    invoke-virtual {v0}, Lcom/coremobility/c/al;->k()I

    move-result v0

    iput v0, v1, Lcom/coremobility/c/af;->c:I

    invoke-virtual {p0, v2, v1}, Lcom/coremobility/c/ad;->b(SLcom/coremobility/c/af;)V

    iget-wide v0, v1, Lcom/coremobility/c/af;->d:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p5, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    return-void

    :cond_2
    move v0, v3

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    iput v3, p0, Lcom/coremobility/c/ad;->b:I

    goto :goto_4

    :cond_7
    invoke-static {v2, v4}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v2

    if-nez v2, :cond_8

    new-instance v5, Lcom/coremobility/integration/r;

    invoke-direct {v5}, Lcom/coremobility/integration/r;-><init>()V

    iget v1, p0, Lcom/coremobility/c/ad;->b:I

    iput v1, v5, Lcom/coremobility/integration/r;->a:I

    invoke-static {v4, v5}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v1

    iget v5, v5, Lcom/coremobility/integration/r;->a:I

    iput v5, p0, Lcom/coremobility/c/ad;->b:I

    :cond_8
    if-nez v2, :cond_9

    invoke-static {v4}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v2

    if-nez v2, :cond_9

    if-eqz v1, :cond_1

    :cond_9
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_4

    :cond_a
    move v1, v3

    goto :goto_3
.end method

.method public final a(Lcom/coremobility/integration/h/d;[B)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/coremobility/integration/h/b;

    invoke-direct {v4}, Lcom/coremobility/integration/h/b;-><init>()V

    iput-short v3, v4, Lcom/coremobility/integration/h/b;->a:S

    :goto_0
    iget-short v0, v4, Lcom/coremobility/integration/h/b;->a:S

    iget-short v1, p0, Lcom/coremobility/c/ad;->j:S

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    iget-short v1, v4, Lcom/coremobility/integration/h/b;->a:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0}, Lcom/coremobility/c/al;->d()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0}, Lcom/coremobility/c/al;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    if-eqz v0, :cond_7

    new-instance v1, Lcom/coremobility/integration/h/b;

    invoke-direct {v1, v3}, Lcom/coremobility/integration/h/b;-><init>(B)V

    invoke-static {p2, v0, p1, v1}, Lcom/coremobility/c/ad;->a([BLcom/coremobility/c/al;Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/coremobility/c/ad;->h:Lcom/coremobility/c/ah;

    invoke-virtual {v5}, Lcom/coremobility/c/ah;->f()Lcom/coremobility/c/b;

    move-result-object v5

    invoke-virtual {v5, v0, p1}, Lcom/coremobility/c/b;->a(Lcom/coremobility/c/al;Lcom/coremobility/integration/h/d;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    :goto_4
    return v3

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    iget-short v0, v4, Lcom/coremobility/integration/h/b;->a:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, v4, Lcom/coremobility/integration/h/b;->a:S

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    iget-short v0, v1, Lcom/coremobility/integration/h/b;->a:S

    if-eqz v0, :cond_6

    new-instance v0, Lcom/coremobility/c/af;

    invoke-direct {v0, p0}, Lcom/coremobility/c/af;-><init>(Lcom/coremobility/c/ae;)V

    iget-short v3, v4, Lcom/coremobility/integration/h/b;->a:S

    invoke-virtual {p0, v3, v0}, Lcom/coremobility/c/ad;->a(SLcom/coremobility/c/af;)S

    move-result v3

    iget-short v1, v1, Lcom/coremobility/integration/h/b;->a:S

    iput-short v1, v0, Lcom/coremobility/c/af;->b:S

    invoke-virtual {p0, v3, v0}, Lcom/coremobility/c/ad;->b(SLcom/coremobility/c/af;)V

    :cond_6
    move v3, v2

    goto :goto_4

    :cond_7
    new-instance v1, Lcom/coremobility/c/al;

    invoke-direct {v1}, Lcom/coremobility/c/al;-><init>()V

    invoke-static {}, Lcom/coremobility/c/c;->c()S

    move-result v4

    if-eqz v4, :cond_9

    move v0, v2

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v1, v4}, Lcom/coremobility/c/al;->b(S)V

    new-instance v0, Lcom/coremobility/integration/h/b;

    invoke-direct {v0, v3}, Lcom/coremobility/integration/h/b;-><init>(B)V

    invoke-static {p2, v1, p1, v0}, Lcom/coremobility/c/ad;->a([BLcom/coremobility/c/al;Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/b;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/coremobility/c/ad;->h:Lcom/coremobility/c/ah;

    invoke-virtual {v5}, Lcom/coremobility/c/ah;->f()Lcom/coremobility/c/b;

    move-result-object v5

    invoke-virtual {v5, v1, p1}, Lcom/coremobility/c/b;->a(Lcom/coremobility/c/al;Lcom/coremobility/integration/h/d;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_8
    invoke-virtual {v1}, Lcom/coremobility/c/al;->a()V

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v2}, Lcom/coremobility/c/al;->f(I)V

    new-instance v5, Lcom/coremobility/c/af;

    invoke-direct {v5, p0}, Lcom/coremobility/c/af;-><init>(Lcom/coremobility/c/ae;)V

    iput-short v4, v5, Lcom/coremobility/c/af;->a:S

    iget-short v0, v0, Lcom/coremobility/integration/h/b;->a:S

    iput-short v0, v5, Lcom/coremobility/c/af;->b:S

    invoke-virtual {v1}, Lcom/coremobility/c/al;->k()I

    move-result v0

    iput v0, v5, Lcom/coremobility/c/af;->c:I

    invoke-virtual {p0}, Lcom/coremobility/c/ad;->j()I

    move-result v0

    int-to-long v6, v0

    iput-wide v6, v5, Lcom/coremobility/c/af;->d:J

    invoke-virtual {p0, v1, v5}, Lcom/coremobility/c/ad;->a(Lcom/coremobility/c/al;Lcom/coremobility/c/af;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lcom/coremobility/c/al;->a()V

    goto :goto_4
.end method

.method public final b()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, Lcom/coremobility/c/ad;->j:S

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    if-eqz v0, :cond_1

    move v3, v1

    :goto_1
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0}, Lcom/coremobility/c/al;->d()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0}, Lcom/coremobility/c/al;->j()Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final c()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, Lcom/coremobility/c/ad;->j:S

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    iget v0, v0, Lcom/coremobility/c/al;->d:I

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v2

    :goto_3
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v1, v1, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final d()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, Lcom/coremobility/c/ad;->j:S

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    invoke-virtual {v0}, Lcom/coremobility/c/al;->d()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v6, v2

    :goto_3
    const/4 v0, 0x4

    if-ge v6, v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    invoke-virtual {v0, v6}, Lcom/coremobility/c/al;->c(I)I

    move-result v7

    if-eqz v7, :cond_6

    move v3, v1

    move v4, v2

    :goto_4
    iget-short v0, p0, Lcom/coremobility/c/ad;->j:S

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/c/ad;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    if-eqz v0, :cond_3

    move v5, v1

    :goto_5
    invoke-static {v5}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0}, Lcom/coremobility/c/al;->d()I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    :goto_6
    invoke-static {v5}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0, v6}, Lcom/coremobility/c/al;->c(I)I

    move-result v0

    add-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    int-to-short v0, v0

    move v3, v0

    goto :goto_4

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
    move v5, v2

    goto :goto_5

    :cond_4
    move v5, v2

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcom/coremobility/c/ad;->h:Lcom/coremobility/c/ah;

    invoke-virtual {v0, v6}, Lcom/coremobility/c/ah;->a(I)Lcom/coremobility/c/ap;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v7, v4}, Lcom/coremobility/c/ap;->a(II)V

    :cond_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final e()I
    .locals 5

    iget-object v0, p0, Lcom/coremobility/c/ad;->e:Lcom/coremobility/integration/a/a;

    iget v1, p0, Lcom/coremobility/c/ad;->m:I

    add-int/lit16 v1, v1, 0x1560

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coremobility/c/ad;->d:[I

    iget v4, p0, Lcom/coremobility/c/ad;->m:I

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coremobility/c/ad;->a(I)I

    move-result v0

    return v0
.end method
