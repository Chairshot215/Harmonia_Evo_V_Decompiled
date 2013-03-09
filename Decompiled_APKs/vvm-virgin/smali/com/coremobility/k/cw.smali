.class public final Lcom/coremobility/k/cw;
.super Lcom/coremobility/e/c;


# instance fields
.field final synthetic a:Lcom/coremobility/k/cv;


# direct methods
.method protected constructor <init>(Lcom/coremobility/k/cv;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/k/cw;->a:Lcom/coremobility/k/cv;

    invoke-direct {p0}, Lcom/coremobility/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/coremobility/k/cw;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/k/cw;->a:Lcom/coremobility/k/cv;

    invoke-static {v0}, Lcom/coremobility/k/cv;->b(Lcom/coremobility/k/cv;)Lcom/coremobility/e/bd;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/k/cw;->a:Lcom/coremobility/k/cv;

    iget-object v1, v1, Lcom/coremobility/k/cv;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cw;->a:Lcom/coremobility/k/cv;

    iget-object v0, v0, Lcom/coremobility/k/cv;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cw;->a:Lcom/coremobility/k/cv;

    invoke-static {v0}, Lcom/coremobility/k/cv;->c(Lcom/coremobility/k/cv;)Lcom/coremobility/e/bd;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x81

    invoke-virtual {v0, v1, v2, p1}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/coremobility/k/cw;->a:Lcom/coremobility/k/cv;

    invoke-static {v1}, Lcom/coremobility/k/cv;->d(Lcom/coremobility/k/cv;)Lcom/coremobility/e/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cw;->a:Lcom/coremobility/k/cv;

    invoke-virtual {v0}, Lcom/coremobility/k/cv;->g()V

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cw;->a:Lcom/coremobility/k/cv;

    invoke-static {v0}, Lcom/coremobility/k/cv;->a(Lcom/coremobility/k/cv;)I

    move-result v0

    return v0
.end method

.method public final c()S
    .locals 1

    const/16 v0, 0x6099

    return v0
.end method
