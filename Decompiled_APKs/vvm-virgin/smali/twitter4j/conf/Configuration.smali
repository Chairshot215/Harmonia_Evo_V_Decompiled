.class public interface abstract Ltwitter4j/conf/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Ltwitter4j/internal/http/HttpClientConfiguration;
.implements Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
.implements Ltwitter4j/auth/AuthorizationConfiguration;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getAsyncNumThreads()I
.end method

.method public abstract getClientURL()Ljava/lang/String;
.end method

.method public abstract getClientVersion()Ljava/lang/String;
.end method

.method public abstract getDispatcherImpl()Ljava/lang/String;
.end method

.method public abstract getHttpConnectionTimeout()I
.end method

.method public abstract getHttpDefaultMaxPerRoute()I
.end method

.method public abstract getHttpMaxTotalConnections()I
.end method

.method public abstract getHttpProxyHost()Ljava/lang/String;
.end method

.method public abstract getHttpProxyPassword()Ljava/lang/String;
.end method

.method public abstract getHttpProxyPort()I
.end method

.method public abstract getHttpProxyUser()Ljava/lang/String;
.end method

.method public abstract getHttpReadTimeout()I
.end method

.method public abstract getHttpRetryCount()I
.end method

.method public abstract getHttpRetryIntervalSeconds()I
.end method

.method public abstract getHttpStreamingReadTimeout()I
.end method

.method public abstract getMediaProvider()Ljava/lang/String;
.end method

.method public abstract getMediaProviderAPIKey()Ljava/lang/String;
.end method

.method public abstract getMediaProviderParameters()Ljava/util/Properties;
.end method

.method public abstract getOAuthAccessToken()Ljava/lang/String;
.end method

.method public abstract getOAuthAccessTokenSecret()Ljava/lang/String;
.end method

.method public abstract getOAuthAccessTokenURL()Ljava/lang/String;
.end method

.method public abstract getOAuthAuthenticationURL()Ljava/lang/String;
.end method

.method public abstract getOAuthAuthorizationURL()Ljava/lang/String;
.end method

.method public abstract getOAuthConsumerKey()Ljava/lang/String;
.end method

.method public abstract getOAuthConsumerSecret()Ljava/lang/String;
.end method

.method public abstract getOAuthRequestTokenURL()Ljava/lang/String;
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getRequestHeaders()Ljava/util/Map;
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
.end method

.method public abstract getRestBaseURL()Ljava/lang/String;
.end method

.method public abstract getSearchBaseURL()Ljava/lang/String;
.end method

.method public abstract getSiteStreamBaseURL()Ljava/lang/String;
.end method

.method public abstract getStreamBaseURL()Ljava/lang/String;
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract getUserStreamBaseURL()Ljava/lang/String;
.end method

.method public abstract isDalvik()Z
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public abstract isIncludeEntitiesEnabled()Z
.end method

.method public abstract isIncludeRTsEnabled()Z
.end method

.method public abstract isJSONStoreEnabled()Z
.end method

.method public abstract isMBeanEnabled()Z
.end method

.method public abstract isUserStreamRepliesAllEnabled()Z
.end method
