.class public Lcom/futuredial/publicobj/ItemArray;
.super Ljava/lang/Object;
.source "ItemArray.java"


# instance fields
.field public m_objItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    .line 10
    return-void
.end method


# virtual methods
.method public AddItem(Lcom/futuredial/publicobj/Item;)Z
    .locals 1
    .parameter "objItem"

    .prologue
    .line 22
    monitor-enter p0

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/futuredial/publicobj/Item;->GetFieldCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    monitor-exit p0

    .line 27
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public AddItem(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, objItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public GetItemAt(I)Lcom/futuredial/publicobj/Item;
    .locals 1
    .parameter "nIdx"

    .prologue
    .line 60
    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/publicobj/Item;

    monitor-exit p0

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public GetItemCount()I
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RemoveItem(I)Z
    .locals 2
    .parameter "Index"

    .prologue
    const/4 v0, 0x0

    .line 33
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    .line 38
    :goto_0
    return v0

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Reset()V
    .locals 1

    .prologue
    .line 14
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
