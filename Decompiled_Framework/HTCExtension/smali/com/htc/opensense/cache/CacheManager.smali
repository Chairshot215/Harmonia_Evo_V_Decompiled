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

    const-string v0, "CacheManager"

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    const-string v0, ".+\\.[0-9a-zA-Z]+\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->sPlacePattern:Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/CacheManager;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const v2, 0x4c4b40

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->taskPools:Ljava/util/concurrent/ConcurrentMap;

    iput v2, p0, Lcom/htc/opensense/cache/CacheManager;->DEFAULT_MAX_SIZE_ALLOCATED:I

    iput v2, p0, Lcom/htc/opensense/cache/CacheManager;->maxSizeAllocated:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->minId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/htc/opensense/cache/CacheManager$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/cache/CacheManager$1;-><init>(Lcom/htc/opensense/cache/CacheManager;)V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->stoper:Lcom/htc/opensense/cache/ThreadExecutorHelper$TaskStopExecutor;

    iput-object p1, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    const-string v0, "cache_to_provider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory isnn\'t writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/htc/opensense/cache/ThreadExecutorHelper;

    invoke-direct {v0}, Lcom/htc/opensense/cache/ThreadExecutorHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.cachemanager"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->needRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/cache/CacheManager;ILcom/htc/opensense/cache/DownloadCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/cache/CacheManager;->addCallBack(ILcom/htc/opensense/cache/DownloadCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->taskPools:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/cache/CacheManager;I)Lcom/htc/opensense/cache/CacheManager$Info;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/opensense/cache/CacheManager;->getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/cache/CacheManager;I)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/opensense/cache/CacheManager;->removeCallbackListWithLock(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->needRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/opensense/cache/CacheManager;)Landroid/content/ContentProviderClient;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/cache/CacheManager;Ljava/lang/String;Z)Lcom/htc/opensense/cache/CacheManager$FileInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/cache/CacheManager;->getRemoteFile(Ljava/lang/String;Z)Lcom/htc/opensense/cache/CacheManager$FileInfo;

    move-result-object v0

    return-object v0
.end method

.method private addCallBack(ILcom/htc/opensense/cache/DownloadCallback;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized checkShouldDeleteData(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/opensense/cache/CacheManager;->maxSizeAllocated:I

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    invoke-static {v1, p1}, Lcom/htc/opensense/cache/CacheManager;->getTotalSizeInDir(Landroid/content/ContentProviderClient;Ljava/lang/String;)I

    move-result v1

    sub-int v7, v0, v1

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

    const v0, 0x61a80

    if-le v7, v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    const-string v1, "remain size not enough, start delete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const v1, 0x1e8480

    invoke-static {v6, v0, v7, v1}, Lcom/htc/opensense/cache/CacheManager;->deleteData(Landroid/database/Cursor;Landroid/content/ContentProviderClient;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_0

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v7, "content"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {v7, v10, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    const/4 v3, 0x0

    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

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

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v7, 0x1000

    invoke-direct {v1, v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1, v10, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    move-object v7, v0

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-direct {v7}, Ljava/io/FileNotFoundException;-><init>()V

    throw v7
.end method

.method private static deleteData(Landroid/database/Cursor;Landroid/content/ContentProviderClient;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v2, 0x1

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

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "file_size"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v6, "content_uri"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1, v5}, Lcom/htc/opensense/cache/CacheManager;->deleteFileFromUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content://com.htc.cachemanager/img_cache"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ltz p3, :cond_3

    add-int/2addr p2, v4

    if-ge p2, p3, :cond_6

    :cond_3
    if-nez v2, :cond_5

    const-string v6, " OR "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v6, "_id"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

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

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {p1, v3}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

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

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

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

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static findAppendix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->sPlacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "jpg"

    goto :goto_0
.end method

.method private getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;
    .locals 12

    const/4 v11, 0x1

    const/4 v0, 0x2

    new-instance v8, Lcom/htc/opensense/cache/CacheManager$Info;

    invoke-direct {v8}, Lcom/htc/opensense/cache/CacheManager$Info;-><init>()V

    iput v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

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

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    const-string v1, "cache_to_provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

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

    :goto_0
    const/4 v6, 0x0

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

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    const-string v0, "content_uri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    :cond_1
    iget v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-ne v0, v11, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    iget-object v1, v8, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/htc/opensense/cache/CacheManager;->isUriExist(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/cache/CacheManager;->deleteFromDb(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, v8, Lcom/htc/opensense/cache/CacheManager$Info;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-eqz v6, :cond_3

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v8

    :cond_4
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getRemoteFile(Ljava/lang/String;Z)Lcom/htc/opensense/cache/CacheManager$FileInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v7, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/opensense/cache/CacheManager;->checkShouldDeleteData(Ljava/lang/String;)V

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

    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    const/4 v2, 0x0

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const v7, 0xea60

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v7, 0xea60

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-direct {p0, v4, p1}, Lcom/htc/opensense/cache/CacheManager;->saveToLocal(Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_0
    new-instance v7, Lcom/htc/opensense/cache/CacheManager$FileInfo;

    invoke-direct {v7, p0, v6, v5}, Lcom/htc/opensense/cache/CacheManager$FileInfo;-><init>(Lcom/htc/opensense/cache/CacheManager;Landroid/net/Uri;I)V

    return-object v7

    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/htc/opensense/cache/CacheManager;->saveToRemote(Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v1

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x3

    if-le v2, v7, :cond_0

    throw v1

    :catch_1
    move-exception v1

    throw v1
.end method

.method public static getTotalSizeInDir(Landroid/content/ContentProviderClient;Ljava/lang/String;)I
    .locals 9

    const/4 v8, 0x0

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

    const/4 v6, 0x0

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

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_1

    goto :goto_1
.end method

.method private static geteFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

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

    sget-object v2, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/cache/CacheManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense/cache/CacheManager;

    invoke-direct {v0, p1, p0}, Lcom/htc/opensense/cache/CacheManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isUriExist(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

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

    const-string v0, "content"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_exist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public static releaseAll()V
    .locals 5

    sget-object v3, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/cache/CacheManager;

    invoke-static {v1}, Lcom/htc/opensense/cache/CacheManager;->releaseWithLock(Lcom/htc/opensense/cache/CacheManager;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

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

    return-void
.end method

.method private static releaseWithLock(Lcom/htc/opensense/cache/CacheManager;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->needRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->needRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->callbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    invoke-virtual {v0}, Lcom/htc/opensense/cache/ThreadExecutorHelper;->shutDown()V

    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

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

    return-void

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/cache/DownloadCallback;",
            ">;"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/htc/opensense/cache/CacheManager;->geteFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Cannot create file"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v6, 0x800

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x800

    new-array v1, v6, [B

    const/4 v5, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v6

    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    return-object v6
.end method


# virtual methods
.method public deleteData(J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

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

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {v6, v0, v1, v2}, Lcom/htc/opensense/cache/CacheManager;->deleteData(Landroid/database/Cursor;Landroid/content/ContentProviderClient;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method protected deleteFromDb(Ljava/lang/String;)V
    .locals 5

    sget-object v2, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I
    .locals 8

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v7, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    monitor-enter v7

    :try_start_0
    const-string v1, "expedited"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "expedited"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_0
    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->minId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v2

    :goto_1
    new-instance v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;-><init>(Lcom/htc/opensense/cache/CacheManager;ILjava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    invoke-virtual {v1}, Lcom/htc/opensense/cache/ThreadExecutorHelper;->isShutDown()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->mExecutorHelper:Lcom/htc/opensense/cache/ThreadExecutorHelper;

    invoke-virtual {v1, v0}, Lcom/htc/opensense/cache/ThreadExecutorHelper;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->taskPools:Ljava/util/concurrent/ConcurrentMap;

    iget v3, v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    monitor-exit v7

    return v1

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t use a ThreadPoolExecutor which has been shutdown"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDownloadInfo(Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager$Info;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/opensense/cache/CacheManager;->getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v0

    return-object v0
.end method

.method protected insertToDb(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "url_hash"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "store_folder"

    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    sget-object v3, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public release()V
    .locals 3

    sget-object v1, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/htc/opensense/cache/CacheManager;->releaseWithLock(Lcom/htc/opensense/cache/CacheManager;)V

    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->cacheManagerMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveToRemote(Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

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

    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const-string v8, "w"

    invoke-virtual {v7, v3, v8}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v7, 0x800

    invoke-direct {v0, p1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v7, 0x800

    new-array v1, v7, [B

    const/4 v6, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_0

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

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v4, v5

    :goto_1
    invoke-static {v4}, Lcom/htc/opensense/cache/CacheManager;->closeStream(Ljava/io/Closeable;)V

    throw v7

    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v5}, Lcom/htc/opensense/cache/CacheManager;->closeStream(Ljava/io/Closeable;)V

    return-object v3

    :catchall_1
    move-exception v7

    goto :goto_1
.end method

.method public setMaxSizeAllocatedInCurrentFolder(I)V
    .locals 2

    iput p1, p0, Lcom/htc/opensense/cache/CacheManager;->maxSizeAllocated:I

    iget v0, p0, Lcom/htc/opensense/cache/CacheManager;->maxSizeAllocated:I

    const v1, 0x1e8480

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/htc/opensense/cache/CacheManager;->TAG:Ljava/lang/String;

    const-string v1, "The max allocated size is less than 2000000, cache mechanism may not work"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stopDownloadPhotoByTaskId(I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/cache/CacheManager;->taskPools:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public varargs updateToDb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    array-length v3, p2

    rem-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_0

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

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, p2, v2

    add-int/lit8 v6, v2, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/cache/CacheManager;->providerClient:Landroid/content/ContentProviderClient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
