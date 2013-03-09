.class public final Lcom/coremobility/c/ag;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:S

.field protected c:S

.field protected final d:S

.field final synthetic e:Lcom/coremobility/c/ae;


# direct methods
.method public constructor <init>(Lcom/coremobility/c/ae;)V
    .locals 2

    const/16 v1, 0x8

    iput-object p1, p0, Lcom/coremobility/c/ag;->e:Lcom/coremobility/c/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v1, p0, Lcom/coremobility/c/ag;->d:S

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    iput-short v1, p0, Lcom/coremobility/c/ag;->b:S

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/coremobility/c/ag;->c:S

    return-void
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    return v0
.end method

.method public final a(Lcom/coremobility/c/al;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p1}, Lcom/coremobility/c/al;->d()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    iget-short v1, p0, Lcom/coremobility/c/ag;->c:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/coremobility/c/ag;->c:S

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final a(S)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    if-ge p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/coremobility/c/ag;->c:S

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

.method final b(S)Lcom/coremobility/c/al;
    .locals 1

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
