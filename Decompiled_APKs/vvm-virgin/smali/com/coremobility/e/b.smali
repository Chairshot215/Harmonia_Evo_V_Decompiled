.class public final Lcom/coremobility/e/b;
.super Lcom/coremobility/j/l;


# instance fields
.field protected a:Lcom/coremobility/g/m;

.field protected b:Z

.field protected c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/j/l;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/e/b;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/b;->a:Lcom/coremobility/g/m;

    iput-boolean v1, p0, Lcom/coremobility/e/b;->b:Z

    iput v1, p0, Lcom/coremobility/e/b;->c:I

    return-void
.end method

.method private a(II)V
    .locals 12

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v3, p0, Lcom/coremobility/e/b;->c:I

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v1, p0, Lcom/coremobility/e/b;->c:I

    sub-int v2, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    if-le p2, v0, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-le v2, p1, :cond_7

    const/4 v0, 0x1

    move v2, v0

    move v1, p1

    :goto_2
    if-lez v1, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0xc

    if-le v1, v0, :cond_4

    const/16 v0, 0xc

    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_5

    const-string v7, "%02x "

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/coremobility/e/b;->o:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v10, v3

    and-int/lit8 v3, v3, 0x7f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    sub-int/2addr v1, v0

    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    const-string v0, "..."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v0, 0x21

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x21

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x21

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    move v11, v1

    move v1, v2

    move v2, v11

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;Lcom/coremobility/e/ak;I)[Lcom/coremobility/e/ak;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    if-lt p3, v2, :cond_0

    const/16 v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+MMD inv index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_0
    if-nez p0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/coremobility/e/ak;

    move-object v1, v0

    :goto_1
    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p3

    if-eqz v0, :cond_1

    add-int/lit8 v3, p3, 0x1

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {p0, p3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    aput-object p2, v1, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    move-object p0, v1

    goto :goto_0

    :cond_2
    new-array v0, v2, [Lcom/coremobility/e/ak;

    invoke-static {p0, v4, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    goto :goto_1
.end method

.method private c(Lcom/coremobility/integration/h/d;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/e/b;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "/TYPE=PLMN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    if-gt v2, v3, :cond_0

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 8

    const v4, 0x80001

    const/4 v7, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v5, p0, Lcom/coremobility/e/b;->p:I

    if-lt v0, v5, :cond_2

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/coremobility/e/b;->u()I

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_6

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v5

    if-nez v5, :cond_3

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/coremobility/e/b;->p:I

    if-le v5, v6, :cond_4

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    iget v4, p0, Lcom/coremobility/e/b;->r:I

    if-eq v4, v1, :cond_5

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iput v7, p0, Lcom/coremobility/e/b;->r:I

    move v2, v3

    goto :goto_1

    :sswitch_0
    iput v0, p0, Lcom/coremobility/e/b;->q:I

    move v2, v4

    goto :goto_1

    :sswitch_1
    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const v2, 0x80002

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/coremobility/e/b;->u()I

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_7

    invoke-virtual {p0}, Lcom/coremobility/e/b;->A()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/b;->o:[B

    iget v4, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lcom/coremobility/e/a/b;->a(Ljava/lang/String;)I

    move-result v2

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    iget v4, p0, Lcom/coremobility/e/b;->r:I

    if-nez v4, :cond_8

    :goto_3
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iput v7, p0, Lcom/coremobility/e/b;->r:I

    move v2, v3

    goto :goto_1

    :pswitch_0
    iput v0, p0, Lcom/coremobility/e/b;->q:I

    move v2, v4

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_0
        0xa8 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/integration/h/d;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v2

    if-nez v2, :cond_1

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget v3, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/coremobility/e/b;->p:I

    if-le v3, v4, :cond_2

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v3

    const/16 v4, 0x80

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/coremobility/e/b;->r:I

    if-eq v3, v0, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/coremobility/e/b;->c(Lcom/coremobility/integration/h/d;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/e/b;->c(Lcom/coremobility/integration/h/d;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    invoke-static {}, Lcom/coremobility/g/m;->a()Lcom/coremobility/g/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/b;->a:Lcom/coremobility/g/m;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/e/b;->b:Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coremobility/e/b;->b:Z

    return-void
.end method

.method public final a([BII)V
    .locals 1

    invoke-super {p0, p1, p3}, Lcom/coremobility/j/l;->a([BI)Z

    iput p2, p0, Lcom/coremobility/e/b;->q:I

    iput p2, p0, Lcom/coremobility/e/b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/e/b;->b:Z

    return-void
.end method

.method public final a([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;)[Lcom/coremobility/e/ak;
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-instance v2, Lcom/coremobility/integration/h/d;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v0, v2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v1, :cond_4

    :goto_1
    return-object p1

    :cond_1
    iget v5, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/coremobility/e/b;->p:I

    if-le v1, v5, :cond_2

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    iput v4, p0, Lcom/coremobility/e/b;->r:I

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/e/b;->w()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-eqz v1, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/coremobility/e/b;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_2
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_6

    if-eqz p1, :cond_5

    move v0, v4

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    aget-object v0, p1, v2

    iget v0, v0, Lcom/coremobility/e/ak;->a:I

    if-ge v5, v0, :cond_6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v2, v0, :cond_7

    aget-object v0, p1, v2

    iget v0, v0, Lcom/coremobility/e/ak;->a:I

    if-le v5, v0, :cond_8

    :cond_7
    new-instance v0, Lcom/coremobility/e/ak;

    invoke-direct {v0}, Lcom/coremobility/e/ak;-><init>()V

    iput v5, v0, Lcom/coremobility/e/ak;->a:I

    iput v3, v0, Lcom/coremobility/e/ak;->b:I

    iput-object v1, v0, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2}, Lcom/coremobility/e/b;->a([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;Lcom/coremobility/e/ak;I)[Lcom/coremobility/e/ak;

    move-result-object p1

    goto :goto_1

    :cond_8
    aget-object v0, p1, v2

    iput-object v1, v0, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public final b()I
    .locals 3

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/e/b;->o:[B

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    invoke-virtual {p0}, Lcom/coremobility/e/b;->A()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/b;->o:[B

    iget v4, p0, Lcom/coremobility/e/b;->q:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/coremobility/integration/h/d;)[B
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v2, v0, [B

    iget-object v3, p0, Lcom/coremobility/e/b;->o:[B

    iget v4, p0, Lcom/coremobility/e/b;->q:I

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;)[Lcom/coremobility/e/ak;
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/coremobility/integration/h/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, v3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v1, :cond_4

    :goto_1
    return-object p1

    :cond_1
    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iput v4, p0, Lcom/coremobility/e/b;->r:I

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/e/b;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/coremobility/e/b;->x()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_2
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v3, v0, :cond_6

    if-eqz p1, :cond_5

    move v0, v4

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    aget-object v0, p1, v3

    iget v0, v0, Lcom/coremobility/e/ak;->a:I

    if-ge v5, v0, :cond_6

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    iget-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_7

    aget-object v0, p1, v3

    iget v0, v0, Lcom/coremobility/e/ak;->a:I

    if-le v5, v0, :cond_8

    :cond_7
    new-instance v0, Lcom/coremobility/e/ak;

    invoke-direct {v0}, Lcom/coremobility/e/ak;-><init>()V

    iput v5, v0, Lcom/coremobility/e/ak;->a:I

    iput v1, v0, Lcom/coremobility/e/ak;->b:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v3}, Lcom/coremobility/e/b;->a([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;Lcom/coremobility/e/ak;I)[Lcom/coremobility/e/ak;

    move-result-object p1

    goto :goto_1

    :cond_8
    aget-object v0, p1, v3

    iput v1, v0, Lcom/coremobility/e/ak;->b:I

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    iget v3, p0, Lcom/coremobility/e/b;->p:I

    if-lt v2, v3, :cond_0

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/coremobility/e/b;->u()I

    move-result v2

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/coremobility/e/b;->p:I

    if-le v3, v4, :cond_2

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/coremobility/e/b;->r:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coremobility/e/b;->o:[B

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/coremobility/e/b;->o:[B

    iget v2, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/e/b;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lcom/coremobility/e/b;->x()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 4

    invoke-virtual {p0}, Lcom/coremobility/e/b;->y()I

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-nez v1, :cond_0

    const/16 v1, 0x21

    const-string v2, "CM+MMD 0 mp d-len"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_0
    return v0
.end method

.method public final g()I
    .locals 4

    invoke-virtual {p0}, Lcom/coremobility/e/b;->y()I

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-nez v1, :cond_0

    const/16 v1, 0x21

    const-string v2, "CM+MMD 0 mp h-len"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_0
    return v0
.end method

.method public final h()I
    .locals 2

    invoke-virtual {p0}, Lcom/coremobility/e/b;->y()I

    move-result v0

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public final i()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/e/b;->u()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/e/b;->o:[B

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/e/b;->C()V

    iget v1, p0, Lcom/coremobility/e/b;->r:I

    if-nez v1, :cond_0

    const/16 v0, 0x80

    goto :goto_0
.end method

.method public final j()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/coremobility/e/b;->z()I

    move-result v2

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/coremobility/e/b;->r:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Lcom/coremobility/e/b;->q:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/coremobility/e/b;->p:I

    if-le v3, v4, :cond_2

    iget v2, p0, Lcom/coremobility/e/b;->p:I

    iput v2, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/e/b;->d()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget v3, p0, Lcom/coremobility/e/b;->r:I

    if-eq v3, v0, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/coremobility/e/b;->x()I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/coremobility/e/b;->x()I

    move-result v0

    iget v2, p0, Lcom/coremobility/e/b;->r:I

    if-nez v2, :cond_0

    int-to-long v0, v0

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final k()V
    .locals 1

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->c:I

    return-void
.end method

.method public final l()V
    .locals 1

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iput v0, p0, Lcom/coremobility/e/b;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/e/b;->r:I

    return-void
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 0

    invoke-virtual {p0}, Lcom/coremobility/e/b;->C()V

    return-void
.end method

.method public final o()V
    .locals 0

    invoke-virtual {p0}, Lcom/coremobility/e/b;->C()V

    return-void
.end method

.method public final p()V
    .locals 0

    invoke-virtual {p0}, Lcom/coremobility/e/b;->D()V

    return-void
.end method

.method public final q()Z
    .locals 2

    iget v0, p0, Lcom/coremobility/e/b;->c:I

    iget v1, p0, Lcom/coremobility/e/b;->q:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()I
    .locals 2

    iget v0, p0, Lcom/coremobility/e/b;->c:I

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/e/b;->p:I

    iget v1, p0, Lcom/coremobility/e/b;->c:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()V
    .locals 7

    const/4 v6, 0x2

    const/16 v5, 0x3c

    const/16 v4, 0x21

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/e/b;->r:I

    packed-switch v2, :pswitch_data_0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0xc

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/coremobility/e/b;->a(II)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->c:I

    goto :goto_0

    :pswitch_1
    const-string v0, "CM+MMD sk field:"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v5, v6}, Lcom/coremobility/e/b;->a(II)V

    iget v0, p0, Lcom/coremobility/e/b;->q:I

    iput v0, p0, Lcom/coremobility/e/b;->c:I

    iput v1, p0, Lcom/coremobility/e/b;->r:I

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/coremobility/e/b;->q:I

    iget v3, p0, Lcom/coremobility/e/b;->p:I

    if-lt v2, v3, :cond_0

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v0, "CM+MMD unfinished field:"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v5, v6}, Lcom/coremobility/e/b;->a(II)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_3
    iget v2, p0, Lcom/coremobility/e/b;->q:I

    iget v3, p0, Lcom/coremobility/e/b;->p:I

    if-lt v2, v3, :cond_1

    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v2, "CM+MMD unskippable error:"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v5, v0}, Lcom/coremobility/e/b;->a(II)V

    iget v1, p0, Lcom/coremobility/e/b;->p:I

    iput v1, p0, Lcom/coremobility/e/b;->c:I

    iput-boolean v0, p0, Lcom/coremobility/e/b;->b:Z

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/e/b;->b:Z

    return v0
.end method
