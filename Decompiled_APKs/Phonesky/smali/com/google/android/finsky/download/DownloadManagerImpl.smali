.class public Lcom/google/android/finsky/download/DownloadManagerImpl;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadManager;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "download-manager-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/download/DownloadManagerImpl;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadManagerImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/download/DownloadManagerImpl;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadManagerImpl;->synchronousRemove(Landroid/net/Uri;)V

    return-void
.end method

.method private synchronousRemove(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadManagerImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public enqueue(Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V
    .locals 2
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/download/DownloadRequest;",
            "Lcom/google/android/finsky/utils/ParameterizedRunnable",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, listener:Lcom/google/android/finsky/utils/ParameterizedRunnable;,"Lcom/google/android/finsky/utils/ParameterizedRunnable<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/download/DownloadManagerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadManagerImpl$1;-><init>(Lcom/google/android/finsky/download/DownloadManagerImpl;Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public queryAllDownloads()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 91
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "uri"

    aput-object v0, v2, v4

    const-string v0, "status"

    aput-object v0, v2, v5

    const-string v0, "lastmod"

    aput-object v0, v2, v8

    const/4 v0, 0x4

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 107
    .local v2, columns:[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadManagerImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 112
    const-string v0, "Download progress cursor null when attempting to fetch all Downloads."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :goto_1
    return-object v3

    .line 99
    .end local v2           #columns:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "status"

    aput-object v0, v2, v4

    const-string v0, "lastmod"

    aput-object v0, v2, v5

    const-string v0, "title"

    aput-object v0, v2, v8

    .restart local v2       #columns:[Ljava/lang/String;
    goto :goto_0

    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    move-object v3, v6

    .line 116
    goto :goto_1
.end method

.method public queryStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadManagerImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "status"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public remove(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/download/DownloadManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/download/DownloadManagerImpl$2;-><init>(Lcom/google/android/finsky/download/DownloadManagerImpl;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
