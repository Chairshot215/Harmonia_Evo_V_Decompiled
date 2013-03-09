.class public Lcom/android/settings/framework/storage/HtcCacheStorage;
.super Ljava/lang/Object;
.source "HtcCacheStorage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mAbort:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mRunGarbageCollector:Z

.field protected mRunnable:Ljava/lang/Runnable;

.field protected mUptimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lcom/android/settings/framework/storage/HtcCacheStorage;,"Lcom/android/settings/framework/storage/HtcCacheStorage<TT;>;"
    const/4 v0, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mAbort:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mRunGarbageCollector:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/android/settings/framework/storage/HtcCacheStorage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/storage/HtcCacheStorage$1;-><init>(Lcom/android/settings/framework/storage/HtcCacheStorage;)V

    iput-object v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public delayMemoryRelease(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 96
    .local p0, this:Lcom/android/settings/framework/storage/HtcCacheStorage;,"Lcom/android/settings/framework/storage/HtcCacheStorage<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mUptimeMillis:J

    .line 97
    iget-object v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/android/settings/framework/storage/HtcCacheStorage;,"Lcom/android/settings/framework/storage/HtcCacheStorage<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public releaseObject()V
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/android/settings/framework/storage/HtcCacheStorage;,"Lcom/android/settings/framework/storage/HtcCacheStorage<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mObject:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public runGarbageCollectorAfterReleasing(Z)V
    .locals 0
    .parameter "run"

    .prologue
    .line 86
    .local p0, this:Lcom/android/settings/framework/storage/HtcCacheStorage;,"Lcom/android/settings/framework/storage/HtcCacheStorage<TT;>;"
    iput-boolean p1, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mRunGarbageCollector:Z

    .line 87
    return-void
.end method

.method public setAbort(Z)V
    .locals 0
    .parameter "abort"

    .prologue
    .line 75
    .local p0, this:Lcom/android/settings/framework/storage/HtcCacheStorage;,"Lcom/android/settings/framework/storage/HtcCacheStorage<TT;>;"
    iput-boolean p1, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mAbort:Z

    .line 76
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/android/settings/framework/storage/HtcCacheStorage;,"Lcom/android/settings/framework/storage/HtcCacheStorage<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mObject:Ljava/lang/Object;

    .line 64
    return-void
.end method
