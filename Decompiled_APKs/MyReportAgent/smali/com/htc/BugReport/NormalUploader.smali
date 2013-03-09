.class Lcom/htc/BugReport/NormalUploader;
.super Ljava/lang/Object;
.source "NormalUploader.java"

# interfaces
.implements Lcom/htc/BugReport/UploadHelper;


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private requestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "requestUrl"

    .prologue
    const/16 v1, 0x3a98

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/htc/BugReport/NormalUploader;->requestUrl:Ljava/lang/String;

    .line 28
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 29
    .local v0, param:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 30
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 31
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/htc/BugReport/NormalUploader;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 32
    return-void
.end method


# virtual methods
.method public putReport([BLjava/util/Properties;)V
    .locals 6
    .parameter "data"
    .parameter "prop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/htc/BugReport/NormalUploader;->requestUrl:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "User-Agent"

    const-string v5, "HTC BugReport/0.1"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 41
    iget-object v4, p0, Lcom/htc/BugReport/NormalUploader;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 42
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 43
    .local v3, status:Lorg/apache/http/StatusLine;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 44
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 47
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    .line 48
    new-instance v4, Lorg/apache/http/HttpException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_1
    return-void
.end method

.method public putReportByHttpClient(Ljava/io/File;Ljava/util/Properties;I)Lcom/amazon/s3/Result;
    .locals 1
    .parameter "file"
    .parameter "prop"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public putReportByHttpClient([BLjava/util/Properties;I)Lcom/amazon/s3/Result;
    .locals 1
    .parameter "data"
    .parameter "prop"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method
