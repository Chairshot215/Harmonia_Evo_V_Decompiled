.class public final Lcom/coremobility/h/e;
.super Lcom/coremobility/j/k;


# instance fields
.field final synthetic a:Lcom/coremobility/h/a;


# direct methods
.method public constructor <init>(Lcom/coremobility/h/a;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/coremobility/h/e;->a:Lcom/coremobility/h/a;

    invoke-direct {p0}, Lcom/coremobility/j/k;-><init>()V

    new-array v0, v10, [Lcom/coremobility/j/i;

    iput-object v0, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    move v2, v1

    :goto_0
    if-ge v2, v10, :cond_1

    const/4 v0, 0x6

    new-array v3, v0, [I

    mul-int/lit8 v4, v2, 0x6

    move v0, v1

    :goto_1
    const/4 v5, 0x3

    if-ge v0, v5, :cond_0

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    mul-int/lit8 v6, v0, 0x2

    iget-object v7, p1, Lcom/coremobility/h/a;->b:Lcom/coremobility/integration/a/a;

    add-int/lit16 v8, v5, 0x1810

    iget-object v9, p0, Lcom/coremobility/h/e;->b:[I

    aget v9, v9, v5

    invoke-virtual {v7, v8, v1, v9}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v7

    aput v7, v3, v6

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p1, Lcom/coremobility/h/a;->b:Lcom/coremobility/integration/a/a;

    add-int/lit8 v8, v5, 0x1

    add-int/lit16 v8, v8, 0x1810

    iget-object v9, p0, Lcom/coremobility/h/e;->b:[I

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    invoke-virtual {v7, v8, v1, v5}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v5

    aput v5, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    new-instance v4, Lcom/coremobility/j/i;

    invoke-direct {v4, v3}, Lcom/coremobility/j/i;-><init>([I)V

    aput-object v4, v0, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/coremobility/j/h;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    array-length v0, v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0, p1}, Lcom/coremobility/j/k;->a(I)Lcom/coremobility/j/h;

    move-result-object v0

    if-nez v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    aget-object v1, v1, v3

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4b3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/j/h;I)Lcom/coremobility/j/h;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_4

    iget v0, p1, Lcom/coremobility/j/h;->b:I

    invoke-static {v0}, Lcom/coremobility/h/e;->b(I)I

    move-result v0

    :goto_0
    invoke-static {p2}, Lcom/coremobility/h/e;->b(I)I

    move-result v2

    if-nez v0, :cond_8

    if-nez v2, :cond_8

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/coremobility/j/h;->b:I

    :cond_0
    move v0, p2

    move v2, v1

    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coremobility/j/h;->d()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eq v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/coremobility/j/h;->d()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    instance-of v0, p1, Lcom/coremobility/h/d;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/coremobility/h/d;

    invoke-static {v0}, Lcom/coremobility/h/d;->a(Lcom/coremobility/h/d;)I

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    if-eqz p2, :cond_7

    invoke-virtual {p0, p2}, Lcom/coremobility/h/e;->a(I)Lcom/coremobility/j/h;

    move-result-object p1

    :cond_3
    :goto_2
    return-object p1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/coremobility/h/d;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/coremobility/h/d;

    invoke-static {v0}, Lcom/coremobility/h/d;->a(Lcom/coremobility/h/d;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_6
    invoke-virtual {p1, p2}, Lcom/coremobility/j/h;->a(I)V

    goto :goto_2

    :cond_7
    move-object p1, v1

    goto :goto_2

    :cond_8
    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_1
.end method
