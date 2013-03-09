.class Ltwitter4j/TwitterSupport;
.super Ljava/lang/Object;
.source "TwitterSupport.java"


# instance fields
.field protected final USE_SSL:Z

.field protected http:Ltwitter4j/http/HttpClient;

.field protected source:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, v0}, Ltwitter4j/TwitterSupport;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "userId"
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ltwitter4j/http/HttpClient;

    invoke-direct {v0}, Ltwitter4j/http/HttpClient;-><init>()V

    iput-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    .line 36
    invoke-static {}, Ltwitter4j/Configuration;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterSupport;->source:Ljava/lang/String;

    .line 43
    invoke-static {}, Ltwitter4j/Configuration;->useSSL()Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/TwitterSupport;->USE_SSL:Z

    .line 44
    invoke-virtual {p0, v1}, Ltwitter4j/TwitterSupport;->setClientVersion(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, v1}, Ltwitter4j/TwitterSupport;->setClientURL(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Ltwitter4j/TwitterSupport;->setUserId(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p2}, Ltwitter4j/TwitterSupport;->setPassword(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public forceUsePost(Z)V
    .locals 0
    .parameter "forceUsePost"

    .prologue
    .line 228
    return-void
.end method

.method public getClientURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    const-string v1, "X-Twitter-Client-URL"

    invoke-virtual {v0, v1}, Ltwitter4j/http/HttpClient;->getRequestHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    const-string v1, "X-Twitter-Client-Version"

    invoke-virtual {v0, v1}, Ltwitter4j/http/HttpClient;->getRequestHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0}, Ltwitter4j/http/HttpClient;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0}, Ltwitter4j/http/HttpClient;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0}, Ltwitter4j/http/HttpClient;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUsePostForced()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public setClientURL(Ljava/lang/String;)V
    .locals 2
    .parameter "clientURL"

    .prologue
    .line 92
    const-string v0, "X-Twitter-Client-URL"

    invoke-static {p1}, Ltwitter4j/Configuration;->getClientURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/TwitterSupport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 74
    const-string v0, "X-Twitter-Client-Version"

    invoke-static {p1}, Ltwitter4j/Configuration;->getCilentVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/TwitterSupport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setHttpConnectionTimeout(I)V
    .locals 1
    .parameter "connectionTimeout"

    .prologue
    .line 172
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->setConnectionTimeout(I)V

    .line 173
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;I)V
    .locals 1
    .parameter "proxyHost"
    .parameter "proxyPort"

    .prologue
    .line 148
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->setProxyHost(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p2}, Ltwitter4j/http/HttpClient;->setProxyPort(I)V

    .line 150
    return-void
.end method

.method public setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "proxyUser"
    .parameter "proxyPass"

    .prologue
    .line 160
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->setProxyAuthUser(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p2}, Ltwitter4j/http/HttpClient;->setProxyAuthPassword(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setHttpReadTimeout(I)V
    .locals 1
    .parameter "readTimeoutMilliSecs"

    .prologue
    .line 182
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->setReadTimeout(I)V

    .line 183
    return-void
.end method

.method public declared-synchronized setPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-static {p1}, Ltwitter4j/Configuration;->getPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/http/HttpClient;->setPassword(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 216
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/http/HttpClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public setRetryCount(I)V
    .locals 1
    .parameter "retryCount"

    .prologue
    .line 238
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->setRetryCount(I)V

    .line 239
    return-void
.end method

.method public setRetryIntervalSecs(I)V
    .locals 1
    .parameter "retryIntervalSecs"

    .prologue
    .line 242
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->setRetryIntervalSecs(I)V

    .line 243
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 194
    invoke-static {p1}, Ltwitter4j/Configuration;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterSupport;->source:Ljava/lang/String;

    .line 195
    const-string v0, "X-Twitter-Client"

    iget-object v1, p0, Ltwitter4j/TwitterSupport;->source:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ltwitter4j/TwitterSupport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 56
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/TwitterSupport;->http:Ltwitter4j/http/HttpClient;

    invoke-static {p1}, Ltwitter4j/Configuration;->getUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/http/HttpClient;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
