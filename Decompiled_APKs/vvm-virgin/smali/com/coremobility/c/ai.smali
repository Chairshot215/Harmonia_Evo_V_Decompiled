.class public final Lcom/coremobility/c/ai;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Vector;

.field protected b:Lcom/coremobility/integration/b/c;

.field final synthetic c:Lcom/coremobility/c/ah;


# direct methods
.method public constructor <init>(Lcom/coremobility/c/ah;)V
    .locals 7

    const/4 v5, 0x2

    const/16 v6, 0x7000

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/coremobility/c/ai;->c:Lcom/coremobility/c/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/ai;->b:Lcom/coremobility/integration/b/c;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/c/ai;->a:Ljava/util/Vector;

    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/ai;->b:Lcom/coremobility/integration/b/c;

    iget-object v0, p0, Lcom/coremobility/c/ai;->b:Lcom/coremobility/integration/b/c;

    invoke-virtual {v0, v6}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v0

    if-ge v0, v5, :cond_1

    new-instance v2, Lcom/coremobility/integration/m;

    invoke-direct {v2, v1}, Lcom/coremobility/integration/m;-><init>(I)V

    :goto_0
    if-ge v0, v5, :cond_1

    new-instance v3, Lcom/coremobility/c/ak;

    invoke-direct {v3, p1}, Lcom/coremobility/c/ak;-><init>(Lcom/coremobility/c/ah;)V

    iput v1, v3, Lcom/coremobility/c/ak;->a:I

    iput v1, v3, Lcom/coremobility/c/ak;->b:I

    iget-object v4, p0, Lcom/coremobility/c/ai;->b:Lcom/coremobility/integration/b/c;

    invoke-virtual {v4, v6, v2, v3}, Lcom/coremobility/integration/b/c;->a(ILcom/coremobility/integration/m;Lcom/coremobility/integration/u;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/ai;->b:Lcom/coremobility/integration/b/c;

    invoke-virtual {v0, v6}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_4

    new-instance v3, Lcom/coremobility/integration/m;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/coremobility/integration/m;-><init>(I)V

    iget-object v4, p0, Lcom/coremobility/c/ai;->b:Lcom/coremobility/integration/b/c;

    invoke-virtual {v4, v6, v0, v3}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_2
    new-instance v4, Lcom/coremobility/c/ak;

    invoke-direct {v4, p1}, Lcom/coremobility/c/ak;-><init>(Lcom/coremobility/c/ah;)V

    iget-object v5, p0, Lcom/coremobility/c/ai;->b:Lcom/coremobility/integration/b/c;

    iget v3, v3, Lcom/coremobility/integration/m;->a:I

    invoke-virtual {v5, v6, v3, v4}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/u;)Z

    move-result v3

    if-nez v3, :cond_3

    iput v1, v4, Lcom/coremobility/c/ak;->a:I

    iput v1, v4, Lcom/coremobility/c/ak;->b:I

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_3
    iget-object v3, p0, Lcom/coremobility/c/ai;->a:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    const/16 v4, 0x7000

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/c/ai;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/ai;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/ak;

    iput p2, v0, Lcom/coremobility/c/ak;->a:I

    new-instance v1, Lcom/coremobility/integration/m;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/coremobility/integration/m;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/c/ai;->b:Lcom/coremobility/integration/b/c;

    invoke-virtual {v2, v4, p1, v1}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/coremobility/c/ai;->b:Lcom/coremobility/integration/b/c;

    iget v1, v1, Lcom/coremobility/integration/m;->a:I

    invoke-virtual {v2, v4, v1, v0}, Lcom/coremobility/integration/b/c;->b(IILcom/coremobility/integration/u;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/c/ai;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v2

    :goto_0
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/c/ai;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/ak;

    iget v0, v0, Lcom/coremobility/c/ak;->a:I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
