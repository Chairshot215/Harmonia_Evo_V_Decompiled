.class public Ltwitter4j/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static DALVIK:Z

.field static class$twitter4j$Configuration:Ljava/lang/Class;

.field private static defaultProperty:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Ltwitter4j/Configuration;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 248
    invoke-static {p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static getCilentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "twitter4j.clientVersion"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCilentVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "clientVersion"

    .prologue
    .line 124
    const-string v0, "twitter4j.clientVersion"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "twitter4j.clientURL"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "clientURL"

    .prologue
    .line 156
    const-string v0, "twitter4j.clientURL"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionTimeout()I
    .locals 1

    .prologue
    .line 176
    const-string v0, "twitter4j.http.connectionTimeout"

    invoke-static {v0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getConnectionTimeout(I)I
    .locals 1
    .parameter "connectionTimeout"

    .prologue
    .line 180
    const-string v0, "twitter4j.http.connectionTimeout"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDebug()Z
    .locals 1

    .prologue
    .line 332
    const-string v0, "twitter4j.debug"

    invoke-static {v0}, Ltwitter4j/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntProperty(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 253
    invoke-static {p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 257
    :goto_0
    return v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getIntProperty(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "fallbackValue"

    .prologue
    .line 262
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 266
    :goto_0
    return v2

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getLongProperty(Ljava/lang/String;)J
    .locals 4
    .parameter "name"

    .prologue
    .line 271
    invoke-static {p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 275
    :goto_0
    return-wide v2

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getNumberOfAsyncThreads()I
    .locals 1

    .prologue
    .line 328
    const-string v0, "twitter4j.async.numThreads"

    invoke-static {v0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOAuthConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "twitter4j.oauth.consumerKey"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthConsumerKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "consumerKey"

    .prologue
    .line 236
    const-string v0, "twitter4j.oauth.consumerKey"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string v0, "twitter4j.oauth.consumerSecret"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthConsumerSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "consumerSecret"

    .prologue
    .line 244
    const-string v0, "twitter4j.oauth.consumerSecret"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "twitter4j.password"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "password"

    .prologue
    .line 220
    const-string v0, "twitter4j.password"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"
    .parameter "fallbackValue"

    .prologue
    .line 286
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 288
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    :cond_0
    if-nez v2, :cond_1

    .line 291
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".fallback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, fallback:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 293
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 300
    .end local v1           #fallback:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v2}, Ltwitter4j/Configuration;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 296
    .end local v2           #value:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 298
    .local v0, ace:Ljava/security/AccessControlException;
    move-object v2, p1

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "twitter4j.http.proxyHost"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "proxyHost"

    .prologue
    .line 140
    const-string v0, "twitter4j.http.proxyHost"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "twitter4j.http.proxyPassword"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "password"

    .prologue
    .line 164
    const-string v0, "twitter4j.http.proxyPassword"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyPort()I
    .locals 1

    .prologue
    .line 168
    const-string v0, "twitter4j.http.proxyPort"

    invoke-static {v0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProxyPort(I)I
    .locals 1
    .parameter "port"

    .prologue
    .line 172
    const-string v0, "twitter4j.http.proxyPort"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getProxyUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "twitter4j.http.proxyUser"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "user"

    .prologue
    .line 148
    const-string v0, "twitter4j.http.proxyUser"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadTimeout()I
    .locals 1

    .prologue
    .line 184
    const-string v0, "twitter4j.http.readTimeout"

    invoke-static {v0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getReadTimeout(I)I
    .locals 1
    .parameter "readTimeout"

    .prologue
    .line 188
    const-string v0, "twitter4j.http.readTimeout"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRetryCount()I
    .locals 1

    .prologue
    .line 192
    const-string v0, "twitter4j.http.retryCount"

    invoke-static {v0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRetryCount(I)I
    .locals 1
    .parameter "retryCount"

    .prologue
    .line 196
    const-string v0, "twitter4j.http.retryCount"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRetryIntervalSecs()I
    .locals 1

    .prologue
    .line 200
    const-string v0, "twitter4j.http.retryIntervalSecs"

    invoke-static {v0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRetryIntervalSecs(I)I
    .locals 1
    .parameter "retryIntervalSecs"

    .prologue
    .line 204
    const-string v0, "twitter4j.http.retryIntervalSecs"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Ltwitter4j/Configuration;->useSSL()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://"

    goto :goto_0
.end method

.method public static getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "twitter4j.source"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "source"

    .prologue
    .line 132
    const-string v0, "twitter4j.source"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "twitter4j.user"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "userId"

    .prologue
    .line 212
    const-string v0, "twitter4j.user"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string v0, "twitter4j.http.userAgent"

    invoke-static {v0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 228
    const-string v0, "twitter4j.http.userAgent"

    invoke-static {v0, p0}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static init()V
    .locals 7

    .prologue
    .line 46
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    .line 47
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.debug"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.source"

    const-string v5, "Twitter4J"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.clientURL"

    const-string v5, "http://yusuke.homeip.net/twitter4j/en/twitter4j-{twitter4j.clientVersion}.xml"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.http.userAgent"

    const-string v5, "twitter4j http://yusuke.homeip.net/twitter4j/ /{twitter4j.clientVersion}"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.http.useSSL"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.http.proxyHost.fallback"

    const-string v5, "http.proxyHost"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.http.proxyPort.fallback"

    const-string v5, "http.proxyPort"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.http.connectionTimeout"

    const-string v5, "20000"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.http.readTimeout"

    const-string v5, "120000"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.http.retryCount"

    const-string v5, "3"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.http.retryIntervalSecs"

    const-string v5, "10"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.async.numThreads"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.clientVersion"

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    :try_start_0
    const-string v3, "dalvik.system.VMRuntime"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 73
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.dalvik"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    const-string v3, "twitter4j.dalvik"

    invoke-static {v3}, Ltwitter4j/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Ltwitter4j/Configuration;->DALVIK:Z

    .line 78
    const-string v2, "twitter4j.properties"

    .line 79
    .local v2, t4jProps:Ljava/lang/String;
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltwitter4j/Configuration;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    sget-object v4, Ltwitter4j/Configuration;->class$twitter4j$Configuration:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "twitter4j.Configuration"

    invoke-static {v4}, Ltwitter4j/Configuration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/Configuration;->class$twitter4j$Configuration:Ljava/lang/Class;

    :goto_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "/WEB-INF/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v3, v4}, Ltwitter4j/Configuration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    sget-object v4, Ltwitter4j/Configuration;->class$twitter4j$Configuration:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "twitter4j.Configuration"

    invoke-static {v4}, Ltwitter4j/Configuration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/Configuration;->class$twitter4j$Configuration:Ljava/lang/Class;

    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v3, v4}, Ltwitter4j/Configuration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v3, 0x1

    move v1, v3

    .line 82
    .local v1, loaded:Z
    :goto_3
    return-void

    .line 74
    .end local v1           #loaded:Z
    .end local v2           #t4jProps:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 75
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    sget-object v3, Ltwitter4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v4, "twitter4j.dalvik"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 79
    .end local v0           #cnfe:Ljava/lang/ClassNotFoundException;
    .restart local v2       #t4jProps:Ljava/lang/String;
    :cond_1
    sget-object v4, Ltwitter4j/Configuration;->class$twitter4j$Configuration:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v4, Ltwitter4j/Configuration;->class$twitter4j$Configuration:Ljava/lang/Class;

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    move v1, v3

    goto :goto_3
.end method

.method public static isDalvik()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Ltwitter4j/Configuration;->DALVIK:Z

    return v0
.end method

.method private static loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    .locals 1
    .parameter "props"
    .parameter "is"

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 2
    .parameter "props"
    .parameter "path"

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v1, 0x1

    .line 93
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v1

    .line 93
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 304
    if-nez p0, :cond_0

    move-object v4, p0

    .line 323
    :goto_0
    return-object v4

    .line 307
    :cond_0
    move-object v2, p0

    .line 308
    .local v2, newValue:Ljava/lang/String;
    const/4 v3, 0x0

    .line 309
    .local v3, openBrace:I
    const/4 v4, -0x1

    const-string v5, "{"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v4, v3, :cond_1

    .line 310
    const-string v4, "}"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 311
    .local v0, closeBrace:I
    add-int/lit8 v4, v3, 0x1

    if-le v0, v4, :cond_1

    .line 312
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 314
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v1}, Ltwitter4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .end local v0           #closeBrace:I
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p0

    .line 321
    goto :goto_0

    .line 323
    :cond_2
    invoke-static {v2}, Ltwitter4j/Configuration;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static useSSL()Z
    .locals 1

    .prologue
    .line 113
    const-string v0, "twitter4j.http.useSSL"

    invoke-static {v0}, Ltwitter4j/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
