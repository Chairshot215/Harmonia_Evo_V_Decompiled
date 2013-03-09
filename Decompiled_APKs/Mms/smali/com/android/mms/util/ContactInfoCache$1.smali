.class Lcom/android/mms/util/ContactInfoCache$1;
.super Landroid/database/ContentObserver;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ContactInfoCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ContactInfoCache;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/mms/util/ContactInfoCache$1;->this$0:Lcom/android/mms/util/ContactInfoCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfUpdate"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache$1;->this$0:Lcom/android/mms/util/ContactInfoCache;

    #getter for: Lcom/android/mms/util/ContactInfoCache;->mCacheRebuildLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/util/ContactInfoCache;->access$000(Lcom/android/mms/util/ContactInfoCache;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache$1;->this$0:Lcom/android/mms/util/ContactInfoCache;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z
    invoke-static {v0, v2}, Lcom/android/mms/util/ContactInfoCache;->access$102(Lcom/android/mms/util/ContactInfoCache;Z)Z

    .line 195
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache$1;->this$0:Lcom/android/mms/util/ContactInfoCache;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z
    invoke-static {v0, v2}, Lcom/android/mms/util/ContactInfoCache;->access$202(Lcom/android/mms/util/ContactInfoCache;Z)Z

    .line 196
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache$1;->this$0:Lcom/android/mms/util/ContactInfoCache;

    #calls: Lcom/android/mms/util/ContactInfoCache;->startCacheRebuilder()V
    invoke-static {v0}, Lcom/android/mms/util/ContactInfoCache;->access$300(Lcom/android/mms/util/ContactInfoCache;)V

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
