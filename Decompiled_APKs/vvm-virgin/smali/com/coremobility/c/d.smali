.class public final Lcom/coremobility/c/d;
.super Lcom/coremobility/c/ae;


# instance fields
.field protected a:Lcom/coremobility/integration/file/a;

.field protected b:Lcom/coremobility/c/e;

.field protected final c:[I

.field protected final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/c/ae;-><init>()V

    new-instance v0, Lcom/coremobility/c/e;

    invoke-direct {v0, p0}, Lcom/coremobility/c/e;-><init>(Lcom/coremobility/c/d;)V

    iput-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coremobility/c/d;->c:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/coremobility/c/d;->d:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/d;->a:Lcom/coremobility/integration/file/a;

    return-void

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xc8t 0xaft 0x0t 0x0t
        0xc8t 0xaft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iget-object v0, v0, Lcom/coremobility/c/e;->a:Lcom/coremobility/c/al;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iget-object v0, v0, Lcom/coremobility/c/e;->a:Lcom/coremobility/c/al;

    iget-object v1, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iget v1, v1, Lcom/coremobility/c/e;->b:I

    invoke-virtual {v0, v1}, Lcom/coremobility/c/al;->a(I)V

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iget-object v0, v0, Lcom/coremobility/c/e;->a:Lcom/coremobility/c/al;

    invoke-virtual {v0}, Lcom/coremobility/c/al;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iget-short v0, v0, Lcom/coremobility/c/e;->c:S

    invoke-virtual {p0, v0}, Lcom/coremobility/c/d;->a(S)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/coremobility/c/ah;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/d;->a:Lcom/coremobility/integration/file/a;

    iput-object p1, p0, Lcom/coremobility/c/d;->h:Lcom/coremobility/c/ah;

    add-int/lit16 v0, p2, 0x1010

    int-to-short v0, v0

    iput-short v0, p0, Lcom/coremobility/c/d;->k:S

    iput p2, p0, Lcom/coremobility/c/d;->m:I

    const/16 v0, 0x49

    iput-byte v0, p0, Lcom/coremobility/c/d;->n:B

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coremobility/c/e;->a:Lcom/coremobility/c/al;

    iput v2, v0, Lcom/coremobility/c/e;->b:I

    iput-short v2, v0, Lcom/coremobility/c/e;->c:S

    invoke-super {p0}, Lcom/coremobility/c/ae;->i()V

    return-void
.end method

.method public final a(Lcom/coremobility/c/al;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/coremobility/c/al;->d()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/coremobility/c/al;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-direct {v0, v7}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/c/c;->a(Lcom/coremobility/integration/h/d;)S

    move-result v5

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v5, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {v4, v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coremobility/c/al;->e()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-direct {v0, v7}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/c/c;->a(Lcom/coremobility/integration/h/d;)S

    move-result v4

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v4, :cond_5

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {v6, v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coremobility/c/al;->g()V

    move v0, v4

    :goto_3
    new-instance v1, Lcom/coremobility/c/af;

    invoke-direct {v1, p0}, Lcom/coremobility/c/af;-><init>(Lcom/coremobility/c/ae;)V

    iput-short v5, v1, Lcom/coremobility/c/af;->a:S

    iput-short v0, v1, Lcom/coremobility/c/af;->b:S

    invoke-virtual {p1}, Lcom/coremobility/c/al;->k()I

    move-result v0

    iput v0, v1, Lcom/coremobility/c/af;->c:I

    invoke-virtual {p0}, Lcom/coremobility/c/d;->j()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v1, Lcom/coremobility/c/af;->d:J

    invoke-virtual {p0, p1, v1}, Lcom/coremobility/c/d;->a(Lcom/coremobility/c/al;Lcom/coremobility/c/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    const-string v1, "ReportSuccess called."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-short v0, p0, Lcom/coremobility/c/d;->j:S

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-short v0, p0, Lcom/coremobility/c/d;->j:S

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/coremobility/c/d;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/d;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    invoke-virtual {v0}, Lcom/coremobility/c/al;->d()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_6
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_7
    const/4 v0, 0x4

    if-ge v3, v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/c/d;->i:Lcom/coremobility/c/ag;

    iget-object v0, v0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    move v0, v3

    goto :goto_5

    :cond_9
    move v0, v3

    goto :goto_6

    :cond_a
    move v3, v2

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto :goto_3
.end method

.method public final a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iget-object v0, v0, Lcom/coremobility/c/e;->a:Lcom/coremobility/c/al;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-short v0, p1, Lcom/coremobility/c/am;->b:S

    if-nez v0, :cond_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-short v3, p1, Lcom/coremobility/c/am;->b:S

    new-instance v4, Lcom/coremobility/integration/h;

    invoke-direct {v4}, Lcom/coremobility/integration/h;-><init>()V

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iget-object v0, v0, Lcom/coremobility/c/e;->a:Lcom/coremobility/c/al;

    invoke-virtual {v0}, Lcom/coremobility/c/al;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v5

    if-nez v5, :cond_6

    iget v0, p1, Lcom/coremobility/c/am;->c:I

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v0

    if-nez v0, :cond_4

    new-array v6, v3, [B

    new-instance v0, Lcom/coremobility/integration/r;

    invoke-direct {v0}, Lcom/coremobility/integration/r;-><init>()V

    iput v3, v0, Lcom/coremobility/integration/r;->a:I

    invoke-static {v4, v6, v0}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v0

    iput-object v6, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :cond_4
    :goto_3
    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_0

    :cond_5
    const/16 v0, 0x1a

    const-string v1, "CM+DMI fail batch read"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    move v1, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method public final a(Lcom/coremobility/integration/h/d;)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-short v0, p0, Lcom/coremobility/c/d;->j:S

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/c/d;->i:Lcom/coremobility/c/ag;

    invoke-virtual {v0, v1}, Lcom/coremobility/c/ag;->b(S)Lcom/coremobility/c/al;

    move-result-object v8

    if-eqz v8, :cond_1

    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const v0, 0xffff

    move v4, v2

    move v5, v6

    move v7, v0

    :goto_2
    invoke-virtual {v8}, Lcom/coremobility/c/al;->d()I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-virtual {v8, v4}, Lcom/coremobility/c/al;->b(I)Lcom/coremobility/c/am;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget-short v0, v0, Lcom/coremobility/c/am;->a:S

    if-gt v0, v7, :cond_0

    iget-object v9, p0, Lcom/coremobility/c/d;->h:Lcom/coremobility/c/ah;

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    invoke-virtual {v9, v0}, Lcom/coremobility/c/ah;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget-short v7, v0, Lcom/coremobility/c/am;->a:S

    move v5, v4

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    if-eq v5, v6, :cond_3

    invoke-virtual {v8, v5}, Lcom/coremobility/c/al;->b(I)Lcom/coremobility/c/am;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iput-object v8, v0, Lcom/coremobility/c/e;->a:Lcom/coremobility/c/al;

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iput v5, v0, Lcom/coremobility/c/e;->b:I

    iget-object v0, p0, Lcom/coremobility/c/d;->b:Lcom/coremobility/c/e;

    iput-short v1, v0, Lcom/coremobility/c/e;->c:S

    :goto_3
    return v3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    move v1, v0

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_3
.end method

.method public final b()Z
    .locals 6

    const/4 v0, 0x0

    iget-short v1, p0, Lcom/coremobility/c/d;->j:S

    iget-object v2, p0, Lcom/coremobility/c/d;->e:Lcom/coremobility/integration/a/a;

    iget v3, p0, Lcom/coremobility/c/d;->m:I

    add-int/lit16 v3, v3, 0x1580

    iget-object v4, p0, Lcom/coremobility/c/d;->c:[I

    iget v5, p0, Lcom/coremobility/c/d;->m:I

    aget v4, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v2

    int-to-short v2, v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final c()I
    .locals 5

    iget-object v0, p0, Lcom/coremobility/c/d;->e:Lcom/coremobility/integration/a/a;

    iget v1, p0, Lcom/coremobility/c/d;->m:I

    add-int/lit16 v1, v1, 0x1540

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coremobility/c/d;->d:[I

    iget v4, p0, Lcom/coremobility/c/d;->m:I

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coremobility/c/d;->a(I)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 5

    iget-object v0, p0, Lcom/coremobility/c/d;->e:Lcom/coremobility/integration/a/a;

    iget v1, p0, Lcom/coremobility/c/d;->m:I

    add-int/lit16 v1, v1, 0x1540

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coremobility/c/d;->d:[I

    iget v4, p0, Lcom/coremobility/c/d;->m:I

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    return v0
.end method
