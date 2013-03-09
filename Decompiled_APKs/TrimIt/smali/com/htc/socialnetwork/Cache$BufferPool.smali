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
    .parameter "poolCount"
    .parameter "cacheSize"

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 333
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mCacheSize:I

    .line 337
    iput p2, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mCacheSize:I

    .line 339
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    new-array v2, p2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire()[B
    .locals 3

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 347
    .local v0, buffer:[B
    :try_start_0
    iget-object v2, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #buffer:[B
    check-cast v0, [B
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .restart local v0       #buffer:[B
    :goto_0
    return-object v0

    .line 348
    .end local v0           #buffer:[B
    :catch_0
    move-exception v1

    .line 349
    .local v1, nse:Ljava/util/NoSuchElementException;
    iget v2, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mCacheSize:I

    new-array v0, v2, [B

    .restart local v0       #buffer:[B
    goto :goto_0
.end method

.method public release([B)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/htc/socialnetwork/Cache$BufferPool;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method
