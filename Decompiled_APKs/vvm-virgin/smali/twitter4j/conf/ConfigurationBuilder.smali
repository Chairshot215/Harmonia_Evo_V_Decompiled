.class public final Ltwitter4j/conf/ConfigurationBuilder;
.super Ljava/lang/Object;
.source "ConfigurationBuilder.java"


# instance fields
.field private configurationBean:Ltwitter4j/conf/ConfigurationBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ltwitter4j/conf/PropertyConfiguration;

    invoke-direct {v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>()V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    return-void
.end method

.method private checkNotBuilt()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use this builder any longer, build() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Ltwitter4j/conf/Configuration;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 289
    :try_start_0
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    throw v0
.end method

.method public setAsyncNumThreads(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "asyncNumThreads"

    .prologue
    .line 215
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 216
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setAsyncNumThreads(I)V

    .line 217
    return-object p0
.end method

.method public setClientURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "clientURL"

    .prologue
    .line 227
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 228
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setClientURL(Ljava/lang/String;)V

    .line 229
    return-object p0
.end method

.method public setClientVersion(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "clientVersion"

    .prologue
    .line 221
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 222
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setClientVersion(Ljava/lang/String;)V

    .line 223
    return-object p0
.end method

.method public setDebugEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "debugEnabled"

    .prologue
    .line 52
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 53
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setDebug(Z)V

    .line 54
    return-object p0
.end method

.method public setDispatcherImpl(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "dispatcherImpl"

    .prologue
    .line 233
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 234
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setDispatcherImpl(Ljava/lang/String;)V

    .line 235
    return-object p0
.end method

.method public setGZIPEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "gzipEnabled"

    .prologue
    .line 46
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 47
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setGZIPEnabled(Z)V

    .line 48
    return-object p0
.end method

.method public setHttpConnectionTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpConnectionTimeout"

    .prologue
    .line 94
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 95
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpConnectionTimeout(I)V

    .line 96
    return-object p0
.end method

.method public setHttpDefaultMaxPerRoute(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpDefaultMaxPerRoute"

    .prologue
    .line 125
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 126
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpDefaultMaxPerRoute(I)V

    .line 127
    return-object p0
.end method

.method public setHttpMaxTotalConnections(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpMaxConnections"

    .prologue
    .line 119
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 120
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpMaxTotalConnections(I)V

    .line 121
    return-object p0
.end method

.method public setHttpProxyHost(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpProxyHost"

    .prologue
    .line 70
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 71
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyHost(Ljava/lang/String;)V

    .line 72
    return-object p0
.end method

.method public setHttpProxyPassword(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpProxyPassword"

    .prologue
    .line 82
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 83
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 84
    return-object p0
.end method

.method public setHttpProxyPort(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpProxyPort"

    .prologue
    .line 88
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 89
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPort(I)V

    .line 90
    return-object p0
.end method

.method public setHttpProxyUser(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpProxyUser"

    .prologue
    .line 76
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 77
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyUser(Ljava/lang/String;)V

    .line 78
    return-object p0
.end method

.method public setHttpReadTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpReadTimeout"

    .prologue
    .line 100
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 101
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpReadTimeout(I)V

    .line 102
    return-object p0
.end method

.method public setHttpRetryCount(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpRetryCount"

    .prologue
    .line 112
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 113
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryCount(I)V

    .line 114
    return-object p0
.end method

.method public setHttpRetryIntervalSeconds(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpRetryIntervalSeconds"

    .prologue
    .line 131
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 132
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryIntervalSeconds(I)V

    .line 133
    return-object p0
.end method

.method public setHttpStreamingReadTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpStreamingReadTimeout"

    .prologue
    .line 106
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 107
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpStreamingReadTimeout(I)V

    .line 108
    return-object p0
.end method

.method public setIncludeEntitiesEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 245
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 246
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeEntitiesEnbled(Z)V

    .line 247
    return-object p0
.end method

.method public setIncludeRTsEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 239
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 240
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeRTsEnbled(Z)V

    .line 241
    return-object p0
.end method

.method public setJSONStoreEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 251
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 252
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setJSONStoreEnabled(Z)V

    .line 253
    return-object p0
.end method

.method public setMBeanEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 257
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 258
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMBeanEnabled(Z)V

    .line 259
    return-object p0
.end method

.method public setMediaProvider(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "mediaProvider"

    .prologue
    .line 269
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 270
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMediaProvider(Ljava/lang/String;)V

    .line 271
    return-object p0
.end method

.method public setMediaProviderAPIKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "mediaProviderAPIKey"

    .prologue
    .line 275
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 276
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderAPIKey(Ljava/lang/String;)V

    .line 277
    return-object p0
.end method

.method public setMediaProviderParameters(Ljava/util/Properties;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "props"

    .prologue
    .line 281
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 282
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderParameters(Ljava/util/Properties;)V

    .line 283
    return-object p0
.end method

.method public setOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAccessToken"

    .prologue
    .line 149
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 150
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 151
    return-object p0
.end method

.method public setOAuthAccessTokenSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAccessTokenSecret"

    .prologue
    .line 155
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 156
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 157
    return-object p0
.end method

.method public setOAuthAccessTokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAccessTokenURL"

    .prologue
    .line 173
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 174
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 175
    return-object p0
.end method

.method public setOAuthAuthenticationURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAuthenticationURL"

    .prologue
    .line 179
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 180
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 181
    return-object p0
.end method

.method public setOAuthAuthorizationURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAuthorizationURL"

    .prologue
    .line 167
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 168
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 169
    return-object p0
.end method

.method public setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthConsumerKey"

    .prologue
    .line 137
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 138
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 139
    return-object p0
.end method

.method public setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthConsumerSecret"

    .prologue
    .line 143
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 144
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 145
    return-object p0
.end method

.method public setOAuthRequestTokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthRequestTokenURL"

    .prologue
    .line 161
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 162
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 163
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "password"

    .prologue
    .line 64
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 65
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setPassword(Ljava/lang/String;)V

    .line 66
    return-object p0
.end method

.method public setPrettyDebugEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "prettyDebugEnabled"

    .prologue
    .line 40
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 41
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setPrettyDebugEnabled(Z)V

    .line 42
    return-object p0
.end method

.method public setRestBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "restBaseURL"

    .prologue
    .line 185
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 186
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setRestBaseURL(Ljava/lang/String;)V

    .line 187
    return-object p0
.end method

.method public setSearchBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "searchBaseURL"

    .prologue
    .line 191
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 192
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setSearchBaseURL(Ljava/lang/String;)V

    .line 193
    return-object p0
.end method

.method public setSiteStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "siteStreamBaseURL"

    .prologue
    .line 209
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 210
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setSiteStreamBaseURL(Ljava/lang/String;)V

    .line 211
    return-object p0
.end method

.method public setStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "streamBaseURL"

    .prologue
    .line 197
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 198
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setStreamBaseURL(Ljava/lang/String;)V

    .line 199
    return-object p0
.end method

.method public setUseSSL(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "useSSL"

    .prologue
    .line 34
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 35
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUseSSL(Z)V

    .line 36
    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "user"

    .prologue
    .line 58
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 59
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUser(Ljava/lang/String;)V

    .line 60
    return-object p0
.end method

.method public setUserStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "userStreamBaseURL"

    .prologue
    .line 203
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 204
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamBaseURL(Ljava/lang/String;)V

    .line 205
    return-object p0
.end method

.method public setUserStreamRepliesAllEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 263
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 264
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamRepliesAllEnabled(Z)V

    .line 265
    return-object p0
.end method
