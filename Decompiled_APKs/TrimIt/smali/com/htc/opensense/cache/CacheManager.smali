.class public Lcom/htc/opensense/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/cache/CacheManager$ImageCallable;,
        Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;,
        Lcom/htc/opensense/cache/CacheManager$Info;,
        Lcom/htc/opensense/cache/CacheManager$FileInfo;
    }
.end annotation


# static fields
.field public static final BOTTOM_BOUND:I = 0x61a80

.field public static final CACHE_TO_PROVIDER:Ljava/lang/String; = "cache_to_provider"

.field public static final CATCH_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.htc.cachemanager"

.field static final DEFAULT_FILE_TYPE:Ljava/lang/String; = "jpg"

.field public static final DOWNLOAD_EXTRAS_EXPEDITED:Ljava/lang/String; = "expedited"

.field private static final MAX_RETRY_GENERAL:I = 0x3

.field private static final PLACE_PATTERN:Ljava/lang/String; = ".+\\.[0-9a-zA-Z]+\\s*"

.field private static TAG:Ljava/lang/String; = null

.field public static final TIME_OUT:I = 0xea60

.field public static final UPPER_BOUND:I = 0x1e8480

.field private static cacheManagerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/cache/CacheManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected static final sFileReadLock:Ljava/util/concurrent/locks/Lock;

.field protected static final sFileWriteLock:Ljava/util/concurrent/locks/Lock;

.field private static final sPlacePattern:Ljava/util/regex/Pattern;


# instance fields
.field public final DEFAULT_MAX_SIZE_ALLOCATED:I

.field public cacheDir:Ljava/lang/String;

.field callbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/cache/DownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

.field mHandler:Landroid/os/Handler;

.field public maxSizeAllocated:I

.field private final minId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private needRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private providerClient:Landroid/content/ContentProviderClient;

.field private final sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field stoper:Lcom/htc/opensense/cache/ThreadExecutorHelper$TaskStopExecutor;

.field private final taskPools:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "CacheManager"

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    .line 68
    const-string v0, ".+\\.[0-9a-zA-Z]+\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->sPlacePattern:Ljava/util/regex/Pattern;

    .line 115
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 120
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    .line 121
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "dir"
    .parameter "context"

    .prologue
    const v2, 0x4c4b40

    const/4 v1, 0x1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->taskPools:Ljava/util/concurrent/ConcurrentMap;

    .line 85
    iput v2, p0, Lcom/htc/opensense/cache/CacheManager;->DEFAULT_MAX_SIZE_ALLOCATED:I

    .line 90
    iput v2, p0, Lcom/htc/opensense/cache/CacheManager;->maxSizeAllocated:I

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 114
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->minId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 310
    new-instance v0, Lcom/htc/opensense/cache/CacheManager$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/cache/CacheManager$1;-><init>(Lcom/htc/opensense/cache/CacheManager;)V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->stoper:Lcom/htc/opensense/cache/ThreadExecutorHelper$TaskStopExecutor;

    .line 168
    iput-object p1, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    .line 169
    const-string v0, "cache_to_provider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory isnn\'t writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    new-instance v0, Lcom/htc/opensense/cache/ThreadExecutorHelper;

    invoke-direct {v0}, Lcom/htc/opensense/cache/ThreadExecutorHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    .line 178
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.cachemanager"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->needRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 181
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/cache/CacheManager;ILcom/htc/opensense/cache/DownloadCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/cache/CacheManager;->addCallBack(ILcom/htc/opensense/cache/DownloadCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->taskPools:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/cache/CacheManager;I)Lcom/htc/opensense/cache/CacheManager$Info;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/opensense/cache/CacheManager;->getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/cache/CacheManager;I)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/opensense/cache/CacheManager;->removeCallbackListWithLock(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->needRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/opensense/cache/CacheManager;)Landroid/content/ContentProviderClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/cache/CacheManager;Ljava/lang/String;Z)Lcom/htc/opensense/cache/CacheManager$FileInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/cache/CacheManager;->getRemoteFile(Ljava/lang/String;Z)Lcom/htc/opensense/cache/CacheManager$FileInfo;

    move-result-object v0

    return-object v0
.end method

.method private addCallBack(ILcom/htc/opensense/cache/DownloadCallback;)V
    .locals 4
    .parameter "id"
    .parameter "callback"

    .prologue
    .line 742
    iget-object v2, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 744
    .local v0, callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/cache/DownloadCallback;>;"
    if-nez v0, :cond_0

    .line 745
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 746
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    monitor-exit v2

    .line 750
    return-void

    .line 749
    .end local v0           #callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/cache/DownloadCallback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized checkShouldDeleteData(Ljava/lang/String;)V
    .locals 9
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/opensense/cache/CacheManager;->maxSizeAllocated:I

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    invoke-static {v1, p1}, Lcom/htc/opensense/cache/CacheManager;->getTotalSizeInDir(Landroid/content/ContentProviderClient;Ljava/lang/String;)I

    move-result v1

    sub-int v7, v0, v1

    .line 352
    .local v7, remainSize:I
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remain size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    const v0, 0x61a80

    if-le v7, v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 356
    :cond_1
    :try_start_1
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    const-string v1, "remain size not enough, start delete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "file_size"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "content_uri"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "url_hash"

    aput-object v4, v2, v3

    const-string v3, "status=? AND store_folder=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const-string v5, " last_modified_time ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 365
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const v1, 0x1e8480

    invoke-static {v6, v0, v7, v1}, Lcom/htc/opensense/cache/CacheManager;->deleteData(Landroid/database/Cursor;Landroid/content/ContentProviderClient;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 368
    if-eqz v6, :cond_0

    .line 369
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 350
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #remainSize:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 368
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #remainSize:I
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 369
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .parameter "stream"

    .prologue
    .line 571
    if-eqz p0, :cond_0

    .line 573
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 225
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, uriStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 227
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 228
    .local v1, bufferedInput:Ljava/io/BufferedInputStream;
    const-string v7, "content"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 231
    .local v4, f:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {v7, v10, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 247
    .end local v4           #f:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v7

    .line 234
    :cond_0
    const/4 v3, 0x0

    .line 235
    .local v3, contentInput:Ljava/io/InputStream;
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    .line 236
    .local v6, url:Ljava/net/URL;
    sget-object v7, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get1 :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 238
    .local v2, conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 239
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 240
    if-eqz v3, :cond_1

    .line 241
    new-instance v1, Ljava/io/BufferedInputStream;

    .end local v1           #bufferedInput:Ljava/io/BufferedInputStream;
    const/16 v7, 0x1000

    invoke-direct {v1, v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 244
    .restart local v1       #bufferedInput:Ljava/io/BufferedInputStream;
    :cond_1
    if-eqz v1, :cond_2

    .line 245
    invoke-static {v1, v10, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 246
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    move-object v7, v0

    .line 247
    goto :goto_0

    .line 249
    :cond_2
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-direct {v7}, Ljava/io/FileNotFoundException;-><init>()V

    throw v7
.end method

.method private static deleteData(Landroid/database/Cursor;Landroid/content/ContentProviderClient;II)V
    .locals 9
    .parameter "c"
    .parameter "client"
    .parameter "remainSize"
    .parameter "upper_bound"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 375
    if-eqz p0, :cond_4

    .line 377
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v0, deleteStr:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 380
    .local v3, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x1

    .line 381
    .local v2, first:Z
    sget-object v6, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 383
    const-string v6, "file_size"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 385
    .local v4, size:I
    const-string v6, "content_uri"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 387
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1, v5}, Lcom/htc/opensense/cache/CacheManager;->deleteFileFromUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 390
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content://com.htc.cachemanager/img_cache"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 392
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_2
    if-ltz p3, :cond_3

    add-int/2addr p2, v4

    if-ge p2, p3, :cond_6

    .line 397
    :cond_3
    if-nez v2, :cond_5

    .line 398
    const-string v6, " OR "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :goto_1
    const-string v6, "_id"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v6, "_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    sget-object v6, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remain size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 419
    .end local v0           #deleteStr:Ljava/lang/StringBuilder;
    .end local v2           #first:Z
    .end local v3           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4           #size:I
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 421
    .local v1, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 424
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :cond_4
    :goto_2
    return-void

    .line 400
    .restart local v0       #deleteStr:Ljava/lang/StringBuilder;
    .restart local v2       #first:Z
    .restart local v3       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v4       #size:I
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 407
    :cond_6
    :try_start_1
    sget-object v6, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remain size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " break"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v4           #size:I
    .end local v5           #uri:Landroid/net/Uri;
    :cond_7
    sget-object v6, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 414
    invoke-virtual {p1, v3}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 416
    :cond_8
    sget-object v6, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static deleteFileFromUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 5
    .parameter "client"
    .parameter "uri"

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, uriStr:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    sget-object v2, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file exist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 459
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static findAppendix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 257
    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->sPlacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 258
    .local v0, matches:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "jpg"

    goto :goto_0
.end method

.method private getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;
    .locals 12
    .parameter "url_hash"

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x2

    .line 691
    new-instance v8, Lcom/htc/opensense/cache/CacheManager$Info;

    invoke-direct {v8}, Lcom/htc/opensense/cache/CacheManager$Info;-><init>()V

    .line 692
    .local v8, info:Lcom/htc/opensense/cache/CacheManager$Info;
    iput v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    .line 693
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .local v9, query:Ljava/lang/StringBuilder;
    const-string v0, "url_hash"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "store_folder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    const-string v1, "cache_to_provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 698
    const-string v0, " OR "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "store_folder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache_to_provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :goto_0
    const/4 v6, 0x0

    .line 706
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "content_uri"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "status"

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 709
    if-eqz v6, :cond_1

    .line 711
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    const-string v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    .line 715
    const-string v0, "content_uri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 717
    .local v10, uri:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    .line 719
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    .line 724
    .end local v10           #uri:Ljava/lang/String;
    :cond_1
    iget v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-ne v0, v11, :cond_2

    .line 725
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    iget-object v1, v8, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/htc/opensense/cache/CacheManager;->isUriExist(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 726
    iget-object v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/cache/CacheManager;->deleteFromDb(Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x2

    iput v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :cond_2
    if-eqz v6, :cond_3

    .line 735
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 738
    :cond_3
    return-object v8

    .line 701
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 730
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 732
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    if-eqz v6, :cond_3

    goto :goto_1

    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 735
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 734
    :cond_5
    throw v0
.end method

.method private getRemoteFile(Ljava/lang/String;Z)Lcom/htc/opensense/cache/CacheManager$FileInfo;
    .locals 10
    .parameter "uri"
    .parameter "saveToLocal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v7, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/opensense/cache/CacheManager;->checkShouldDeleteData(Ljava/lang/String;)V

    .line 501
    sget-object v7, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start download file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    .line 503
    .local v3, imageUrl:Ljava/net/URL;
    const/4 v2, 0x0

    .line 506
    .local v2, fail_count:I
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 508
    .local v0, conn:Ljava/net/URLConnection;
    const v7, 0xea60

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 510
    const v7, 0xea60

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 512
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 514
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 515
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    .line 516
    .local v5, photoSize:I
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 517
    .local v4, is:Ljava/io/InputStream;
    if-eqz p2, :cond_1

    invoke-direct {p0, v4, p1}, Lcom/htc/opensense/cache/CacheManager;->saveToLocal(Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 519
    .local v6, saveTo:Landroid/net/Uri;
    :goto_0
    new-instance v7, Lcom/htc/opensense/cache/CacheManager$FileInfo;

    invoke-direct {v7, p0, v6, v5}, Lcom/htc/opensense/cache/CacheManager$FileInfo;-><init>(Lcom/htc/opensense/cache/CacheManager;Landroid/net/Uri;I)V

    return-object v7

    .line 517
    .end local v6           #saveTo:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/htc/opensense/cache/CacheManager;->saveToRemote(Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    .line 520
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #photoSize:I
    :catch_0
    move-exception v1

    .line 521
    .local v1, e:Ljava/io/IOException;
    add-int/lit8 v2, v2, 0x1

    .line 522
    const/4 v7, 0x3

    if-le v2, v7, :cond_0

    .line 523
    throw v1

    .line 525
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 526
    .local v1, e:Landroid/os/RemoteException;
    throw v1
.end method

.method public static getTotalSizeInDir(Landroid/content/ContentProviderClient;Ljava/lang/String;)I
    .locals 9
    .parameter "client"
    .parameter "dir"

    .prologue
    const/4 v8, 0x0

    .line 192
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select str = select sum(file_size) from item where store_folder =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v6, 0x0

    .line 197
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/opensense/cache/Download;->RAWQUERY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select sum(file_size) from item where store_folder =\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 201
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 207
    if-eqz v6, :cond_0

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 203
    :catch_0
    move-exception v7

    .line 205
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    if-eqz v6, :cond_1

    .line 208
    .end local v7           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 211
    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_1

    goto :goto_1
.end method

.method private static geteFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dir"
    .parameter "url"

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/htc/opensense/cache/CacheManager;->findAppendix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;
    .locals 3
    .parameter "context"
    .parameter "dir"

    .prologue
    .line 143
    sget-object v2, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 144
    :try_start_0
    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/cache/CacheManager;

    .line 145
    .local v0, manager:Lcom/htc/opensense/cache/CacheManager;
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/htc/opensense/cache/CacheManager;

    .end local v0           #manager:Lcom/htc/opensense/cache/CacheManager;
    invoke-direct {v0, p1, p0}, Lcom/htc/opensense/cache/CacheManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 147
    .restart local v0       #manager:Lcom/htc/opensense/cache/CacheManager;
    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    monitor-exit v2

    return-object v0

    .line 150
    .end local v0           #manager:Lcom/htc/opensense/cache/CacheManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isUriExist(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 10
    .parameter "client"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 474
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 475
    .local v8, uriStr:Ljava/lang/String;
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check Uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v0, "content"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 477
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 478
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 480
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_exist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 486
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 494
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 486
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 491
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0

    .line 486
    .end local v7           #file:Ljava/io/File;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    .line 494
    goto :goto_0
.end method

.method public static releaseAll()V
    .locals 5

    .prologue
    .line 938
    sget-object v3, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 939
    :try_start_0
    sget-object v2, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 940
    .local v0, itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    sget-object v2, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/cache/CacheManager;

    .line 942
    .local v1, manager:Lcom/htc/opensense/cache/CacheManager;
    invoke-static {v1}, Lcom/htc/opensense/cache/CacheManager;->releaseWithLock(Lcom/htc/opensense/cache/CacheManager;)V

    .line 943
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 945
    .end local v1           #manager:Lcom/htc/opensense/cache/CacheManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    return-void
.end method

.method private static releaseWithLock(Lcom/htc/opensense/cache/CacheManager;)V
    .locals 3
    .parameter "manager"

    .prologue
    .line 916
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->needRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 918
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 920
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->needRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 922
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 925
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    invoke-virtual {v0}, Lcom/htc/opensense/cache/ThreadExecutorHelper;->shutDown()V

    .line 927
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 929
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release CacheManager in folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-void

    .line 922
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeCallbackListWithLock(I)Ljava/util/List;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/cache/DownloadCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private saveToLocal(Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "is"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/htc/opensense/cache/CacheManager;->geteFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 602
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 603
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Cannot create file"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 608
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v6, 0x800

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 609
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 612
    .local v4, out:Ljava/io/BufferedOutputStream;
    const/16 v6, 0x800

    new-array v1, v6, [B

    .line 614
    .local v1, buf:[B
    const/4 v5, -0x1

    .line 616
    .local v5, read_size:I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_2

    .line 617
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 625
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #buf:[B
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .end local v5           #read_size:I
    :catchall_0
    move-exception v6

    if-eqz p1, :cond_1

    .line 626
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 625
    :cond_1
    throw v6

    .line 620
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #buf:[B
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    .restart local v5       #read_size:I
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 621
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 622
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 623
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 625
    if-eqz p1, :cond_3

    .line 626
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 623
    :cond_3
    return-object v6
.end method


# virtual methods
.method public deleteData(J)V
    .locals 10
    .parameter "before"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 427
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "file_size"

    aput-object v3, v2, v7

    const-string v3, "content_uri"

    aput-object v3, v2, v9

    const-string v3, "url_hash"

    aput-object v3, v2, v4

    const-string v3, "status=? AND store_folder=? AND  last_modified_time<?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 435
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {v6, v0, v1, v2}, Lcom/htc/opensense/cache/CacheManager;->deleteData(Landroid/database/Cursor;Landroid/content/ContentProviderClient;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    if-eqz v6, :cond_0

    .line 438
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_0
    return-void

    .line 437
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 438
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_1
    throw v0
.end method

.method protected deleteFromDb(Ljava/lang/String;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 653
    sget-object v2, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 656
    .local v0, downloadUri:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v1

    .line 659
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I
    .locals 8
    .parameter "url"
    .parameter "callback"
    .parameter "data"

    .prologue
    .line 283
    if-nez p3, :cond_0

    .line 284
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 286
    .restart local p3
    :cond_0
    iget-object v7, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    monitor-enter v7

    .line 287
    :try_start_0
    const-string v1, "expedited"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "expedited"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 290
    .local v6, expedited:Z
    :goto_0
    if-eqz v6, :cond_2

    .line 291
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->minId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v2

    .line 295
    .local v2, taskId:I
    :goto_1
    new-instance v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;-><init>(Lcom/htc/opensense/cache/CacheManager;ILjava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)V

    .line 297
    .local v0, fTask:Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    invoke-virtual {v1}, Lcom/htc/opensense/cache/ThreadExecutorHelper;->isShutDown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 298
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    invoke-virtual {v1, v0}, Lcom/htc/opensense/cache/ThreadExecutorHelper;->execute(Ljava/lang/Runnable;)V

    .line 303
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->taskPools:Ljava/util/concurrent/ConcurrentMap;

    iget v3, v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget v1, v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    monitor-exit v7

    return v1

    .line 287
    .end local v0           #fTask:Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;
    .end local v2           #taskId:I
    .end local v6           #expedited:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 293
    .restart local v6       #expedited:Z
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .restart local v2       #taskId:I
    goto :goto_1

    .line 300
    .restart local v0       #fTask:Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t use a ThreadPoolExecutor which has been shutdown"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .end local v0           #fTask:Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;
    .end local v2           #taskId:I
    .end local v6           #expedited:Z
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDownloadInfo(Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager$Info;
    .locals 1
    .parameter "url"

    .prologue
    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/opensense/cache/CacheManager;->getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v0

    return-object v0
.end method

.method protected insertToDb(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "taskId"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 642
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 643
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "url_hash"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v2, "status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v2, "store_folder"

    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v2, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    sget-object v3, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 649
    .local v0, result:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public release()V
    .locals 3

    .prologue
    .line 909
    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 910
    :try_start_0
    invoke-static {p0}, Lcom/htc/opensense/cache/CacheManager;->releaseWithLock(Lcom/htc/opensense/cache/CacheManager;)V

    .line 911
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    monitor-exit v1

    .line 913
    return-void

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveToRemote(Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "is"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 542
    const/4 v4, 0x0

    .line 543
    .local v4, out:Ljava/io/BufferedOutputStream;
    sget-object v7, Lcom/htc/opensense/cache/Download;->CACHE_IMG_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/htc/opensense/cache/CacheManager;->findAppendix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 545
    .local v3, newUri:Landroid/net/Uri;
    sget-object v7, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new Uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const-string v8, "w"

    invoke-virtual {v7, v3, v8}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 548
    .local v2, f:Landroid/os/ParcelFileDescriptor;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 550
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .local v5, out:Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v7, 0x800

    invoke-direct {v0, p1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 551
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/16 v7, 0x800

    new-array v1, v7, [B

    .line 553
    .local v1, buf:[B
    const/4 v6, -0x1

    .line 555
    .local v6, read_size:I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_0

    .line 556
    sget-object v7, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 565
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #buf:[B
    .end local v6           #read_size:I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v2           #f:Landroid/os/ParcelFileDescriptor;
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    :goto_1
    invoke-static {v4}, Lcom/htc/opensense/cache/CacheManager;->closeStream(Ljava/io/Closeable;)V

    throw v7

    .line 560
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #buf:[B
    .restart local v2       #f:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    .restart local v6       #read_size:I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 561
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    invoke-static {v5}, Lcom/htc/opensense/cache/CacheManager;->closeStream(Ljava/io/Closeable;)V

    .line 563
    return-object v3

    .line 565
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #buf:[B
    .end local v2           #f:Landroid/os/ParcelFileDescriptor;
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .end local v6           #read_size:I
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    goto :goto_1
.end method

.method public setMaxSizeAllocatedInCurrentFolder(I)V
    .locals 2
    .parameter "maxSize"

    .prologue
    .line 160
    iput p1, p0, Lcom/htc/opensense/cache/CacheManager;->maxSizeAllocated:I

    .line 161
    iget v0, p0, Lcom/htc/opensense/cache/CacheManager;->maxSizeAllocated:I

    const v1, 0x1e8480

    if-gt v0, v1, :cond_0

    .line 162
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    const-string v1, "The max allocated size is less than 2000000, cache mechanism may not work"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    return-void
.end method

.method public stopDownloadPhotoByTaskId(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->taskPools:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;

    .line 333
    .local v0, task:Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;
    if-eqz v0, :cond_0

    .line 334
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->cancel(Z)Z

    .line 336
    :cond_0
    return-void
.end method

.method public varargs updateToDb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "id"
    .parameter "update"

    .prologue
    .line 664
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 665
    .local v4, values:Landroid/content/ContentValues;
    array-length v3, p2

    .line 666
    .local v3, size:I
    rem-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_0

    .line 667
    sget-object v5, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 670
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 671
    aget-object v5, p2, v2

    add-int/lit8 v6, v2, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 673
    :cond_1
    sget-object v5, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 676
    .local v0, downloadUri:Landroid/net/Uri;
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_1
    return-void

    .line 677
    :catch_0
    move-exception v1

    .line 679
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
