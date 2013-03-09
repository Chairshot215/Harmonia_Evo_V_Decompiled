.class public final Landroid/webkit/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CacheManager$CacheResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static CACHE_MAX_SIZE:J = 0x0L

.field private static CACHE_THRESHOLD:J = 0x0L

.field private static CACHE_TRIM_AMOUNT:J = 0x0L

.field static final HEADER_KEY_IFMODIFIEDSINCE:Ljava/lang/String; = "if-modified-since"

.field static final HEADER_KEY_IFNONEMATCH:Ljava/lang/String; = "if-none-match"

.field private static final LOGTAG:Ljava/lang/String; = "cache"

.field private static final MANIFEST_MIME:Ljava/lang/String; = "text/cache-manifest"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final NO_STORE:Ljava/lang/String; = "no-store"

.field private static final TRIM_CACHE_INTERVAL:I = 0x5

.field private static mBaseDir:Ljava/io/File;

.field private static mClearCacheOnInit:Z

.field private static mDataBase:Landroid/webkit/WebViewDatabase;

.field private static mDisabled:Z

.field private static mRefCount:I

.field private static mTrimCacheCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x0

    const-class v0, Landroid/webkit/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    const-wide/32 v2, 0x600000

    sput-wide v2, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    const-wide/32 v2, 0x200000

    sput-wide v2, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    sget-wide v4, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sput-wide v2, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    sput-boolean v1, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method private static appendAsHex(ILjava/lang/StringBuffer;)V
    .locals 2

    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :pswitch_0
    const-string v1, "0000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v1, "000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v1, "00000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string v1, "0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    const-string v1, "000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_5
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_6
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static cacheDisabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    return v0
.end method

.method static cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z
    .locals 2

    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method static clearCache()V
    .locals 1

    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearCache()V

    return-void
.end method

.method private static createCacheDirectory()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cache"

    const-string v2, "Unable to create webviewCache directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;
    .locals 7

    const/4 v4, 0x0

    sget-boolean v5, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    if-nez p6, :cond_1

    sget-boolean v5, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v5, :cond_1

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    invoke-static {p0, p4, p5}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x12f

    if-ne p1, v5, :cond_2

    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/webkit/CacheManager;->isCachableRedirect(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    :cond_3
    invoke-static {p1, p2, p3}, Landroid/webkit/CacheManager;->parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, v3}, Landroid/webkit/CacheManager;->setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object p3, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_0

    :cond_5
    move-object v3, v4

    goto :goto_0
.end method

.method public static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;Z)Landroid/webkit/CacheManager$CacheResult;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/webkit/CacheManager;->createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    goto :goto_0
.end method

.method static disableTransaction()Z
    .locals 1

    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-nez v0, :cond_1

    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static enableTransaction()Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget v1, Landroid/webkit/CacheManager;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/CacheManager;->mRefCount:I

    if-ne v1, v0, :cond_1

    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static endCacheTransaction()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method static endTransaction()Z
    .locals 3

    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    move-result v0

    sget v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    invoke-static {}, Landroid/webkit/CacheManager;->trimCacheIfNeeded()V

    :cond_1
    return v0
.end method

.method static getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    sget-boolean v5, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v5, :cond_1

    move-object v2, v4

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Landroid/webkit/CacheManager;->nativeGetCacheResult(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/io/File;

    sget-object v5, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    iget-object v6, v2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCacheFile(): Failed to open file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v4

    goto :goto_0

    :cond_4
    iget-wide v5, v2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    iget v5, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v5}, Landroid/webkit/CacheManager;->isCachableRedirect(I)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/io/File;

    sget-object v5, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    iget-object v6, v2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    if-eqz p3, :cond_0

    iget-wide v5, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    iget-wide v5, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-nez v5, :cond_7

    move-object v2, v4

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v2, v4

    goto/16 :goto_0

    :cond_7
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string/jumbo v4, "if-none-match"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "if-modified-since"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method public static getCacheSize()J
    .locals 2

    sget-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    return-wide v0
.end method

.method private static getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "webviewCacheChromiumStaging"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    sput-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "webviewCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    goto :goto_0
.end method

.method private static isCachableRedirect(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x133

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeGetCacheResult(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
.end method

.method private static parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .locals 22

    sget-boolean v18, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v18

    sget-wide v20, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    const/4 v13, 0x0

    :cond_1
    :goto_0
    return-object v13

    :cond_2
    const-string/jumbo v18, "text/cache-manifest"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    new-instance v13, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v13}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    move/from16 v0, p0

    iput v0, v13, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getExpires()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    :try_start_0
    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getXPermittedCrossDomainPolicies()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getLastModified()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_5

    iput-object v9, v13, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getEtag()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    iput-object v6, v13, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getCacheControl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "[ ,;]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v8, 0x0

    :goto_2
    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_e

    const-string/jumbo v18, "no-store"

    aget-object v19, v3, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/4 v13, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v18, "-1"

    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "0"

    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_7
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_1

    :cond_8
    const-string v18, "cache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "illegal expires: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v18, "no-cache"

    aget-object v19, v3, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    const/4 v12, 0x1

    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    aget-object v18, v3, v8

    const-string/jumbo v19, "max-age"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    if-nez v12, :cond_a

    aget-object v18, v3, v8

    const/16 v19, 0x3d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-gez v17, :cond_c

    aget-object v18, v3, v8

    const/16 v19, 0x3a

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    :cond_c
    if-lez v17, :cond_a

    aget-object v18, v3, v8

    add-int/lit8 v19, v17, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :try_start_1
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-ltz v18, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v15

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    const-string v18, "1d"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_3

    :cond_d
    const-string v18, "cache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "exception in parseHeaders for max-age:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v3, v8

    add-int/lit8 v21, v17, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v18, "no-cache"

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getPragma()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    :cond_f
    iget-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    iget v0, v13, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x12d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const-wide v18, 0x7fffffffffffffffL

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_0

    :cond_10
    iget v0, v13, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x12e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    iget v0, v13, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x133

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    :cond_11
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_0

    :cond_12
    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_14

    const-string/jumbo v18, "text/html"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_0

    :cond_13
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    add-long v10, v18, v20

    :try_start_2
    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v10

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v4, v18, v10

    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-lez v18, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x5

    div-long v20, v4, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_0

    :catch_2
    move-exception v7

    const-string v18, "cache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "illegal lastModified: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_15
    iput-wide v10, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_0
.end method

.method static removeAllCacheFiles()Z
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    sput-boolean v3, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    :goto_0
    return v3

    :cond_1
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    :cond_2
    new-instance v0, Landroid/webkit/CacheManager$1;

    invoke-direct {v0}, Landroid/webkit/CacheManager$1;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V
    .locals 7

    const-wide/16 v5, 0x0

    :try_start_0
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v2}, Landroid/webkit/CacheManager;->isCachableRedirect(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-wide v5, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    const-string v2, ""

    iput-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_3

    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delete failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    sget-object v2, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/webkit/WebViewDatabase;->addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_0
.end method

.method public static saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    return-void
.end method

.method static setCacheDisabled(Z)V
    .locals 1

    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-ne p0, v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sput-boolean p0, Landroid/webkit/CacheManager;->mDisabled:Z

    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    goto :goto_0
.end method

.method public static setCacheSize(J)V
    .locals 4

    sput-wide p0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    sget-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    sget-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    return-void
.end method

.method private static setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 11

    const/16 v10, 0x8

    sget-boolean v6, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_4

    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6, p0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-wide v6, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    :cond_1
    :goto_1
    iput-object v4, p1, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    iput-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    return-void

    :cond_2
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startCacheTransaction()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method static startTransaction()Z
    .locals 1

    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move-result v0

    return v0
.end method

.method static trimCacheIfNeeded()V
    .locals 10

    sget-boolean v6, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getCacheTotalSize()J

    move-result-wide v6

    sget-wide v8, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    sget-wide v7, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebViewDatabase;->trimCache(J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v7, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delete failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getAllCacheFileNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    return-void

    :cond_4
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    new-instance v7, Landroid/webkit/CacheManager$2;

    invoke-direct {v7, v1}, Landroid/webkit/CacheManager$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v4, v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    new-instance v0, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    aget-object v7, v5, v2

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delete failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
