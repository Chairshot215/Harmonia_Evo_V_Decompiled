.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;
.super Lcom/htc/socialnetwork/tmo/engine/HttpTransport;
.source "PhotoDownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TMUS_PhotoDownloadThread"

.field private static final TMUS_PHOTO:Ljava/lang/String; = "myalbum/photos"

.field private static final TMUS_THUMBNAIL:Ljava/lang/String; = "myalbum/thumbnail"


# instance fields
.field private mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

.field private mHttpGet:Lorg/apache/http/client/methods/HttpGet;

.field private mIsPhoto:Z

.field private mPassword:Ljava/lang/String;

.field private mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

.field private mUri:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;-><init>()V

    iput-boolean p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mIsPhoto:Z

    iput-object p2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUsername:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mPassword:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    iput-object p6, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    return-void
.end method

.method private GetCacheFile()Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    invoke-virtual {v5}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->GetCachePath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mIsPhoto:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    const-string v6, "myalbum/photos"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    :goto_0
    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    const-string v6, "myalbum/thumbnail"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    :cond_0
    return-void
.end method

.method public GetUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 13

    invoke-direct {p0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->GetCacheFile()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mIsPhoto:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->SUCCESS_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDonwloadPhotoResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->SUCCESS_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadThumbnailResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v9, "tmp_"

    const/4 v10, 0x0

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    invoke-virtual {v12}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->GetCachePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->InitHttpClient()V

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUsername:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->InitAuth(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    iput-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    const/4 v5, 0x0

    :try_start_1
    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v10, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v9, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_6

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response content length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    invoke-virtual {v9, v6, v7}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->WriteToCache(J)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-boolean v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mIsPhoto:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->SUCCESS_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDonwloadPhotoResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->SUCCESS_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadThumbnailResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-boolean v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mIsPhoto:Z

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_CANCEL_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDonwloadPhotoResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :try_start_3
    iget-boolean v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mIsPhoto:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDonwloadPhotoResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadThumbnailResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 v9, 0x194

    if-eq v8, v9, :cond_7

    const/16 v9, 0x1f7

    if-ne v8, v9, :cond_2

    :cond_7
    iget-boolean v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mIsPhoto:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDonwloadPhotoResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadThumbnailResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_9
    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_CONNECTION_ERROR:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDonwloadPhotoResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-boolean v9, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_CANCEL_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadThumbnailResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_CONNECTION_ERROR:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    iget-object v11, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->mUri:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadThumbnailResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method
