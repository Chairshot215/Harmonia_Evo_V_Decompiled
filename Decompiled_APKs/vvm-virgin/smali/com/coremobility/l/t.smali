.class public final Lcom/coremobility/l/t;
.super Ljava/util/Vector;


# instance fields
.field final synthetic a:Lcom/coremobility/l/s;


# direct methods
.method protected constructor <init>(Lcom/coremobility/l/s;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/l/t;->a:Lcom/coremobility/l/s;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/coremobility/l/u;
    .locals 2

    new-instance v0, Lcom/coremobility/l/u;

    iget-object v1, p0, Lcom/coremobility/l/t;->a:Lcom/coremobility/l/s;

    invoke-direct {v0, v1}, Lcom/coremobility/l/u;-><init>(Lcom/coremobility/l/s;)V

    iput p1, v0, Lcom/coremobility/l/u;->a:I

    invoke-virtual {p0, v0}, Lcom/coremobility/l/t;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final b(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/coremobility/l/t;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/coremobility/l/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/u;

    iget v0, v0, Lcom/coremobility/l/u;->a:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final c(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/coremobility/l/t;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/coremobility/l/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/u;

    iget v0, v0, Lcom/coremobility/l/u;->a:I

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/coremobility/l/t;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v2

    :goto_1
    add-int/lit8 v2, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1
.end method
