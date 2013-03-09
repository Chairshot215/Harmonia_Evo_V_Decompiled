.class Lcom/android/settings/framework/storage/HtcCacheStorage$1;
.super Ljava/lang/Object;
.source "HtcCacheStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/storage/HtcCacheStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/storage/HtcCacheStorage;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/storage/HtcCacheStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    .local p0, this:Lcom/android/settings/framework/storage/HtcCacheStorage$1;,"Lcom/android/settings/framework/storage/HtcCacheStorage.1;"
    iput-object p1, p0, Lcom/android/settings/framework/storage/HtcCacheStorage$1;->this$0:Lcom/android/settings/framework/storage/HtcCacheStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    .local p0, this:Lcom/android/settings/framework/storage/HtcCacheStorage$1;,"Lcom/android/settings/framework/storage/HtcCacheStorage.1;"
    iget-object v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage$1;->this$0:Lcom/android/settings/framework/storage/HtcCacheStorage;

    iget-boolean v0, v0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mAbort:Z

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/framework/storage/HtcCacheStorage$1;->this$0:Lcom/android/settings/framework/storage/HtcCacheStorage;

    iget-wide v2, v2, Lcom/android/settings/framework/storage/HtcCacheStorage;->mUptimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage$1;->this$0:Lcom/android/settings/framework/storage/HtcCacheStorage;

    invoke-virtual {v0}, Lcom/android/settings/framework/storage/HtcCacheStorage;->releaseObject()V

    .line 48
    iget-object v0, p0, Lcom/android/settings/framework/storage/HtcCacheStorage$1;->this$0:Lcom/android/settings/framework/storage/HtcCacheStorage;

    iget-boolean v0, v0, Lcom/android/settings/framework/storage/HtcCacheStorage;->mRunGarbageCollector:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 53
    :cond_0
    return-void
.end method
