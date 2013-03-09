.class Lcom/htc/socialnetwork/Cache$BufferPool;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/socialnetwork/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferPool"
.end annotation


# instance fields
.field private mCacheSize:I

.field private mPool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mCacheSize:I

    iput p2, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mCacheSize:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    new-array v2, p2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public acquire()[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget v2, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mCacheSize:I

    new-array v0, v2, [B

    goto :goto_0
.end method

.method public release([B)V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
