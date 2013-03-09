.class public final Lcom/coremobility/c/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/coremobility/integration/file/a;

.field protected b:Ljava/lang/String;

.field protected c:[B

.field protected d:I

.field e:Lcom/coremobility/integration/h;

.field protected f:I

.field protected g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coremobility/integration/h;

    invoke-direct {v0}, Lcom/coremobility/integration/h;-><init>()V

    iput-object v0, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    iput-object v1, p0, Lcom/coremobility/c/b;->a:Lcom/coremobility/integration/file/a;

    iput-object v1, p0, Lcom/coremobility/c/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/coremobility/c/b;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/c/b;->d:I

    return-void
.end method

.method private a(B)V
    .locals 3

    iget-boolean v0, p0, Lcom/coremobility/c/b;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/c/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/c/b;->f:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/c/b;->c:[B

    iget v1, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/c/b;->d:I

    aput-byte p1, v0, v1

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/coremobility/c/b;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/c/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/c/b;->f:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/c/b;->c:[B

    iget v1, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/c/b;->d:I

    or-int/lit16 v2, p1, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/coremobility/c/b;->b(I)V

    goto :goto_0
.end method

.method private a(Lcom/coremobility/c/am;)V
    .locals 4

    const/4 v1, 0x0

    const/16 v3, -0x7e

    iget v0, p1, Lcom/coremobility/c/am;->g:I

    if-ltz v0, :cond_5

    const/4 v2, 0x5

    if-ge v0, v2, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/16 v0, -0x80

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->g:I

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget-byte v0, p1, Lcom/coremobility/c/am;->h:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-eqz v0, :cond_0

    const/16 v2, -0x60

    invoke-direct {p0, v2}, Lcom/coremobility/c/b;->a(B)V

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    :cond_0
    iget-byte v0, p1, Lcom/coremobility/c/am;->h:B

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_1

    const/16 v2, -0x5f

    invoke-direct {p0, v2}, Lcom/coremobility/c/b;->a(B)V

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    :cond_1
    const/16 v0, -0x7f

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    sget-object v0, Lcom/coremobility/c/an;->p:[Ljava/lang/String;

    iget v2, p1, Lcom/coremobility/c/am;->f:I

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->g:I

    if-nez v0, :cond_6

    iget v0, p1, Lcom/coremobility/c/am;->d:I

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->d:I

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->b(I)V

    :cond_2
    const/16 v0, -0x7d

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget-short v0, p1, Lcom/coremobility/c/am;->b:S

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    iget-short v0, p1, Lcom/coremobility/c/am;->b:S

    if-eqz v0, :cond_3

    const/16 v0, -0x7c

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->c:I

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    :cond_3
    :goto_1
    iget-byte v0, p1, Lcom/coremobility/c/am;->i:B

    if-eqz v0, :cond_4

    const/16 v0, -0x79

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(B)V

    iget-byte v0, p1, Lcom/coremobility/c/am;->i:B

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(I)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget v0, p1, Lcom/coremobility/c/am;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0, v3}, Lcom/coremobility/c/b;->a(B)V

    iget v0, p1, Lcom/coremobility/c/am;->d:I

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->b(I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lcom/coremobility/c/b;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/c/b;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/c/b;->f:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/c/b;->c:[B

    iget v3, p0, Lcom/coremobility/c/b;->d:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/coremobility/c/b;->d:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/c/b;->d:I

    goto :goto_0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/b;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 4

    const/4 v0, 0x1

    move v1, p1

    :goto_0
    shr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/coremobility/c/b;->g:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/coremobility/c/b;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/c/b;->f:I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/coremobility/c/b;->c:[B

    iget v2, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/c/b;->d:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coremobility/c/b;->c:[B

    iget v2, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/c/b;->d:I

    add-int/lit8 v0, v0, -0x1

    shl-int/lit8 v3, v0, 0x3

    shr-int v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/b;->a:Lcom/coremobility/integration/file/a;

    return-void
.end method

.method public final a(Lcom/coremobility/c/al;Lcom/coremobility/integration/h/d;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    invoke-static {v0}, Lcom/coremobility/c/an;->e(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget-object v0, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iget-object v0, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/b;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p1}, Lcom/coremobility/c/al;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    invoke-static {v0, v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_3
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
    new-instance v0, Lcom/coremobility/integration/r;

    invoke-direct {v0}, Lcom/coremobility/integration/r;-><init>()V

    iput v2, v0, Lcom/coremobility/integration/r;->a:I

    iget-object v3, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    invoke-static {v3, v2, v1}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    invoke-static {v3, v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/c/b;->b()V

    goto :goto_3

    :cond_5
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    iput-short v2, v0, Lcom/coremobility/c/am;->a:S

    iput v2, p0, Lcom/coremobility/c/b;->f:I

    iput-boolean v1, p0, Lcom/coremobility/c/b;->g:Z

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(Lcom/coremobility/c/am;)V

    iget v0, p0, Lcom/coremobility/c/b;->f:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremobility/c/b;->c:[B

    iput v2, p0, Lcom/coremobility/c/b;->d:I

    iput-boolean v2, p0, Lcom/coremobility/c/b;->g:Z

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    invoke-direct {p0, v0}, Lcom/coremobility/c/b;->a(Lcom/coremobility/c/am;)V

    new-instance v0, Lcom/coremobility/integration/r;

    invoke-direct {v0}, Lcom/coremobility/integration/r;-><init>()V

    iget v3, p0, Lcom/coremobility/c/b;->f:I

    iput v3, v0, Lcom/coremobility/integration/r;->a:I

    iget-object v3, p0, Lcom/coremobility/c/b;->e:Lcom/coremobility/integration/h;

    iget-object v4, p0, Lcom/coremobility/c/b;->c:[B

    invoke-static {v3, v4, v0}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, v0, Lcom/coremobility/integration/r;->a:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->e(I)V

    invoke-direct {p0}, Lcom/coremobility/c/b;->b()V

    goto :goto_3

    :cond_6
    iget v0, v0, Lcom/coremobility/integration/r;->a:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->e(I)V

    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coremobility/c/am;

    invoke-virtual {p1, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;)V

    invoke-direct {p0}, Lcom/coremobility/c/b;->b()V

    move v2, v1

    goto :goto_3
.end method
