.class final Lcom/coremobility/integration/a/f;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/a/a;

.field private b:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/integration/a/f;->a:Lcom/coremobility/integration/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final a(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/coremobility/integration/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coremobility/integration/a/b;->a()V

    invoke-virtual {v0}, Lcom/coremobility/integration/a/b;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/a/b;

    invoke-direct {v0}, Lcom/coremobility/integration/a/b;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/coremobility/integration/a/b;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/coremobility/integration/a/b;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/coremobility/integration/a/f;)V
    .locals 6

    iget-object v0, p1, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/integration/a/b;

    iget-object v2, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/b;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/coremobility/integration/a/b;->b()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/a/b;->b(I)I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/a/b;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/coremobility/integration/a/b;->a(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/integration/a/b;

    iget-object v2, p0, Lcom/coremobility/integration/a/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method
