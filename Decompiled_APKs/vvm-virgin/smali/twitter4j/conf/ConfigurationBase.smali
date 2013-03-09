.class Ltwitter4j/conf/ConfigurationBase;
.super Ljava/lang/Object;
.source "ConfigurationBase.java"

# interfaces
.implements Ltwitter4j/conf/Configuration;
.implements Ljava/io/Serializable;


# static fields
.field public static final DALVIK:Ljava/lang/String; = "twitter4j.dalvik"

.field private static final DEFAULT_OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/access_token"

.field private static final DEFAULT_OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/authenticate"

.field private static final DEFAULT_OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/authorize"

.field private static final DEFAULT_OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/request_token"

.field private static final DEFAULT_REST_BASE_URL:Ljava/lang/String; = "http://api.twitter.com/1/"

.field private static final DEFAULT_SEARCH_BASE_URL:Ljava/lang/String; = "http://search.twitter.com/"

.field private static final DEFAULT_SITE_STREAM_BASE_URL:Ljava/lang/String; = "http://sitestream.twitter.com/2b/"

.field private static final DEFAULT_STREAM_BASE_URL:Ljava/lang/String; = "http://stream.twitter.com/1/"

.field private static final DEFAULT_USER_STREAM_BASE_URL:Ljava/lang/String; = "https://userstream.twitter.com/2/"

.field static dalvikDetected:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x5bbd3477f3537f08L


# instance fields
.field private IS_DALVIK:Z

.field private asyncNumThreads:I

.field private clientURL:Ljava/lang/String;

.field private clientVersion:Ljava/lang/String;

.field private debug:Z

.field private defaultMaxPerRoute:I

.field private dispatcherImpl:Ljava/lang/String;

.field private gzipEnabled:Z

.field private httpConnectionTimeout:I

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPassword:Ljava/lang/String;

.field private httpProxyPort:I

.field private httpProxyUser:Ljava/lang/String;

.field private httpReadTimeout:I

.field private httpRetryCount:I

.field private httpRetryIntervalSeconds:I

.field private httpStreamingReadTimeout:I

.field private includeEntitiesEnabled:Z

.field private includeRTsEnabled:Z

.field private jsonStoreEnabled:Z

.field private maxTotalConnections:I

.field private mbeanEnabled:Z

.field private mediaProvider:Ljava/lang/String;

.field private mediaProviderAPIKey:Ljava/lang/String;

.field private mediaProviderParameters:Ljava/util/Properties;

.field private oAuthAccessToken:Ljava/lang/String;

.field private oAuthAccessTokenSecret:Ljava/lang/String;

.field private oAuthAccessTokenURL:Ljava/lang/String;

.field private oAuthAuthenticationURL:Ljava/lang/String;

.field private oAuthAuthorizationURL:Ljava/lang/String;

.field private oAuthConsumerKey:Ljava/lang/String;

.field private oAuthConsumerSecret:Ljava/lang/String;

.field private oAuthRequestTokenURL:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private prettyDebug:Z

.field requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private restBaseURL:Ljava/lang/String;

.field private searchBaseURL:Ljava/lang/String;

.field private siteStreamBaseURL:Ljava/lang/String;

.field private streamBaseURL:Ljava/lang/String;

.field private useSSL:Z

.field private user:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private userStreamBaseURL:Ljava/lang/String;

.field private userStreamRepliesAllEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    :try_start_0
    const-string v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 114
    const-string v1, "true"

    sput-object v1, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 115
    .end local v0           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 116
    .restart local v0       #cnfe:Ljava/lang/ClassNotFoundException;
    const-string v1, "false"

    sput-object v1, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setDebug(Z)V

    .line 122
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setUser(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setPassword(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setUseSSL(Z)V

    .line 125
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setPrettyDebugEnabled(Z)V

    .line 126
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setGZIPEnabled(Z)V

    .line 127
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyHost(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyUser(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 130
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPort(I)V

    .line 131
    const/16 v2, 0x4e20

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpConnectionTimeout(I)V

    .line 132
    const v2, 0x1d4c0

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpReadTimeout(I)V

    .line 133
    const v2, 0x493e0

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpStreamingReadTimeout(I)V

    .line 134
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryCount(I)V

    .line 135
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryIntervalSeconds(I)V

    .line 136
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpMaxTotalConnections(I)V

    .line 137
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpDefaultMaxPerRoute(I)V

    .line 138
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setAsyncNumThreads(I)V

    .line 143
    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setClientVersion(Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "http://twitter4j.org/en/twitter4j-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setClientURL(Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "twitter4j http://twitter4j.org/ /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setUserAgent(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setIncludeRTsEnbled(Z)V

    .line 149
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setIncludeEntitiesEnbled(Z)V

    .line 151
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setJSONStoreEnabled(Z)V

    .line 153
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setMBeanEnabled(Z)V

    .line 155
    const-string v2, "http://api.twitter.com/oauth/request_token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 156
    const-string v2, "http://api.twitter.com/oauth/authorize"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 157
    const-string v2, "http://api.twitter.com/oauth/access_token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 158
    const-string v2, "http://api.twitter.com/oauth/authenticate"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 160
    const-string v2, "http://api.twitter.com/1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setRestBaseURL(Ljava/lang/String;)V

    .line 163
    const-string v2, "http://search.twitter.com/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setSearchBaseURL(Ljava/lang/String;)V

    .line 166
    const-string v2, "http://stream.twitter.com/1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setStreamBaseURL(Ljava/lang/String;)V

    .line 167
    const-string v2, "https://userstream.twitter.com/2/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamBaseURL(Ljava/lang/String;)V

    .line 168
    const-string v2, "http://sitestream.twitter.com/2b/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setSiteStreamBaseURL(Ljava/lang/String;)V

    .line 170
    const-string v2, "twitter4j.internal.async.DispatcherImpl"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setDispatcherImpl(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setIncludeRTsEnbled(Z)V

    .line 173
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamRepliesAllEnabled(Z)V

    .line 176
    :try_start_0
    const-string v2, "twitter4j.dalvik"

    sget-object v3, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    .local v1, isDalvik:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    .line 183
    const-string v2, "YFROG"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setMediaProvider(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderAPIKey(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderParameters(Ljava/util/Properties;)V

    .line 186
    return-void

    .line 177
    .end local v1           #isDalvik:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 179
    .local v0, ignore:Ljava/lang/SecurityException;
    sget-object v1, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;

    .restart local v1       #isDalvik:Ljava/lang/String;
    goto :goto_0
.end method

.method private fixRestBaseURL()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 433
    const-string v0, "http://api.twitter.com/1/"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 435
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v2, v0}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 440
    :cond_0
    :goto_0
    const-string v0, "http://api.twitter.com/oauth/access_token"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    .line 443
    :cond_1
    const-string v0, "http://api.twitter.com/oauth/authenticate"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    .line 446
    :cond_2
    const-string v0, "http://api.twitter.com/oauth/authorize"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    .line 449
    :cond_3
    const-string v0, "http://api.twitter.com/oauth/request_token"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    .line 452
    :cond_4
    return-void

    .line 437
    :cond_5
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    goto :goto_0
.end method

.method static fixURL(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "useSSL"
    .parameter "url"

    .prologue
    .line 770
    if-nez p1, :cond_0

    .line 771
    const/4 v2, 0x0

    .line 781
    :goto_0
    return-object v2

    .line 773
    :cond_0
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 774
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 775
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url should contain \'://\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 777
    :cond_1
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, hostAndLater:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 779
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 781
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initRequestHeaders()V
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    .line 253
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-Version"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-URL"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client"

    const-string v2, "Twitter4J"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_0
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 596
    if-ne p0, p1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v1

    .line 597
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 599
    check-cast v0, Ltwitter4j/conf/ConfigurationBase;

    .line 601
    .local v0, that:Ltwitter4j/conf/ConfigurationBase;
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 602
    :cond_4
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 603
    :cond_5
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 604
    :cond_6
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 605
    :cond_7
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 606
    :cond_8
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 607
    :cond_9
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 608
    :cond_a
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    if-eq v3, v4, :cond_b

    move v1, v2

    goto :goto_0

    .line 609
    :cond_b
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    if-eq v3, v4, :cond_c

    move v1, v2

    .line 610
    goto :goto_0

    .line 611
    :cond_c
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    if-eq v3, v4, :cond_d

    move v1, v2

    .line 612
    goto :goto_0

    .line 613
    :cond_d
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    if-eq v3, v4, :cond_e

    move v1, v2

    goto :goto_0

    .line 614
    :cond_e
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    if-eq v3, v4, :cond_f

    move v1, v2

    goto :goto_0

    .line 615
    :cond_f
    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    if-eq v3, v4, :cond_10

    move v1, v2

    goto :goto_0

    .line 616
    :cond_10
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    if-eq v3, v4, :cond_11

    move v1, v2

    goto/16 :goto_0

    .line 617
    :cond_11
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    if-eq v3, v4, :cond_12

    move v1, v2

    goto/16 :goto_0

    .line 618
    :cond_12
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    if-eq v3, v4, :cond_13

    move v1, v2

    .line 619
    goto/16 :goto_0

    .line 620
    :cond_13
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    :cond_14
    move v1, v2

    .line 621
    goto/16 :goto_0

    .line 620
    :cond_15
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 622
    :cond_16
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_17
    move v1, v2

    .line 623
    goto/16 :goto_0

    .line 622
    :cond_18
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 624
    :cond_19
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1a
    move v1, v2

    .line 625
    goto/16 :goto_0

    .line 624
    :cond_1b
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 626
    :cond_1c
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1d
    move v1, v2

    .line 627
    goto/16 :goto_0

    .line 626
    :cond_1e
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    if-nez v3, :cond_1d

    .line 628
    :cond_1f
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    if-eqz v3, :cond_21

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_20
    move v1, v2

    .line 629
    goto/16 :goto_0

    .line 628
    :cond_21
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    if-nez v3, :cond_20

    .line 630
    :cond_22
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    :cond_23
    move v1, v2

    .line 631
    goto/16 :goto_0

    .line 630
    :cond_24
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    if-nez v3, :cond_23

    .line 632
    :cond_25
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    move v1, v2

    .line 633
    goto/16 :goto_0

    .line 632
    :cond_27
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 634
    :cond_28
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_29
    move v1, v2

    .line 635
    goto/16 :goto_0

    .line 634
    :cond_2a
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-nez v3, :cond_29

    .line 636
    :cond_2b
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v3, v4}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    :cond_2c
    move v1, v2

    .line 637
    goto/16 :goto_0

    .line 636
    :cond_2d
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-nez v3, :cond_2c

    .line 638
    :cond_2e
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v3, :cond_30

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    :cond_2f
    move v1, v2

    .line 639
    goto/16 :goto_0

    .line 638
    :cond_30
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-nez v3, :cond_2f

    .line 640
    :cond_31
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v3, :cond_33

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_32
    move v1, v2

    .line 641
    goto/16 :goto_0

    .line 640
    :cond_33
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 642
    :cond_34
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_36

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_35
    move v1, v2

    .line 643
    goto/16 :goto_0

    .line 642
    :cond_36
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-nez v3, :cond_35

    .line 644
    :cond_37
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v3, :cond_39

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    :cond_38
    move v1, v2

    .line 645
    goto/16 :goto_0

    .line 644
    :cond_39
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-nez v3, :cond_38

    .line 646
    :cond_3a
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    :cond_3b
    move v1, v2

    .line 647
    goto/16 :goto_0

    .line 646
    :cond_3c
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-nez v3, :cond_3b

    .line 648
    :cond_3d
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    :cond_3e
    move v1, v2

    .line 649
    goto/16 :goto_0

    .line 648
    :cond_3f
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-nez v3, :cond_3e

    .line 650
    :cond_40
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v3, :cond_42

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    :cond_41
    move v1, v2

    .line 651
    goto/16 :goto_0

    .line 650
    :cond_42
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-nez v3, :cond_41

    .line 652
    :cond_43
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_45

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    :cond_44
    move v1, v2

    .line 653
    goto/16 :goto_0

    .line 652
    :cond_45
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-nez v3, :cond_44

    .line 654
    :cond_46
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v3, :cond_48

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    :cond_47
    move v1, v2

    .line 655
    goto/16 :goto_0

    .line 654
    :cond_48
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-nez v3, :cond_47

    .line 656
    :cond_49
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    :cond_4a
    move v1, v2

    .line 657
    goto/16 :goto_0

    .line 656
    :cond_4b
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    if-nez v3, :cond_4a

    .line 658
    :cond_4c
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    :cond_4d
    move v1, v2

    .line 659
    goto/16 :goto_0

    .line 658
    :cond_4e
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-nez v3, :cond_4d

    .line 660
    :cond_4f
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_51

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    :cond_50
    move v1, v2

    .line 661
    goto/16 :goto_0

    .line 660
    :cond_51
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    if-nez v3, :cond_50

    .line 662
    :cond_52
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_54

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    :cond_53
    move v1, v2

    .line 663
    goto/16 :goto_0

    .line 662
    :cond_54
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-nez v3, :cond_53

    .line 664
    :cond_55
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_57

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    :cond_56
    move v1, v2

    .line 665
    goto/16 :goto_0

    .line 664
    :cond_57
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-nez v3, :cond_56

    .line 666
    :cond_58
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v3, :cond_5a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    :cond_59
    move v1, v2

    .line 667
    goto/16 :goto_0

    .line 666
    :cond_5a
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-nez v3, :cond_59

    .line 668
    :cond_5b
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    if-eqz v3, :cond_5d

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    :cond_5c
    move v1, v2

    .line 669
    goto/16 :goto_0

    .line 668
    :cond_5d
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    if-nez v3, :cond_5c

    .line 670
    :cond_5e
    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 671
    goto/16 :goto_0

    .line 670
    :cond_5f
    iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final getAsyncNumThreads()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    return v0
.end method

.method public final getClientURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpConnectionTimeout()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    return v0
.end method

.method public final getHttpDefaultMaxPerRoute()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    return v0
.end method

.method public final getHttpMaxTotalConnections()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    return v0
.end method

.method public final getHttpProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpProxyPort()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    return v0
.end method

.method public final getHttpProxyUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpReadTimeout()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    return v0
.end method

.method public final getHttpRetryCount()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    return v0
.end method

.method public final getHttpRetryIntervalSeconds()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    return v0
.end method

.method public getHttpStreamingReadTimeout()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    return v0
.end method

.method public getMediaProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProviderAPIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProviderParameters()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    return-object v0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 678
    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eqz v3, :cond_1

    move v0, v1

    .line 679
    .local v0, result:I
    :goto_0
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int v0, v4, v3

    .line 680
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int v0, v4, v3

    .line 681
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int v0, v4, v3

    .line 682
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    if-eqz v3, :cond_5

    move v3, v1

    :goto_4
    add-int v0, v4, v3

    .line 683
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    if-eqz v3, :cond_6

    move v3, v1

    :goto_5
    add-int v0, v4, v3

    .line 684
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int v0, v4, v3

    .line 685
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int v0, v4, v3

    .line 686
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int v0, v4, v3

    .line 687
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    add-int v0, v3, v4

    .line 688
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    add-int v0, v3, v4

    .line 689
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    add-int v0, v3, v4

    .line 690
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    add-int v0, v3, v4

    .line 691
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    add-int v0, v3, v4

    .line 692
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    add-int v0, v3, v4

    .line 693
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    add-int v0, v3, v4

    .line 694
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    add-int v0, v3, v4

    .line 695
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int v0, v4, v3

    .line 696
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int v0, v4, v3

    .line 697
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int v0, v4, v3

    .line 698
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int v0, v4, v3

    .line 699
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    add-int v0, v4, v3

    .line 700
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int v0, v4, v3

    .line 701
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int v0, v4, v3

    .line 702
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int v0, v4, v3

    .line 703
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int v0, v4, v3

    .line 704
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_12
    add-int v0, v4, v3

    .line 705
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_13
    add-int v0, v4, v3

    .line 706
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int v0, v4, v3

    .line 707
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_15
    add-int v0, v4, v3

    .line 708
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_16
    add-int v0, v4, v3

    .line 709
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    add-int v0, v3, v4

    .line 710
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    if-eqz v3, :cond_18

    move v3, v1

    :goto_17
    add-int v0, v4, v3

    .line 711
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    if-eqz v3, :cond_19

    move v3, v1

    :goto_18
    add-int v0, v4, v3

    .line 712
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_19
    add-int v0, v4, v3

    .line 713
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1a
    add-int v0, v4, v3

    .line 714
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v4, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    if-eqz v4, :cond_1c

    :goto_1b
    add-int v0, v3, v1

    .line 715
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1c
    add-int v0, v3, v1

    .line 716
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1d
    add-int v0, v3, v1

    .line 717
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1e
    add-int v0, v3, v1

    .line 718
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 719
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v2

    .line 678
    goto/16 :goto_0

    .restart local v0       #result:I
    :cond_2
    move v3, v2

    .line 679
    goto/16 :goto_1

    :cond_3
    move v3, v2

    .line 680
    goto/16 :goto_2

    :cond_4
    move v3, v2

    .line 681
    goto/16 :goto_3

    :cond_5
    move v3, v2

    .line 682
    goto/16 :goto_4

    :cond_6
    move v3, v2

    .line 683
    goto/16 :goto_5

    :cond_7
    move v3, v2

    .line 684
    goto/16 :goto_6

    :cond_8
    move v3, v2

    .line 685
    goto/16 :goto_7

    :cond_9
    move v3, v2

    .line 686
    goto/16 :goto_8

    :cond_a
    move v3, v2

    .line 695
    goto/16 :goto_9

    :cond_b
    move v3, v2

    .line 696
    goto/16 :goto_a

    :cond_c
    move v3, v2

    .line 697
    goto/16 :goto_b

    :cond_d
    move v3, v2

    .line 698
    goto/16 :goto_c

    :cond_e
    move v3, v2

    .line 699
    goto/16 :goto_d

    :cond_f
    move v3, v2

    .line 700
    goto/16 :goto_e

    :cond_10
    move v3, v2

    .line 701
    goto/16 :goto_f

    :cond_11
    move v3, v2

    .line 702
    goto/16 :goto_10

    :cond_12
    move v3, v2

    .line 703
    goto/16 :goto_11

    :cond_13
    move v3, v2

    .line 704
    goto/16 :goto_12

    :cond_14
    move v3, v2

    .line 705
    goto/16 :goto_13

    :cond_15
    move v3, v2

    .line 706
    goto/16 :goto_14

    :cond_16
    move v3, v2

    .line 707
    goto/16 :goto_15

    :cond_17
    move v3, v2

    .line 708
    goto/16 :goto_16

    :cond_18
    move v3, v2

    .line 710
    goto/16 :goto_17

    :cond_19
    move v3, v2

    .line 711
    goto/16 :goto_18

    :cond_1a
    move v3, v2

    .line 712
    goto/16 :goto_19

    :cond_1b
    move v3, v2

    .line 713
    goto/16 :goto_1a

    :cond_1c
    move v1, v2

    .line 714
    goto/16 :goto_1b

    :cond_1d
    move v1, v2

    .line 715
    goto/16 :goto_1c

    :cond_1e
    move v1, v2

    .line 716
    goto :goto_1d

    :cond_1f
    move v1, v2

    .line 717
    goto :goto_1e
.end method

.method public final isDalvik()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    return v0
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    return v0
.end method

.method public isGZIPEnabled()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    return v0
.end method

.method public isIncludeEntitiesEnabled()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    return v0
.end method

.method public isIncludeRTsEnabled()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    return v0
.end method

.method public isJSONStoreEnabled()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    return v0
.end method

.method public isMBeanEnabled()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    return v0
.end method

.method public isPrettyDebugEnabled()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    return v0
.end method

.method public isUserStreamRepliesAllEnabled()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    return v0
.end method

.method protected final setAsyncNumThreads(I)V
    .locals 0
    .parameter "asyncNumThreads"

    .prologue
    .line 402
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    .line 403
    return-void
.end method

.method protected final setClientURL(Ljava/lang/String;)V
    .locals 0
    .parameter "clientURL"

    .prologue
    .line 419
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    .line 420
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 421
    return-void
.end method

.method protected final setClientVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "clientVersion"

    .prologue
    .line 410
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    .line 411
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 412
    return-void
.end method

.method protected final setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 198
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    .line 199
    return-void
.end method

.method protected final setDispatcherImpl(Ljava/lang/String;)V
    .locals 0
    .parameter "dispatcherImpl"

    .prologue
    .line 527
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    .line 528
    return-void
.end method

.method protected final setGZIPEnabled(Z)V
    .locals 0
    .parameter "gzipEnabled"

    .prologue
    .line 240
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z

    .line 241
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 242
    return-void
.end method

.method protected final setHttpConnectionTimeout(I)V
    .locals 0
    .parameter "connectionTimeout"

    .prologue
    .line 309
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    .line 310
    return-void
.end method

.method protected final setHttpDefaultMaxPerRoute(I)V
    .locals 0
    .parameter "defaultMaxPerRoute"

    .prologue
    .line 358
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    .line 359
    return-void
.end method

.method protected final setHttpMaxTotalConnections(I)V
    .locals 0
    .parameter "maxTotalConnections"

    .prologue
    .line 350
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    .line 351
    return-void
.end method

.method protected final setHttpProxyHost(Ljava/lang/String;)V
    .locals 0
    .parameter "proxyHost"

    .prologue
    .line 277
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    .line 278
    return-void
.end method

.method protected final setHttpProxyPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "proxyPassword"

    .prologue
    .line 293
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    .line 294
    return-void
.end method

.method protected final setHttpProxyPort(I)V
    .locals 0
    .parameter "proxyPort"

    .prologue
    .line 301
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    .line 302
    return-void
.end method

.method protected final setHttpProxyUser(Ljava/lang/String;)V
    .locals 0
    .parameter "proxyUser"

    .prologue
    .line 285
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    .line 286
    return-void
.end method

.method protected final setHttpReadTimeout(I)V
    .locals 0
    .parameter "readTimeout"

    .prologue
    .line 317
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    .line 318
    return-void
.end method

.method protected final setHttpRetryCount(I)V
    .locals 0
    .parameter "retryCount"

    .prologue
    .line 334
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    .line 335
    return-void
.end method

.method protected final setHttpRetryIntervalSeconds(I)V
    .locals 0
    .parameter "retryIntervalSeconds"

    .prologue
    .line 342
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    .line 343
    return-void
.end method

.method protected final setHttpStreamingReadTimeout(I)V
    .locals 0
    .parameter "httpStreamingReadTimeout"

    .prologue
    .line 325
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    .line 326
    return-void
.end method

.method protected final setIncludeEntitiesEnbled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 543
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    .line 544
    return-void
.end method

.method protected final setIncludeRTsEnbled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 535
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    .line 536
    return-void
.end method

.method protected final setJSONStoreEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 551
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    .line 552
    return-void
.end method

.method protected final setMBeanEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 559
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    .line 560
    return-void
.end method

.method protected final setMediaProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaProvider"

    .prologue
    .line 575
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    .line 576
    return-void
.end method

.method protected final setMediaProviderAPIKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaProviderAPIKey"

    .prologue
    .line 583
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    .line 584
    return-void
.end method

.method protected final setMediaProviderParameters(Ljava/util/Properties;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 591
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    .line 592
    return-void
.end method

.method protected final setOAuthAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAccessToken"

    .prologue
    .line 386
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    .line 387
    return-void
.end method

.method protected final setOAuthAccessTokenSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAccessTokenSecret"

    .prologue
    .line 394
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    .line 395
    return-void
.end method

.method protected final setOAuthAccessTokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAccessTokenURL"

    .prologue
    .line 509
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    .line 510
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 511
    return-void
.end method

.method protected final setOAuthAuthenticationURL(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAuthenticationURL"

    .prologue
    .line 518
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    .line 519
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 520
    return-void
.end method

.method protected final setOAuthAuthorizationURL(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAuthorizationURL"

    .prologue
    .line 500
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    .line 501
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 502
    return-void
.end method

.method protected final setOAuthConsumerKey(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthConsumerKey"

    .prologue
    .line 368
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    .line 369
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 370
    return-void
.end method

.method protected final setOAuthConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthConsumerSecret"

    .prologue
    .line 377
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    .line 378
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 379
    return-void
.end method

.method protected final setOAuthRequestTokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthRequestTokenURL"

    .prologue
    .line 491
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    .line 492
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 493
    return-void
.end method

.method protected final setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 223
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    .line 224
    return-void
.end method

.method protected final setPrettyDebugEnabled(Z)V
    .locals 0
    .parameter "prettyDebug"

    .prologue
    .line 236
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    .line 237
    return-void
.end method

.method protected final setRestBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "restBaseURL"

    .prologue
    .line 428
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 429
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 430
    return-void
.end method

.method protected final setSearchBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "searchBaseURL"

    .prologue
    .line 459
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    .line 460
    return-void
.end method

.method protected final setSiteStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "siteStreamBaseURL"

    .prologue
    .line 483
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    .line 484
    return-void
.end method

.method protected final setStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "streamBaseURL"

    .prologue
    .line 467
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    .line 468
    return-void
.end method

.method protected final setUseSSL(Z)V
    .locals 0
    .parameter "useSSL"

    .prologue
    .line 231
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    .line 232
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 233
    return-void
.end method

.method protected final setUser(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 215
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    .line 216
    return-void
.end method

.method protected final setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 206
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 208
    return-void
.end method

.method protected final setUserStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "siteStreamBaseURL"

    .prologue
    .line 475
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    .line 476
    return-void
.end method

.method protected final setUserStreamRepliesAllEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 567
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    .line 568
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 724
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ConfigurationBase{debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userAgent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", useSSL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpProxyHost=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpProxyUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpProxyPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpProxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpConnectionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpReadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpStreamingReadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpRetryIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", maxTotalConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", defaultMaxPerRoute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthConsumerKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthConsumerSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAccessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAccessTokenSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthRequestTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAuthorizationURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAccessTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAuthenticationURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", restBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", searchBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", streamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userStreamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", siteStreamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", dispatcherImpl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", asyncNumThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", includeRTsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", includeEntitiesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userStreamRepliesAllEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", clientVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", clientURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", IS_DALVIK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mediaProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mediaProviderAPIKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mediaProviderParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
