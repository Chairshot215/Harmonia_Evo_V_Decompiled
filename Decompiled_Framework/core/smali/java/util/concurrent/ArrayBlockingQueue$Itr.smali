.class Ljava/util/concurrent/ArrayBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:I

.field private nextIndex:I

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private remaining:I

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 2

    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    iget v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    if-lez v1, :cond_0

    iget v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v2, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    if-gtz v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_0
    :try_start_1
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    :cond_1
    :goto_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->remaining:I

    if-lez v2, :cond_2

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_3
    :try_start_2
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public remove()V
    .locals 6

    const/4 v5, -0x1

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v4, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ne v0, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    :cond_0
    const/4 v4, -0x1

    :try_start_1
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v4, v4, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v4, v4, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    if-nez v2, :cond_1

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v4

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
