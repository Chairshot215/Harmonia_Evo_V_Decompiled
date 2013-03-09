.class public Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;
.super Ljava/lang/Object;
.source "MusicPreviewManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;,
        Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;,
        Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;,
        Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;
    }
.end annotation


# static fields
.field private static final BLANK_MP3_FRAME:[B


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private mCacheFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheSizeBytes:I

.field private mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mHttpClient:Lcom/google/android/volley/GoogleHttpClient;

.field private final mMaxCacheSizeBytes:I

.field private final mMaxSampleBytes:I

.field private final mMinBufferSizeBytes:I

.field private final mPrecacheBytes:I

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private final mSampleRateKbit:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/16 v0, 0xd1

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->BLANK_MP3_FRAME:[B

    .line 78
    sget-object v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->BLANK_MP3_FRAME:[B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 79
    sget-object v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->BLANK_MP3_FRAME:[B

    const/4 v1, 0x1

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    .line 80
    sget-object v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->BLANK_MP3_FRAME:[B

    const/4 v1, 0x2

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    .line 81
    sget-object v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->BLANK_MP3_FRAME:[B

    const/4 v1, 0x3

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheSizeBytes:I

    .line 119
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheFiles:Ljava/util/Map;

    .line 140
    new-instance v0, Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v2}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->createNetwork()Lcom/android/volley/Network;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 142
    sget-object v0, Lcom/google/android/finsky/config/G;->explorerPrefetchThreads:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 143
    .local v1, numThreads:I
    sget-object v0, Lcom/google/android/finsky/config/G;->explorerSampleRateKbit:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mSampleRateKbit:I

    .line 144
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mSampleRateKbit:I

    div-int/lit8 v0, v0, 0x8

    mul-int/lit16 v7, v0, 0x400

    .line 145
    .local v7, sampleRateBytes:I
    sget-object v0, Lcom/google/android/finsky/config/G;->explorerPrecacheSecs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v7

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mPrecacheBytes:I

    .line 146
    sget-object v0, Lcom/google/android/finsky/config/G;->explorerMinBufferSecs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v7

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mMinBufferSizeBytes:I

    .line 147
    sget-object v0, Lcom/google/android/finsky/config/G;->explorerPreviewSecs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v7

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mMaxSampleBytes:I

    .line 148
    sget-object v0, Lcom/google/android/finsky/config/G;->explorerMaxDiskCacheSizeMb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mMaxCacheSizeBytes:I

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "music"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheDir:Ljava/io/File;

    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 152
    new-instance v0, Lcom/google/android/volley/GoogleHttpClient;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const-string v3, "unused/0"

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/volley/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mHttpClient:Lcom/google/android/volley/GoogleHttpClient;

    .line 153
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide v3, 0x7fffffffffffffffL

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 155
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->fetchUrl(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private deleteAll()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$1;-><init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method private downloadFile(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Lorg/apache/http/HttpResponse;)V
    .locals 9
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 325
    const-string v5, "Downloading %d bytes for MP3 %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mSize:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$400(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 327
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Ljava/io/RandomAccessFile;

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$500(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Ljava/io/File;

    move-result-object v5

    const-string v6, "rw"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    .local v3, os:Ljava/io/RandomAccessFile;
    :try_start_0
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mSize:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$400(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v5

    const v6, 0x7fffffff

    if-ge v5, v6, :cond_0

    .line 335
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mOffset:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$600(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v5

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mSize:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$400(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v6

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mOffset:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$600(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {p0, v3, v5, v6}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->writeBlankMp3(Ljava/io/RandomAccessFile;II)V

    .line 336
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mOffset:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$600(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 338
    :cond_0
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 339
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 349
    .local v4, totalBytesRead:I
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mOffset:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$600(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v5

    if-lez v5, :cond_2

    .line 351
    :cond_1
    const/4 v5, 0x0

    array-length v6, v0

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mOffset:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$600(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 353
    .local v1, bytesRead:I
    if-gtz v1, :cond_4

    .line 361
    :goto_0
    const/4 v4, 0x0

    .line 366
    .end local v1           #bytesRead:I
    :cond_2
    const/4 v5, 0x0

    array-length v6, v0

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mSize:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$400(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 368
    .restart local v1       #bytesRead:I
    if-gtz v1, :cond_5

    .line 381
    :goto_1
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mListener:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$700(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 382
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mListener:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$700(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;

    move-result-object v5

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v6

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$500(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Ljava/io/File;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;->fileReady(Lcom/google/android/finsky/exploreactivity/DocWrapper;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 386
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 387
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$500(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->makeSpaceForFile(Ljava/lang/String;Ljava/io/File;)V

    .line 389
    return-void

    .line 356
    :cond_4
    add-int/2addr v4, v1

    .line 357
    :try_start_1
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mOffset:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$600(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I

    move-result v5

    if-lt v4, v5, :cond_1

    goto :goto_0

    .line 371
    :cond_5
    add-int/2addr v4, v1

    .line 372
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 373
    iget v5, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mMinBufferSizeBytes:I

    if-lt v4, v5, :cond_6

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mListener:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$700(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 374
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mListener:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$700(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;

    move-result-object v5

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v6

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$500(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Ljava/io/File;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;->fileReady(Lcom/google/android/finsky/exploreactivity/DocWrapper;Ljava/io/File;)V

    .line 375
    const/4 v5, 0x0

    #setter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mListener:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;
    invoke-static {p1, v5}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$702(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;

    .line 377
    :cond_6
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mSize:I
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$400(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-lt v4, v5, :cond_2

    goto :goto_1

    .line 385
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #totalBytesRead:I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 386
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 387
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mFile:Ljava/io/File;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$500(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->makeSpaceForFile(Ljava/lang/String;Ljava/io/File;)V

    throw v5
.end method

.method private fetchUrl(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)V
    .locals 12
    .parameter "request"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 293
    :try_start_0
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mHttpClient:Lcom/google/android/volley/GoogleHttpClient;

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$300(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/volley/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 294
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 295
    .local v3, statusCode:I
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_1

    .line 296
    invoke-direct {p0, p1, v2}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->downloadFile(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Lorg/apache/http/HttpResponse;)V

    .line 318
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    .end local v3           #statusCode:I
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v2       #response:Lorg/apache/http/HttpResponse;
    .restart local v3       #statusCode:I
    :cond_1
    const-string v5, "Location"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 301
    .local v1, headers:[Lorg/apache/http/Header;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-eqz v5, :cond_2

    .line 302
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, url:Ljava/lang/String;
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$300(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    #setter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mUrl:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$302(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->fetchUrl(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v1           #headers:[Lorg/apache/http/Header;
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    .end local v3           #statusCode:I
    .end local v4           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Unable to download song sample %s: %s"

    new-array v6, v11, [Ljava/lang/Object;

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #headers:[Lorg/apache/http/Header;
    .restart local v2       #response:Lorg/apache/http/HttpResponse;
    .restart local v3       #statusCode:I
    :cond_2
    :try_start_1
    const-string v5, "Unable to download song sample %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private makeSpaceForFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 10
    .parameter "docId"
    .parameter "file"

    .prologue
    .line 428
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 429
    .local v3, length:J
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheFiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;

    .line 430
    .local v0, entry:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;
    if-eqz v0, :cond_1

    .line 431
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheSizeBytes:I

    int-to-long v6, v6

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mSize:J
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->access$800(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;)J

    move-result-wide v8

    sub-long v8, v3, v8

    add-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheSizeBytes:I

    .line 432
    #setter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mSize:J
    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->access$802(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;J)J

    .line 437
    :goto_0
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheSizeBytes:I

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mMaxCacheSizeBytes:I

    if-gt v6, v7, :cond_2

    .line 457
    :cond_0
    :goto_1
    return-void

    .line 434
    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheFiles:Ljava/util/Map;

    new-instance v7, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;

    invoke-direct {v7, p1, p2, v3, v4}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;-><init>(Ljava/lang/String;Ljava/io/File;J)V

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheSizeBytes:I

    int-to-long v6, v6

    add-long/2addr v6, v3

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheSizeBytes:I

    goto :goto_0

    .line 447
    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheFiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    .line 448
    .local v5, sortedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;>;"
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 449
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;

    .line 450
    .local v1, entryToDelete:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheSizeBytes:I

    int-to-long v6, v6

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mSize:J
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->access$800(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheSizeBytes:I

    .line 451
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mFile:Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->access$900(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 452
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheFiles:Ljava/util/Map;

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mDocId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->access$1000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheSizeBytes:I

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mMaxCacheSizeBytes:I

    if-gt v6, v7, :cond_3

    goto :goto_1
.end method

.method private replaceUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "param"
    .parameter "value"

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    :goto_0
    return-object p1

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=[^&]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private writeBlankMp3(Ljava/io/File;II)V
    .locals 4
    .parameter "file"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 397
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    .local v1, raf:Ljava/io/RandomAccessFile;
    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->writeBlankMp3(Ljava/io/RandomAccessFile;II)V

    .line 399
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v1           #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeBlankMp3(Ljava/io/RandomAccessFile;II)V
    .locals 5
    .parameter "file"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 411
    int-to-long v3, p2

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, bytesWritten:I
    sget-object v3, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->BLANK_MP3_FRAME:[B

    array-length v2, v3

    .line 414
    .local v2, frameLength:I
    :goto_0
    add-int v3, v0, v2

    if-gt v3, p3, :cond_0

    .line 415
    sget-object v3, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->BLANK_MP3_FRAME:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    add-int/2addr v0, v2

    goto :goto_0

    .line 418
    .end local v0           #bytesWritten:I
    .end local v2           #frameLength:I
    :catch_0
    move-exception v1

    .line 419
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Lcom/google/android/finsky/exploreactivity/DocWrapper;)V
    .locals 3
    .parameter "wrapper"

    .prologue
    .line 179
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 180
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 182
    .local v1, runnable:Ljava/lang/Runnable;
    instance-of v2, v1, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;

    if-eqz v2, :cond_0

    .line 183
    check-cast v1, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;

    .end local v1           #runnable:Ljava/lang/Runnable;
    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 188
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 173
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->deleteAll()V

    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->deleteAll()V

    .line 160
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheFiles:Ljava/util/Map;

    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 163
    return-void
.end method

.method public fetchPreview(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;Z)V
    .locals 20
    .parameter "wrapper"
    .parameter "listener"
    .parameter "willPlayImmediately"

    .prologue
    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v16

    .line 223
    .local v16, doc:Lcom/google/android/finsky/api/model/Document;
    if-nez p3, :cond_0

    .line 224
    const/16 p2, 0x0

    .line 227
    :cond_0
    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mMaxSampleBytes:I

    .line 228
    .local v15, bytesNeeded:I
    :goto_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheDir:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .local v6, file:Ljava/io/File;
    const/4 v8, 0x0

    .line 230
    .local v8, offset:I
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 233
    .local v17, length:J
    int-to-long v3, v15

    cmp-long v3, v17, v3

    if-ltz v3, :cond_3

    .line 234
    if-eqz p2, :cond_1

    .line 235
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v6}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;->fileReady(Lcom/google/android/finsky/exploreactivity/DocWrapper;Ljava/io/File;)V

    .line 270
    .end local v17           #length:J
    :cond_1
    :goto_1
    return-void

    .line 227
    .end local v6           #file:Ljava/io/File;
    .end local v8           #offset:I
    .end local v15           #bytesNeeded:I
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mPrecacheBytes:I

    goto :goto_0

    .line 239
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #offset:I
    .restart local v15       #bytesNeeded:I
    .restart local v17       #length:J
    :cond_3
    const-string v3, "Inflating MP3 for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    move-wide/from16 v0, v17

    long-to-int v8, v0

    .line 244
    sub-int v3, v15, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v3}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->writeBlankMp3(Ljava/io/File;II)V

    .line 245
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mMinBufferSizeBytes:I

    int-to-long v3, v3

    cmp-long v3, v17, v3

    if-lez v3, :cond_4

    if-eqz p2, :cond_4

    .line 248
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v6}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;->fileReady(Lcom/google/android/finsky/exploreactivity/DocWrapper;Ljava/io/File;)V

    .line 250
    const/16 p2, 0x0

    .line 257
    .end local v17           #length:J
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    const-string v3, "Getting Skyjam preview URL for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v12

    .line 260
    .local v12, url:Ljava/lang/String;
    const-string v3, "mode"

    const-string v4, "streaming"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v4}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->replaceUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 261
    const-string v3, "targetkbps"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mSampleRateKbit:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v4}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->replaceUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 262
    new-instance v2, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;

    const/4 v5, 0x0

    sub-int v9, v15, v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;-><init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/DocWrapper;Ljava/lang/String;Ljava/io/File;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;II)V

    .line 265
    .local v2, request:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;
    new-instance v9, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;

    if-eqz p3, :cond_5

    sget-object v13, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    :goto_2
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object v11, v2

    invoke-direct/range {v9 .. v14}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;-><init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Ljava/lang/String;Lcom/android/volley/Request$Priority;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$1;)V

    .line 267
    .local v9, previewRequest:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v9}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v19

    .line 268
    .local v19, volleyRequest:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 265
    .end local v9           #previewRequest:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;
    .end local v19           #volleyRequest:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    :cond_5
    sget-object v13, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    goto :goto_2
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    return-void
.end method
