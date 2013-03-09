.class public Lcom/android/providers/contacts/HtcUtils/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;
    }
.end annotation


# static fields
.field private static final GROUP_COUNT_UPDATE:I = 0x1000

.field static final TAG:Ljava/lang/String; = "CacheUtils"

.field private static mCacheThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getCacheHandlerThread()Landroid/os/HandlerThread;
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CacheUtilsThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    .line 27
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static quitCacheThreadIfNeed()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 35
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/CacheUtils;->mCacheThread:Landroid/os/HandlerThread;

    .line 38
    :cond_0
    return-void
.end method
