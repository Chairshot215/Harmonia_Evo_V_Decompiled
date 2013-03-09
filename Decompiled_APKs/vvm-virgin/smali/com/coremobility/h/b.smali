.class public final Lcom/coremobility/h/b;
.super Lcom/coremobility/j/j;


# instance fields
.field final synthetic a:Lcom/coremobility/h/a;


# direct methods
.method public constructor <init>(Lcom/coremobility/h/a;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/h/b;->a:Lcom/coremobility/h/a;

    invoke-direct {p0}, Lcom/coremobility/j/j;-><init>()V

    new-instance v0, Lcom/coremobility/h/e;

    invoke-direct {v0, p1}, Lcom/coremobility/h/e;-><init>(Lcom/coremobility/h/a;)V

    iput-object v0, p0, Lcom/coremobility/h/b;->c:Lcom/coremobility/j/k;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/coremobility/h/b;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0}, Lcom/coremobility/j/h;->a()I

    iget-object v0, p0, Lcom/coremobility/h/b;->a:Lcom/coremobility/h/a;

    invoke-virtual {v0, p1}, Lcom/coremobility/h/a;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/h/b;->a:Lcom/coremobility/h/a;

    iget-object v0, v0, Lcom/coremobility/h/a;->d:Lcom/coremobility/h/f;

    invoke-virtual {v0, p1}, Lcom/coremobility/h/f;->a(I)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/h/b;->a:Lcom/coremobility/h/a;

    iget-object v1, p0, Lcom/coremobility/h/b;->b:Lcom/coremobility/j/h;

    invoke-virtual {v1}, Lcom/coremobility/j/h;->a()I

    invoke-virtual {v0, p1}, Lcom/coremobility/h/a;->a(I)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v2, p0, Lcom/coremobility/h/b;->d:I

    iget-object v0, p0, Lcom/coremobility/h/b;->c:Lcom/coremobility/j/k;

    check-cast v0, Lcom/coremobility/h/e;

    iget-object v1, p0, Lcom/coremobility/h/b;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0, v1, p1}, Lcom/coremobility/h/e;->a(Lcom/coremobility/j/h;I)Lcom/coremobility/j/h;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/h/b;->b:Lcom/coremobility/j/h;

    iget-object v0, p0, Lcom/coremobility/h/b;->a:Lcom/coremobility/h/a;

    iget-object v0, v0, Lcom/coremobility/h/a;->d:Lcom/coremobility/h/f;

    iget-object v1, p0, Lcom/coremobility/h/b;->b:Lcom/coremobility/j/h;

    iget v1, v1, Lcom/coremobility/j/h;->c:I

    invoke-virtual {v0, p1, v1}, Lcom/coremobility/h/f;->b(II)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/h/b;->b:Lcom/coremobility/j/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/h/b;->b:Lcom/coremobility/j/h;

    invoke-virtual {v0, p0}, Lcom/coremobility/j/h;->a(Lcom/coremobility/j/j;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x32

    const-string v1, "Retry scheme is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
