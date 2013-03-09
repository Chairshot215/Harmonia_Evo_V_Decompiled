.class public final Lcom/coremobility/h/x;
.super Ljava/util/Vector;


# instance fields
.field final synthetic a:Lcom/coremobility/h/u;


# direct methods
.method protected constructor <init>(Lcom/coremobility/h/u;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/h/x;->a:Lcom/coremobility/h/u;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;I[BLcom/coremobility/f/b;)Lcom/coremobility/h/w;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/coremobility/h/x;->a(ILjava/lang/String;I[BLcom/coremobility/h/ab;Lcom/coremobility/f/b;)Lcom/coremobility/h/w;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;I[BLcom/coremobility/h/ab;Lcom/coremobility/f/b;)Lcom/coremobility/h/w;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/h/w;

    iget-object v2, p0, Lcom/coremobility/h/x;->a:Lcom/coremobility/h/u;

    invoke-direct {v0, v2}, Lcom/coremobility/h/w;-><init>(Lcom/coremobility/h/u;)V

    iput p1, v0, Lcom/coremobility/h/w;->a:I

    iput-object p2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iput v1, v0, Lcom/coremobility/h/w;->f:I

    iput p3, v0, Lcom/coremobility/h/w;->g:I

    iput-object p4, v0, Lcom/coremobility/h/w;->c:[B

    iput-object v3, v0, Lcom/coremobility/h/w;->d:Ljava/lang/String;

    iput-object p5, v0, Lcom/coremobility/h/w;->e:Lcom/coremobility/h/ab;

    iput-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    iput v1, v0, Lcom/coremobility/h/w;->j:I

    iput-object p6, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {p0, v0}, Lcom/coremobility/h/x;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/coremobility/h/x;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "empty"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coremobility/h/x;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/h/w;

    iget-object v1, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/coremobility/h/w;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " op="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/coremobility/h/w;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/coremobility/h/w;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "txn_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/coremobility/h/w;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method
