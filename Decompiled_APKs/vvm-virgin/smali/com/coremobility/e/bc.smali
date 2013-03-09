.class public final Lcom/coremobility/e/bc;
.super Lcom/coremobility/j/j;


# instance fields
.field final synthetic a:Lcom/coremobility/e/aw;


# direct methods
.method public constructor <init>(Lcom/coremobility/e/aw;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    invoke-direct {p0}, Lcom/coremobility/j/j;-><init>()V

    new-instance v0, Lcom/coremobility/e/bb;

    invoke-direct {v0, p1}, Lcom/coremobility/e/bb;-><init>(Lcom/coremobility/e/aw;)V

    iput-object v0, p0, Lcom/coremobility/e/bc;->c:Lcom/coremobility/j/k;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/bc;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0}, Lcom/coremobility/j/h;->a()I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    iget-object v1, v1, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v1}, Lcom/coremobility/e/bc;->d()V

    iget-object v1, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    iget v2, p0, Lcom/coremobility/e/bc;->d:I

    invoke-virtual {v1, p1, v2, v0}, Lcom/coremobility/e/aw;->a(III)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    iget-object v1, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    invoke-virtual {v1}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/coremobility/e/a;->a(II)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    iget v1, p0, Lcom/coremobility/e/bc;->d:I

    iget-object v2, p0, Lcom/coremobility/e/bc;->b:Lcom/coremobility/j/h;

    invoke-virtual {v2}, Lcom/coremobility/j/h;->a()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/coremobility/e/aw;->a(III)V

    goto :goto_0
.end method

.method public final a(III)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    if-ne p3, v0, :cond_2

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput p3, p0, Lcom/coremobility/e/bc;->d:I

    iget-object v0, p0, Lcom/coremobility/e/bc;->c:Lcom/coremobility/j/k;

    check-cast v0, Lcom/coremobility/e/bb;

    iget-object v1, p0, Lcom/coremobility/e/bc;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/coremobility/e/bb;->a(Lcom/coremobility/j/h;III)Lcom/coremobility/j/h;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/bc;->b:Lcom/coremobility/j/h;

    iget-object v0, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->b(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->b(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/e/bc;->b:Lcom/coremobility/j/h;

    invoke-virtual {v1}, Lcom/coremobility/j/h;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/ax;->a(J)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    iget-object v1, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    invoke-virtual {v1}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    iget-object v2, p0, Lcom/coremobility/e/bc;->b:Lcom/coremobility/j/h;

    iget v2, v2, Lcom/coremobility/j/h;->c:I

    iget-object v3, p0, Lcom/coremobility/e/bc;->a:Lcom/coremobility/e/aw;

    iget v3, v3, Lcom/coremobility/e/aw;->q:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/coremobility/e/a;->a(IIII)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/e/bc;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0, p0}, Lcom/coremobility/j/h;->a(Lcom/coremobility/j/j;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
