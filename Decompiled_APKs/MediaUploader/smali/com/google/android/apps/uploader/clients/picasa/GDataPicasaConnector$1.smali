.class Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;
.super Ljava/lang/Thread;
.source "GDataPicasaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->getAlbums(Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer;Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$authorizer:Lcom/google/android/apps/uploader/Authorizer;

.field final synthetic val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer;Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->this$0:Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;

    iput-object p2, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$authorizer:Lcom/google/android/apps/uploader/Authorizer;

    iput-object p4, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "http://picasaweb.google.com/data/feed/api/user/default/"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->this$0:Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->client:Lorg/apache/http/client/HttpClient;
    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->access$000(Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$authorizer:Lcom/google/android/apps/uploader/Authorizer;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->executeWithAuthRetry(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 49
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->this$0:Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$account:Ljava/lang/String;

    const/4 v4, 0x1

    #calls: Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->parseAlbumResponse(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Ljava/util/List;
    invoke-static {v2, v3, v0, v4}, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;->access$100(Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;->albumsChanged(Ljava/util/List;)V

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    new-instance v2, Lcom/google/android/apps/uploader/ApplicationException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/apps/uploader/ApplicationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;->failed(Lcom/google/android/apps/uploader/ApplicationException;)V
    :try_end_0
    .catch Lcom/google/android/apps/uploader/ApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;->failed(Lcom/google/android/apps/uploader/ApplicationException;)V

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector$1;->val$listener:Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;

    new-instance v2, Lcom/google/android/apps/uploader/ApplicationException;

    invoke-direct {v2, v0}, Lcom/google/android/apps/uploader/ApplicationException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;->failed(Lcom/google/android/apps/uploader/ApplicationException;)V

    goto :goto_0
.end method
