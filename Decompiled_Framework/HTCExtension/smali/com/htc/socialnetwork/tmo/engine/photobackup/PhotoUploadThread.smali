.class public Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;
.super Lcom/htc/socialnetwork/tmo/engine/HttpTransport;
.source "PhotoUploadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TMUS_PhotoUploadThread"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mHttpPost:Lorg/apache/http/client/methods/HttpPost;

.field private mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;-><init>()V

    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    return-void
.end method

.method public Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->InitHttpClient()V

    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->InitAuth(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TMUS_PhotoUploadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mUploadUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mUploadUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    iput-object p3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public Init2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->InitHttpClient()V

    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->InitAuth2(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TMUS_PhotoUploadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mUploadUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mUploadUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Authorization"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    iput-object p4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 8

    :try_start_0
    iget-boolean v5, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;

    sget-object v6, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_CANCEL_UPLOAD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    iget-object v7, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;->PhotoUploadResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;

    sget-object v6, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_FILE_NOT_FOUND:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    iget-object v7, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;->PhotoUploadResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lorg/apache/http/entity/FileEntity;

    const-string v5, "image/jpg"

    invoke-direct {v1, v2, v5}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v6, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const-string v5, "TMUS_PhotoUploadThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;

    sget-object v6, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->SUCCESS_UPLOAD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    iget-object v7, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;->PhotoUploadResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void

    :cond_2
    const/16 v5, 0x191

    if-ne v4, v5, :cond_3

    :try_start_1
    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;

    sget-object v6, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_INVALID_USERNAME_PASSWORD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    iget-object v7, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;->PhotoUploadResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "TMUS_PhotoUploadThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!! Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;

    sget-object v6, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_CANCEL_UPLOAD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    iget-object v7, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;->PhotoUploadResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;

    sget-object v6, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    iget-object v7, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;->PhotoUploadResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mPhotoUploadcallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;

    sget-object v6, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_CONNECTION_ERROR:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    iget-object v7, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->mFilePath:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;->PhotoUploadResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;Ljava/lang/String;)V

    goto :goto_0
.end method
