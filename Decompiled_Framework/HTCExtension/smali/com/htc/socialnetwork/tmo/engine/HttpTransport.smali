.class public abstract Lcom/htc/socialnetwork/tmo/engine/HttpTransport;
.super Ljava/lang/Object;
.source "HttpTransport.java"


# static fields
.field protected static final TIMEOUT:I = 0xea60

.field protected static final TMUS_DOWNLOAD_URI:Ljava/lang/String; = "/feed/images?fmt=json"

.field protected static final TMUS_ID:Ljava/lang/String; = "10"

.field protected static final TMUS_LOGIN_URI:Ljava/lang/String; = "http://lab.t-mobilepictures.com/myalbum/data/login?"

.field protected static final TMUS_MSISDN:Ljava/lang/String; = "msisdn"

.field protected static final TMUS_PASSWORD:Ljava/lang/String; = "passwd"

.field protected static final TMUS_SERVER:Ljava/lang/String; = "lab.t-mobilepictures.com"

.field protected static final TMUS_SOURCE:Ljava/lang/String; = "source"

.field protected static final TMUS_UPLOAD_URI:Ljava/lang/String; = "/feed/all"

.field protected static final TMUS_URI:Ljava/lang/String; = "http://lab.t-mobilepictures.com/myalbum/data/users/"


# instance fields
.field protected mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

.field protected mCancel:Z

.field protected mDownloadUri:Ljava/lang/String;

.field protected mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected mUploadUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://lab.t-mobilepictures.com/myalbum/data/users/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/feed/images?fmt=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "lab.t-mobilepictures.com"

    return-object v0
.end method

.method public static getUploadUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://lab.t-mobilepictures.com/myalbum/data/users/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/feed/all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected InitAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://lab.t-mobilepictures.com/myalbum/data/users/1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/feed/images?fmt=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mDownloadUri:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://lab.t-mobilepictures.com/myalbum/data/users/1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/feed/all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mUploadUri:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    const-string v1, "HTC_MOBILE"

    invoke-direct {v0, v1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    new-instance v2, Lorg/apache/http/auth/AuthScope;

    const-string v3, "lab.t-mobilepictures.com"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    return-void
.end method

.method protected InitAuth2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://lab.t-mobilepictures.com/myalbum/data/users/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/feed/images?fmt=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mDownloadUri:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://lab.t-mobilepictures.com/myalbum/data/users/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/feed/all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mUploadUri:Ljava/lang/String;

    return-void
.end method

.method protected InitHttpClient()V
    .locals 12

    const v9, 0xea60

    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v8, :cond_0

    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v8, "UTF-8"

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const-string v8, "HTC-Android/1.0"

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Lcom/htc/socialnetwork/tmo/engine/TrustAllSSLSocketFactory;

    invoke-direct {v7}, Lcom/htc/socialnetwork/tmo/engine/TrustAllSSLSocketFactory;-><init>()V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v6, v7

    :goto_0
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {v1}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    new-instance v0, Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    invoke-virtual {v1}, Lorg/apache/http/impl/auth/BasicScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/apache/http/impl/auth/BasicSchemeFactory;

    invoke-direct {v9}, Lorg/apache/http/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v0, v8, v9}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v8, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setAuthSchemes(Lorg/apache/http/auth/AuthSchemeRegistry;)V

    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v9, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v9}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V

    :cond_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0
.end method
