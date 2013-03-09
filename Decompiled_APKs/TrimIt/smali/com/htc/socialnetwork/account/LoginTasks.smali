.class public abstract Lcom/htc/socialnetwork/account/LoginTasks;
.super Ljava/lang/Object;
.source "LoginTasks.java"

# interfaces
.implements Lcom/htc/socialnetwork/account/Constants;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LoginTasks"

.field private static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static mTimeout:I


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const v0, 0xea60

    sput v0, Lcom/htc/socialnetwork/account/LoginTasks;->mTimeout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/htc/socialnetwork/account/LoginTasks;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static declared-synchronized getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 12

    .prologue
    .line 83
    const-class v8, Lcom/htc/socialnetwork/account/LoginTasks;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/htc/socialnetwork/account/LoginTasks;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v7, :cond_0

    .line 84
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 85
    .local v4, params:Lorg/apache/http/params/HttpParams;
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 86
    const-string v7, "UTF-8"

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 87
    const/4 v7, 0x0

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 88
    const-string v7, "HTC-Android/1.0"

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 89
    const/4 v7, 0x0

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 90
    sget v7, Lcom/htc/socialnetwork/account/LoginTasks;->mTimeout:I

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 91
    sget v7, Lcom/htc/socialnetwork/account/LoginTasks;->mTimeout:I

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 93
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 94
    .local v5, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 98
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    .line 99
    .local v6, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 100
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v7, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 102
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 105
    .local v3, manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 109
    .local v0, _httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    .line 110
    .local v2, basicScheme:Lorg/apache/http/impl/auth/BasicScheme;
    new-instance v1, Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    .line 111
    .local v1, authRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;
    invoke-virtual {v2}, Lorg/apache/http/impl/auth/BasicScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lorg/apache/http/impl/auth/BasicSchemeFactory;

    invoke-direct {v9}, Lorg/apache/http/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v1, v7, v9}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 114
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setAuthSchemes(Lorg/apache/http/auth/AuthSchemeRegistry;)V

    .line 115
    new-instance v7, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    invoke-virtual {v0, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V

    .line 117
    sput-object v0, Lcom/htc/socialnetwork/account/LoginTasks;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 119
    :cond_0
    sget-object v7, Lcom/htc/socialnetwork/account/LoginTasks;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v7

    .line 83
    .end local v0           #_httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1           #authRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;
    .end local v2           #basicScheme:Lorg/apache/http/impl/auth/BasicScheme;
    .end local v3           #manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v5           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v6           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method


# virtual methods
.method public callLogin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/socialnetwork/account/LoginTasks;->login(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, display_name:Ljava/lang/String;
    return-object v0
.end method

.method public callLogout(Ljava/lang/String;)Z
    .locals 1
    .parameter "username"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/account/LoginTasks;->logout(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/socialnetwork/account/LoginTasks;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isCurrentLogin(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 45
    iget-object v4, p0, Lcom/htc/socialnetwork/account/LoginTasks;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 46
    .local v1, accountmanager:Landroid/accounts/AccountManager;
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 47
    .local v2, accounts:[Landroid/accounts/Account;
    array-length v4, v2

    if-lez v4, :cond_0

    .line 48
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v3, data:Landroid/os/Bundle;
    const/4 v4, 0x0

    aget-object v0, v2, v4

    .line 50
    .local v0, account:Landroid/accounts/Account;
    const-string v4, "LoginTasks"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v4, "LoginTasks"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v4, "com.htc.socialnetwork.account.USERNAME"

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v4, "com.htc.socialnetwork.account.PASSWORD"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #data:Landroid/os/Bundle;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public abstract logout(Ljava/lang/String;)Z
.end method

.method public setTimeOut(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 74
    sput p1, Lcom/htc/socialnetwork/account/LoginTasks;->mTimeout:I

    .line 75
    sget-object v0, Lcom/htc/socialnetwork/account/LoginTasks;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/htc/socialnetwork/account/LoginTasks;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 80
    :cond_0
    return-void
.end method
