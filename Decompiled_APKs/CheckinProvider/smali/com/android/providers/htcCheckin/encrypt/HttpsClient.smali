.class public Lcom/android/providers/htcCheckin/encrypt/HttpsClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "HttpsClient.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "htcCheckinService.Encrypt"


# instance fields
.field private final PASSWORD_CERT_NEW:Ljava/lang/String;

.field public final VERBOSE:Z

.field private cert:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "certFile"

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->VERBOSE:Z

    .line 72
    const-string v0, "89124138af"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->PASSWORD_CERT_NEW:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->cert:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->context:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->cert:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private newSslSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 7

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 148
    .local v3, trusted:Ljava/security/KeyStore;
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->cert:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    const-string v4, "89124138af"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 159
    new-instance v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v2, v3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 162
    .local v2, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 166
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v3           #trusted:Ljava/security/KeyStore;
    :goto_0
    return-object v2

    .line 154
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v3       #trusted:Ljava/security/KeyStore;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #trusted:Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "htcCheckinService.Encrypt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 5

    .prologue
    .line 131
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 133
    .local v0, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 136
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-direct {p0}, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->newSslSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 137
    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {p0}, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v1
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "body"
    .parameter "tag_start"
    .parameter "tag_end"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 113
    .local v1, start:I
    if-ne v1, v5, :cond_0

    .line 114
    const-string v3, "htcCheckinService.Encrypt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-object v2

    .line 119
    :cond_0
    invoke-virtual {p1, p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, end:I
    if-ne v0, v5, :cond_1

    .line 121
    const-string v3, "htcCheckinService.Encrypt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public postRequest(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v5, 0x0

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    const/4 v3, 0x0

    .line 84
    .local v3, response:Lorg/apache/http/HttpResponse;
    const-string v4, ""

    .line 87
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #post:Lorg/apache/http/client/methods/HttpPost;
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, p2, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 91
    const-string v6, "htcCheckinService.Encrypt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect to Key Server : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0, v2}, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 97
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 99
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    move-object v1, v2

    .line 108
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object v5

    .line 102
    .end local v1           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v1, v2

    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #post:Lorg/apache/http/client/methods/HttpPost;
    move-object v5, v4

    .line 108
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v6, "htcCheckinService.Encrypt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "catch exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1
.end method
