.class public Lcom/coremobility/c/ae;
.super Ljava/lang/Object;


# instance fields
.field protected e:Lcom/coremobility/integration/a/a;

.field protected f:Lcom/coremobility/integration/b/c;

.field protected g:Lcom/coremobility/g/m;

.field protected h:Lcom/coremobility/c/ah;

.field protected i:Lcom/coremobility/c/ag;

.field protected j:S

.field protected k:S

.field protected l:Z

.field protected m:I

.field protected n:B


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/coremobility/c/ae;->g:Lcom/coremobility/g/m;

    new-instance v0, Lcom/coremobility/c/ag;

    invoke-direct {v0, p0}, Lcom/coremobility/c/ag;-><init>(Lcom/coremobility/c/ae;)V

    iput-object v0, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    iput-object v1, p0, Lcom/coremobility/c/ae;->e:Lcom/coremobility/integration/a/a;

    iput-object v1, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iput-object v1, p0, Lcom/coremobility/c/ae;->g:Lcom/coremobility/g/m;

    iput-object v1, p0, Lcom/coremobility/c/ae;->h:Lcom/coremobility/c/ah;

    return-void
.end method

.method private b(S)V
    .locals 4

    const/4 v1, 0x0

    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/m;

    invoke-direct {v0}, Lcom/coremobility/integration/m;-><init>()V

    iget-object v2, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v3, p0, Lcom/coremobility/c/ae;->k:S

    invoke-virtual {v2, v3, p1, v0}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v3, p0, Lcom/coremobility/c/ae;->k:S

    iget v0, v0, Lcom/coremobility/integration/m;->a:I

    invoke-virtual {v2, v3, v0}, Lcom/coremobility/integration/b/c;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_1

    :cond_2
    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/coremobility/c/ae;->j:S

    goto :goto_1
.end method


# virtual methods
.method protected final a(I)I
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-short v3, p0, Lcom/coremobility/c/ae;->j:S

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v3, v0}, Lcom/coremobility/c/ag;->b(S)Lcom/coremobility/c/al;

    move-result-object v5

    if-eqz v5, :cond_0

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v5}, Lcom/coremobility/c/al;->d()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v5}, Lcom/coremobility/c/al;->i()I

    move-result v3

    invoke-virtual {v5}, Lcom/coremobility/c/al;->h()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    if-lt p1, v2, :cond_3

    sub-int v1, p1, v2

    :goto_3
    return v1

    :cond_3
    const/16 v0, 0x1a

    const-string v3, "CM+DM%c%d ex file sp %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-byte v6, p0, Lcom/coremobility/c/ae;->n:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v1

    iget v6, p0, Lcom/coremobility/c/ae;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-static {v0, v3, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method protected final a(SLcom/coremobility/c/af;)S
    .locals 6

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/m;

    invoke-direct {v0}, Lcom/coremobility/integration/m;-><init>()V

    iget-object v3, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v4, p0, Lcom/coremobility/c/ae;->k:S

    invoke-virtual {v3, v4, p1, v0}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v4, p0, Lcom/coremobility/c/ae;->k:S

    iget v5, v0, Lcom/coremobility/integration/m;->a:I

    invoke-virtual {v3, v4, v5, p2}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/u;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v2

    goto :goto_1

    :cond_2
    iget v0, v0, Lcom/coremobility/integration/m;->a:I

    int-to-short v0, v0

    goto :goto_1
.end method

.method protected final a(S)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v0, p1}, Lcom/coremobility/c/ag;->a(S)V

    invoke-direct {p0, p1}, Lcom/coremobility/c/ae;->b(S)V

    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    iget-object v3, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v3}, Lcom/coremobility/c/ag;->a()S

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    iget-object v3, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v4, p0, Lcom/coremobility/c/ae;->k:S

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coremobility/c/ae;->l:Z

    return-void
.end method

.method protected final a(Lcom/coremobility/c/al;Lcom/coremobility/c/af;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/coremobility/integration/m;

    invoke-direct {v0}, Lcom/coremobility/integration/m;-><init>()V

    iget-object v3, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v4, p0, Lcom/coremobility/c/ae;->k:S

    invoke-virtual {v3, v4, v0, p2}, Lcom/coremobility/integration/b/c;->a(ILcom/coremobility/integration/m;Lcom/coremobility/integration/u;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/coremobility/c/ae;->j:S

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v0, p1}, Lcom/coremobility/c/ag;->a(Lcom/coremobility/c/al;)V

    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    iget-object v3, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v3}, Lcom/coremobility/c/ag;->a()S

    move-result v3

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    iget-object v3, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v4, p0, Lcom/coremobility/c/ae;->k:S

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v3

    if-ne v0, v3, :cond_2

    move v2, v1

    :cond_2
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final b(Lcom/coremobility/c/al;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-short v2, p0, Lcom/coremobility/c/ae;->j:S

    if-ge v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/coremobility/c/al;->d()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v2, v0}, Lcom/coremobility/c/ag;->b(S)Lcom/coremobility/c/al;

    move-result-object v4

    if-eqz v4, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v4}, Lcom/coremobility/c/al;->d()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v4, p1}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/al;)V

    invoke-virtual {v4}, Lcom/coremobility/c/al;->d()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    int-to-short v2, v2

    invoke-virtual {p0, v0}, Lcom/coremobility/c/ae;->a(S)V

    move v0, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected final b(SLcom/coremobility/c/af;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v1, p0, Lcom/coremobility/c/ae;->k:S

    invoke-virtual {v0, v1, p1, p2}, Lcom/coremobility/integration/b/c;->b(IILcom/coremobility/integration/u;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public final f()I
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-short v3, p0, Lcom/coremobility/c/ae;->j:S

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v3, v0}, Lcom/coremobility/c/ag;->b(S)Lcom/coremobility/c/al;

    move-result-object v5

    if-eqz v5, :cond_0

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v5}, Lcom/coremobility/c/al;->d()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v5}, Lcom/coremobility/c/al;->d()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    return v2
.end method

.method public final g()S
    .locals 1

    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/c/ae;->l:Z

    return v0
.end method

.method protected final i()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/ae;->e:Lcom/coremobility/integration/a/a;

    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    invoke-static {}, Lcom/coremobility/g/m;->a()Lcom/coremobility/g/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/ae;->g:Lcom/coremobility/g/m;

    iget-object v0, p0, Lcom/coremobility/c/ae;->h:Lcom/coremobility/c/ah;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/c/ae;->m:I

    iget-object v3, p0, Lcom/coremobility/c/ae;->e:Lcom/coremobility/integration/a/a;

    add-int/lit16 v0, v0, 0x15a0

    invoke-virtual {v3, v0, v2, v2}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    const-string v3, "CM+DM%c%d reset"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-byte v5, p0, Lcom/coremobility/c/ae;->n:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p0, Lcom/coremobility/c/ae;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v3, p0, Lcom/coremobility/c/ae;->k:S

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/b/c;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v3, p0, Lcom/coremobility/c/ae;->k:S

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/coremobility/c/ae;->j:S

    iput-boolean v2, p0, Lcom/coremobility/c/ae;->l:Z

    move v3, v2

    :goto_1
    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    if-ge v3, v0, :cond_6

    new-instance v0, Lcom/coremobility/c/af;

    invoke-direct {v0, p0}, Lcom/coremobility/c/af;-><init>(Lcom/coremobility/c/ae;)V

    new-instance v4, Lcom/coremobility/integration/h/d;

    invoke-direct {v4, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/coremobility/c/ae;->a(SLcom/coremobility/c/af;)S

    iget-object v0, v4, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/af;

    iget-short v4, v0, Lcom/coremobility/c/af;->a:S

    invoke-static {v4}, Lcom/coremobility/c/c;->a(S)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-short v4, v0, Lcom/coremobility/c/af;->a:S

    invoke-static {v4}, Lcom/coremobility/c/c;->b(S)Z

    move-result v4

    if-nez v4, :cond_1

    iget-short v4, v0, Lcom/coremobility/c/af;->b:S

    if-eqz v4, :cond_3

    iget-short v4, v0, Lcom/coremobility/c/af;->b:S

    invoke-static {v4}, Lcom/coremobility/c/c;->a(S)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-short v4, v0, Lcom/coremobility/c/af;->b:S

    invoke-static {v4}, Lcom/coremobility/c/c;->b(S)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-direct {p0, v3}, Lcom/coremobility/c/ae;->b(S)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-short v4, v0, Lcom/coremobility/c/af;->a:S

    invoke-static {v4}, Lcom/coremobility/c/c;->c(S)V

    iget-short v4, v0, Lcom/coremobility/c/af;->b:S

    if-eqz v4, :cond_4

    iget-short v4, v0, Lcom/coremobility/c/af;->b:S

    invoke-static {v4}, Lcom/coremobility/c/c;->c(S)V

    :cond_4
    new-instance v4, Lcom/coremobility/c/al;

    invoke-direct {v4}, Lcom/coremobility/c/al;-><init>()V

    iget-short v5, v0, Lcom/coremobility/c/af;->a:S

    invoke-virtual {v4, v5}, Lcom/coremobility/c/al;->b(S)V

    iget-short v5, v0, Lcom/coremobility/c/af;->b:S

    invoke-virtual {v4, v5}, Lcom/coremobility/c/al;->a(S)V

    iget v0, v0, Lcom/coremobility/c/af;->c:I

    invoke-virtual {v4, v0}, Lcom/coremobility/c/al;->f(I)V

    iget-object v0, p0, Lcom/coremobility/c/ae;->h:Lcom/coremobility/c/ah;

    invoke-virtual {v0}, Lcom/coremobility/c/ah;->e()Lcom/coremobility/c/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/coremobility/c/a;->a(Lcom/coremobility/c/al;)V

    invoke-virtual {v4}, Lcom/coremobility/c/al;->d()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v3}, Lcom/coremobility/c/ae;->b(S)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/coremobility/c/al;->g()V

    iget-object v0, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v0, v4}, Lcom/coremobility/c/ag;->a(Lcom/coremobility/c/al;)V

    add-int/lit8 v0, v3, 0x1

    int-to-short v0, v0

    move v3, v0

    goto :goto_1

    :cond_6
    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    iget-object v3, p0, Lcom/coremobility/c/ae;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v3}, Lcom/coremobility/c/ag;->a()S

    move-result v3

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-short v0, p0, Lcom/coremobility/c/ae;->j:S

    iget-object v3, p0, Lcom/coremobility/c/ae;->f:Lcom/coremobility/integration/b/c;

    iget-short v4, p0, Lcom/coremobility/c/ae;->k:S

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v3

    if-ne v0, v3, :cond_8

    :goto_3
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    return-void

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method protected final j()I
    .locals 8

    const/16 v7, 0x1501

    const/4 v6, 0x0

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/coremobility/c/ae;->e:Lcom/coremobility/integration/a/a;

    invoke-virtual {v1, v7, v6, v6}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v1

    if-gt v0, v1, :cond_0

    const/16 v2, 0x1a

    const-string v3, "CM+DM%c%d gen uts %x %x"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-byte v5, p0, Lcom/coremobility/c/ae;->n:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget v6, p0, Lcom/coremobility/c/ae;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    :cond_0
    iget-object v1, p0, Lcom/coremobility/c/ae;->e:Lcom/coremobility/integration/a/a;

    invoke-virtual {v1, v7, v0}, Lcom/coremobility/integration/a/a;->a(II)Z

    return v0
.end method
