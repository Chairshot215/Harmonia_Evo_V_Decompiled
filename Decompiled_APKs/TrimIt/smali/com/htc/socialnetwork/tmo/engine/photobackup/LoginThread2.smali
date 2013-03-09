.class public Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;
.super Lcom/htc/socialnetwork/tmo/engine/HttpTransport;
.source "LoginThread2.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TMUS_LoginThread2"


# instance fields
.field private mHttpGet:Lorg/apache/http/client/methods/HttpGet;

.field private mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;)V
    .locals 8
    .parameter "username"
    .parameter "password"
    .parameter "logincallback"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->InitHttpClient()V

    .line 27
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, encodeUsername:Ljava/lang/String;
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, encodePassword:Ljava/lang/String;
    const-string v5, "10"

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, encodeID:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v5, "http://lab.t-mobilepictures.com/myalbum/data/login?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v5, "msisdn"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v5, "passwd"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v5, "source"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, strLoginUri:Ljava/lang/String;
    const-string v5, "TMUS_LoginThread2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Login Uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 61
    iput-object p3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;

    .line 62
    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    iput-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 63
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mCancel:Z

    .line 64
    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mCancel:Z

    .line 68
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    .line 69
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 75
    :try_start_0
    iget-boolean v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mCancel:Z

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;

    sget-object v5, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;->FAIL_CANCEL_LOGIN:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;->LoginResult2(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 82
    .local v1, httpresponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 84
    .local v2, status:I
    const-string v4, "TMUS_LoginThread2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    .line 88
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, token:Ljava/lang/String;
    const-string v4, "TMUS_LoginThread2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;

    sget-object v5, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;->SUCCESS_LOGIN:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;

    invoke-interface {v4, v5, v3}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;->LoginResult2(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v2           #status:I
    .end local v3           #token:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 112
    return-void

    .line 92
    .restart local v1       #httpresponse:Lorg/apache/http/HttpResponse;
    .restart local v2       #status:I
    :cond_1
    const/16 v4, 0x190

    if-ne v2, v4, :cond_2

    .line 94
    :try_start_1
    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;

    sget-object v5, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;->FAIL_INVALID_USERNAME_PASSWORD:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;->LoginResult2(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 102
    .end local v1           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v2           #status:I
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    const-string v4, "TMUS_LoginThread2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!! Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-boolean v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mCancel:Z

    if-eqz v4, :cond_3

    .line 106
    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;

    sget-object v5, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;->FAIL_CANCEL_LOGIN:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;->LoginResult2(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #httpresponse:Lorg/apache/http/HttpResponse;
    .restart local v2       #status:I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;

    sget-object v5, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;->LoginResult2(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 108
    .end local v1           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v2           #status:I
    .restart local v0       #e:Ljava/io/IOException;
    :cond_3
    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;

    sget-object v5, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;->FAIL_CONNECTION_ERROR:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;->LoginResult2(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2$LOGIN_RESULT2;Ljava/lang/String;)V

    goto :goto_0
.end method
