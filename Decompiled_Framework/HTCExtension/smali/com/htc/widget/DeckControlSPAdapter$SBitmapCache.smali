.class public Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
.super Ljava/lang/Object;
.source "DeckControlSPAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControlSPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SBitmapCache"
.end annotation


# instance fields
.field private capacity:I

.field private sbitmaparray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny/SBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/htc/widget/DeckControlSPAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DeckControlSPAdapter;I)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    iput p2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Integer;IZ)V
    .locals 8

    const/4 v3, -0x1

    const/4 v1, -0x1

    const/4 v4, -0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    sub-int v6, v2, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sub-int v6, v4, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_0

    move v2, v4

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny/SBitmap;

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_2
    :goto_1
    const/4 v5, 0x0

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v4, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny/SBitmap;

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 5

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny/SBitmap;

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public clear(I)V
    .locals 5

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-lt v1, p1, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny/SBitmap;

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->clear()V

    return-void
.end method

.method public pull(Ljava/lang/Integer;)Lcom/htc/sunny/SBitmap;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pullAsync(Ljava/lang/Integer;JLjava/util/concurrent/TimeUnit;)Lcom/htc/sunny/SBitmap;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunny/SBitmap;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-ne v3, v6, :cond_0

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "SPresentationAdapter"

    const-string v5, "SBitmapCache:pullAsync"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v6, :cond_0

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v4

    if-ne v3, v6, :cond_3

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v4
.end method

.method public push(Ljava/lang/Integer;Lcom/htc/sunny/SBitmap;IZ)Z
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny/SBitmap;

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p3, p4}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->remove(Ljava/lang/Integer;IZ)V

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SBitmap;

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public setCapacity(I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-eq p1, v1, :cond_0

    if-ge p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->center:I
    invoke-static {v2}, Lcom/htc/widget/DeckControlSPAdapter;->access$400(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->remove(Ljava/lang/Integer;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_3
    :try_start_1
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_4
    :try_start_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
