.class public Lcom/coremobility/j/l;
.super Ljava/lang/Object;


# instance fields
.field protected o:[B

.field protected p:I

.field protected q:I

.field protected r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iput v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    return-void
.end method


# virtual methods
.method protected final A()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    :goto_0
    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/j/l;->o:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x2

    const-string v2, "inc text"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/l;->p:I

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/j/l;->r:I

    move v0, v1

    :goto_1
    return v0

    :cond_1
    iget v1, p0, Lcom/coremobility/j/l;->q:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final B()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/coremobility/j/l;->A()I

    move-result v0

    iget v1, p0, Lcom/coremobility/j/l;->r:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/j/l;->o:[B

    iget v3, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final C()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/j/l;->r:I

    invoke-virtual {p0}, Lcom/coremobility/j/l;->A()I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    :cond_0
    return-void
.end method

.method protected final D()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    if-lt v0, v1, :cond_1

    const-string v0, "no val"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/coremobility/j/l;->r:I

    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/coremobility/j/l;->z()I

    move-result v0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    if-le v0, v1, :cond_0

    const-string v0, "inc val"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/j/l;->C()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    goto :goto_0
.end method

.method protected a([BI)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput p2, p0, Lcom/coremobility/j/l;->p:I

    array-length v1, p1

    if-ge v1, p2, :cond_0

    array-length v1, p1

    iput v1, p0, Lcom/coremobility/j/l;->p:I

    :cond_0
    iput-object p1, p0, Lcom/coremobility/j/l;->o:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/j/l;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final u()I
    .locals 2

    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected final v()B
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v1, v2, :cond_0

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const-string v3, "bad byte val %x"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0
.end method

.method protected final w()I
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v1, v2, :cond_0

    const-string v1, "no int"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/coremobility/j/l;->x()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    goto :goto_0

    :cond_2
    const-string v1, "bad int"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0
.end method

.method protected final x()I
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v1, v2, :cond_0

    const-string v1, "no long"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xff

    const/16 v1, 0x1f

    if-ge v2, v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    const-string v1, "bad long"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/coremobility/j/l;->p:I

    if-le v1, v3, :cond_3

    const-string v1, "inc long"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-le v2, v1, :cond_4

    const-string v1, "%x-byte long"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v5, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    iput v5, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    :goto_1
    if-lez v2, :cond_5

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    iget-object v3, p0, Lcom/coremobility/j/l;->o:[B

    iget v4, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    long-to-int v0, v0

    goto :goto_0
.end method

.method protected final y()I
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v0, v2, :cond_0

    const-string v0, "no uintv"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v9, p0, Lcom/coremobility/j/l;->r:I

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x80

    if-ne v0, v2, :cond_1

    const-string v0, "uintv 0x80"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/l;->p:I

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    iput v10, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/coremobility/j/l;->o:[B

    iget v5, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    const-string v0, "bad uintv"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/l;->p:I

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    iput v10, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/coremobility/j/l;->o:[B

    iget v5, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x7

    shl-long/2addr v2, v4

    iget v4, p0, Lcom/coremobility/j/l;->q:I

    iget v5, p0, Lcom/coremobility/j/l;->p:I

    if-lt v4, v5, :cond_3

    const-string v0, "inc uintv"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v9, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    long-to-int v1, v0

    goto :goto_0
.end method

.method protected final z()I
    .locals 5

    const/16 v4, 0x1f

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v1, v2, :cond_0

    const-string v1, "no vlen"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-ge v1, v4, :cond_1

    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_2

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    invoke-virtual {p0}, Lcom/coremobility/j/l;->y()I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "bad vlen"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_0
.end method
