.class Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;
.super Ljava/lang/Thread;
.source "GDataPicasaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->createAlbum(Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;

.field final synthetic val$access:Ljava/lang/String;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$authorizer:Lcom/google/android/apps/uploader/Authorizer;

.field final synthetic val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;Lcom/google/android/apps/uploader/Authorizer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;

    iput-object p2, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$authorizer:Lcom/google/android/apps/uploader/Authorizer;

    iput-object p3, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$access:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "http://picasaweb.google.com/data/feed/api/user/default/"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$authorizer:Lcom/google/android/apps/uploader/Authorizer;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$account:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/apps/uploader/Authorizer;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleLogin auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "Content-Type"

    const-string v2, "application/atom+xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$access:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/apps/uploader/clients/picasa/PicasaRequestUtils;->getNewAlbumMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v3, -0x1

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->client:Lorg/apache/http/client/HttpClient;
    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->access$000(Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$authorizer:Lcom/google/android/apps/uploader/Authorizer;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->executeWithAuthRetry(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$account:Ljava/lang/String;

    const/4 v4, 0x0

    #calls: Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->parseAlbumResponse(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Ljava/util/List;
    invoke-static {v2, v3, v0, v4}, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->access$100(Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;->albumsChanged(Ljava/util/List;)V

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    new-instance v2, Lcom/google/android/apps/uploader/ApplicationException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/apps/uploader/ApplicationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;->failed(Lcom/google/android/apps/uploader/ApplicationException;)V
    :try_end_0
    .catch Lcom/google/android/apps/uploader/ApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;->failed(Lcom/google/android/apps/uploader/ApplicationException;)V

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$2;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    new-instance v2, Lcom/google/android/apps/uploader/ApplicationException;

    invoke-direct {v2, v0}, Lcom/google/android/apps/uploader/ApplicationException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;->failed(Lcom/google/android/apps/uploader/ApplicationException;)V

    goto :goto_0
.end method
