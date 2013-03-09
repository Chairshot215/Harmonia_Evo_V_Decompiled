.class public final Ltwitter4j/conf/PropertyConfiguration;
.super Ltwitter4j/conf/ConfigurationBase;
.source "PropertyConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASYNC_DISPATCHER_IMPL:Ljava/lang/String; = "async.dispatcherImpl"

.field public static final ASYNC_NUM_THREADS:Ljava/lang/String; = "async.numThreads"

.field public static final CLIENT_URL:Ljava/lang/String; = "clientURL"

.field public static final CLIENT_VERSION:Ljava/lang/String; = "clientVersion"

.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final HTTP_CONNECTION_TIMEOUT:Ljava/lang/String; = "http.connectionTimeout"

.field public static final HTTP_DEFAULT_MAX_PER_ROUTE:Ljava/lang/String; = "http.defaultMaxPerRoute"

.field public static final HTTP_GZIP:Ljava/lang/String; = "http.gzip"

.field public static final HTTP_MAX_TOTAL_CONNECTIONS:Ljava/lang/String; = "http.maxTotalConnections"

.field public static final HTTP_PRETTY_DEBUG:Ljava/lang/String; = "http.prettyDebug"

.field public static final HTTP_PROXY_HOST:Ljava/lang/String; = "http.proxyHost"

.field public static final HTTP_PROXY_HOST_FALLBACK:Ljava/lang/String; = "http.proxyHost"

.field public static final HTTP_PROXY_PASSWORD:Ljava/lang/String; = "http.proxyPassword"

.field public static final HTTP_PROXY_PORT:Ljava/lang/String; = "http.proxyPort"

.field public static final HTTP_PROXY_PORT_FALLBACK:Ljava/lang/String; = "http.proxyPort"

.field public static final HTTP_PROXY_USER:Ljava/lang/String; = "http.proxyUser"

.field public static final HTTP_READ_TIMEOUT:Ljava/lang/String; = "http.readTimeout"

.field public static final HTTP_RETRY_COUNT:Ljava/lang/String; = "http.retryCount"

.field public static final HTTP_RETRY_INTERVAL_SECS:Ljava/lang/String; = "http.retryIntervalSecs"

.field public static final HTTP_STREAMING_READ_TIMEOUT:Ljava/lang/String; = "http.streamingReadTimeout"

.field public static final HTTP_USER_AGENT:Ljava/lang/String; = "http.userAgent"

.field public static final HTTP_USE_SSL:Ljava/lang/String; = "http.useSSL"

.field public static final INCLUDE_ENTITIES:Ljava/lang/String; = "includeEntities"

.field public static final INCLUDE_RTS:Ljava/lang/String; = "includeRTs"

.field public static final JSON_STORE_ENABLED:Ljava/lang/String; = "jsonStoreEnabled"

.field public static final MBEAN_ENABLED:Ljava/lang/String; = "mbeanEnabled"

.field public static final MEDIA_PROVIDER:Ljava/lang/String; = "media.provider"

.field public static final MEDIA_PROVIDER_API_KEY:Ljava/lang/String; = "media.providerAPIKey"

.field public static final MEDIA_PROVIDER_PARAMETERS:Ljava/lang/String; = "media.providerParameters"

.field public static final OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "oauth.accessToken"

.field public static final OAUTH_ACCESS_TOKEN_SECRET:Ljava/lang/String; = "oauth.accessTokenSecret"

.field public static final OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "oauth.accessTokenURL"

.field public static final OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "oauth.authenticationURL"

.field public static final OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "oauth.authorizationURL"

.field public static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth.consumerKey"

.field public static final OAUTH_CONSUMER_SECRET:Ljava/lang/String; = "oauth.consumerSecret"

.field public static final OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "oauth.requestTokenURL"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final REST_BASE_URL:Ljava/lang/String; = "restBaseURL"

.field public static final SEARCH_BASE_URL:Ljava/lang/String; = "searchBaseURL"

.field public static final SITE_STREAM_BASE_URL:Ljava/lang/String; = "siteStreamBaseURL"

.field public static final STREAM_BASE_URL:Ljava/lang/String; = "streamBaseURL"

.field public static final STREAM_USER_REPLIES_ALL:Ljava/lang/String; = "stream.user.repliesAll"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final USER_STREAM_BASE_URL:Ljava/lang/String; = "userStreamBaseURL"

.field static class$twitter4j$conf$Configuration:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x59a2240419f3c755L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 136
    const-string v0, "/"

    invoke-direct {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"

    .prologue
    .line 95
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 96
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 97
    .local v0, props:Ljava/util/Properties;
    invoke-direct {p0, v0, p1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 98
    const-string v1, "/"

    invoke-direct {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "treePath"

    .prologue
    .line 111
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 115
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Properties;

    .line 116
    .local v2, props:Ljava/util/Properties;
    invoke-direct {p0, v2}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    const-string v0, "twitter4j.properties"

    .line 123
    .local v0, TWITTER4J_PROPERTIES:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "twitter4j.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    .line 125
    sget-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "twitter4j.conf.Configuration"

    invoke-static {v3}, Ltwitter4j/conf/PropertyConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    :goto_1
    const-string v4, "/twitter4j.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 127
    sget-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "twitter4j.conf.Configuration"

    invoke-static {v3}, Ltwitter4j/conf/PropertyConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    :goto_2
    const-string v4, "/WEB-INF/twitter4j.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 129
    invoke-direct {p0, v2, p1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 130
    return-void

    .line 117
    .end local v0           #TWITTER4J_PROPERTIES:Ljava/lang/String;
    .end local v2           #props:Ljava/util/Properties;
    :catch_0
    move-exception v1

    .line 119
    .local v1, ignore:Ljava/lang/SecurityException;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .restart local v2       #props:Ljava/util/Properties;
    goto :goto_0

    .line 125
    .end local v1           #ignore:Ljava/lang/SecurityException;
    .restart local v0       #TWITTER4J_PROPERTIES:Ljava/lang/String;
    :cond_0
    sget-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    goto :goto_1

    .line 127
    :cond_1
    sget-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .parameter "props"

    .prologue
    .line 102
    const-string v0, "/"

    invoke-direct {p0, p1, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/util/Properties;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 0
    .parameter "props"
    .parameter "treePath"

    .prologue
    .line 106
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 107
    invoke-direct {p0, p1, p2}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 125
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

.method private loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    .locals 1
    .parameter "props"
    .parameter "is"

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 169
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 5
    .parameter "props"
    .parameter "path"

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 150
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 151
    const/4 v3, 0x1

    .line 156
    if-eqz v2, :cond_0

    .line 157
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v1, v2

    .line 163
    .end local v0           #file:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :goto_1
    return v3

    .line 156
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    if-eqz v1, :cond_2

    .line 157
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 163
    .end local v0           #file:Ljava/io/File;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v3

    .line 156
    :goto_3
    if-eqz v1, :cond_2

    .line 157
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 159
    :catch_1
    move-exception v3

    goto :goto_2

    .line 155
    :catchall_0
    move-exception v3

    .line 156
    :goto_4
    if-eqz v1, :cond_3

    .line 157
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 161
    :cond_3
    :goto_5
    throw v3

    .line 159
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    goto :goto_2

    .end local v0           #file:Ljava/io/File;
    :catch_4
    move-exception v4

    goto :goto_5

    .line 155
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 153
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private normalize(Ljava/util/Properties;)V
    .locals 10
    .parameter "props"

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 178
    .local v4, keys:Ljava/util/Set;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v7, toBeNormalized:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, key:Ljava/lang/Object;
    move-object v3, v2

    .line 180
    check-cast v3, Ljava/lang/String;

    .line 181
    .local v3, keyStr:Ljava/lang/String;
    const/4 v8, -0x1

    const-string v9, "twitter4j."

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 182
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keyStr:Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    .restart local v3       #keyStr:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, property:Ljava/lang/String;
    const-string v8, "twitter4j."

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 188
    .local v1, index:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    add-int/lit8 v9, v1, 0xa

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, newKey:Ljava/lang/String;
    invoke-virtual {p1, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    .end local v1           #index:I
    .end local v3           #keyStr:Ljava/lang/String;
    .end local v5           #newKey:Ljava/lang/String;
    .end local v6           #property:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "props"
    .parameter "prefix"
    .parameter "name"

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 10
    .parameter "props"
    .parameter "prefix"

    .prologue
    const/4 v9, 0x1

    .line 219
    const-string v7, "debug"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 220
    const-string v7, "debug"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setDebug(Z)V

    .line 223
    :cond_0
    const-string v7, "user"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    const-string v7, "user"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUser(Ljava/lang/String;)V

    .line 226
    :cond_1
    const-string v7, "password"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    const-string v7, "password"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setPassword(Ljava/lang/String;)V

    .line 229
    :cond_2
    const-string v7, "http.useSSL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 230
    const-string v7, "http.useSSL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUseSSL(Z)V

    .line 236
    :cond_3
    :goto_0
    const-string v7, "http.prettyDebug"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 237
    const-string v7, "http.prettyDebug"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setPrettyDebugEnabled(Z)V

    .line 239
    :cond_4
    const-string v7, "http.gzip"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 240
    const-string v7, "http.gzip"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setGZIPEnabled(Z)V

    .line 242
    :cond_5
    const-string v7, "http.proxyHost"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 243
    const-string v7, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    .line 247
    :cond_6
    :goto_1
    const-string v7, "http.proxyUser"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 248
    const-string v7, "http.proxyUser"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyUser(Ljava/lang/String;)V

    .line 250
    :cond_7
    const-string v7, "http.proxyPassword"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 251
    const-string v7, "http.proxyPassword"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 253
    :cond_8
    const-string v7, "http.proxyPort"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 254
    const-string v7, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    .line 258
    :cond_9
    :goto_2
    const-string v7, "http.connectionTimeout"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 259
    const-string v7, "http.connectionTimeout"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpConnectionTimeout(I)V

    .line 261
    :cond_a
    const-string v7, "http.readTimeout"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 262
    const-string v7, "http.readTimeout"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpReadTimeout(I)V

    .line 264
    :cond_b
    const-string v7, "http.streamingReadTimeout"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 265
    const-string v7, "http.streamingReadTimeout"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpStreamingReadTimeout(I)V

    .line 267
    :cond_c
    const-string v7, "http.retryCount"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 268
    const-string v7, "http.retryCount"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryCount(I)V

    .line 270
    :cond_d
    const-string v7, "http.retryIntervalSecs"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 271
    const-string v7, "http.retryIntervalSecs"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryIntervalSeconds(I)V

    .line 273
    :cond_e
    const-string v7, "http.maxTotalConnections"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 274
    const-string v7, "http.maxTotalConnections"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpMaxTotalConnections(I)V

    .line 276
    :cond_f
    const-string v7, "http.defaultMaxPerRoute"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 277
    const-string v7, "http.defaultMaxPerRoute"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpDefaultMaxPerRoute(I)V

    .line 279
    :cond_10
    const-string v7, "oauth.consumerKey"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 280
    const-string v7, "oauth.consumerKey"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 282
    :cond_11
    const-string v7, "oauth.consumerSecret"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 283
    const-string v7, "oauth.consumerSecret"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 285
    :cond_12
    const-string v7, "oauth.accessToken"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 286
    const-string v7, "oauth.accessToken"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 288
    :cond_13
    const-string v7, "oauth.accessTokenSecret"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 289
    const-string v7, "oauth.accessTokenSecret"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 291
    :cond_14
    const-string v7, "async.numThreads"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 292
    const-string v7, "async.numThreads"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setAsyncNumThreads(I)V

    .line 294
    :cond_15
    const-string v7, "async.dispatcherImpl"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 295
    const-string v7, "async.dispatcherImpl"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setDispatcherImpl(Ljava/lang/String;)V

    .line 297
    :cond_16
    const-string v7, "clientVersion"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 298
    const-string v7, "clientVersion"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setClientVersion(Ljava/lang/String;)V

    .line 300
    :cond_17
    const-string v7, "clientURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 301
    const-string v7, "clientURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setClientURL(Ljava/lang/String;)V

    .line 303
    :cond_18
    const-string v7, "http.userAgent"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 304
    const-string v7, "http.userAgent"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUserAgent(Ljava/lang/String;)V

    .line 307
    :cond_19
    const-string v7, "oauth.requestTokenURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 308
    const-string v7, "oauth.requestTokenURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 311
    :cond_1a
    const-string v7, "oauth.authorizationURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 312
    const-string v7, "oauth.authorizationURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 315
    :cond_1b
    const-string v7, "oauth.accessTokenURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 316
    const-string v7, "oauth.accessTokenURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 319
    :cond_1c
    const-string v7, "oauth.authenticationURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 320
    const-string v7, "oauth.authenticationURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 323
    :cond_1d
    const-string v7, "restBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 324
    const-string v7, "restBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setRestBaseURL(Ljava/lang/String;)V

    .line 327
    :cond_1e
    const-string v7, "searchBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 328
    const-string v7, "searchBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setSearchBaseURL(Ljava/lang/String;)V

    .line 331
    :cond_1f
    const-string v7, "streamBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 332
    const-string v7, "streamBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setStreamBaseURL(Ljava/lang/String;)V

    .line 334
    :cond_20
    const-string v7, "userStreamBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 335
    const-string v7, "userStreamBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamBaseURL(Ljava/lang/String;)V

    .line 337
    :cond_21
    const-string v7, "siteStreamBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 338
    const-string v7, "siteStreamBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setSiteStreamBaseURL(Ljava/lang/String;)V

    .line 340
    :cond_22
    const-string v7, "includeRTs"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 341
    const-string v7, "includeRTs"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeRTsEnbled(Z)V

    .line 343
    :cond_23
    const-string v7, "includeEntities"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 344
    const-string v7, "includeEntities"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeEntitiesEnbled(Z)V

    .line 346
    :cond_24
    const-string v7, "jsonStoreEnabled"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 347
    const-string v7, "jsonStoreEnabled"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setJSONStoreEnabled(Z)V

    .line 349
    :cond_25
    const-string v7, "mbeanEnabled"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 350
    const-string v7, "mbeanEnabled"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setMBeanEnabled(Z)V

    .line 352
    :cond_26
    const-string v7, "stream.user.repliesAll"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 353
    const-string v7, "stream.user.repliesAll"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamRepliesAllEnabled(Z)V

    .line 355
    :cond_27
    const-string v7, "media.provider"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 356
    const-string v7, "media.provider"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProvider(Ljava/lang/String;)V

    .line 358
    :cond_28
    const-string v7, "media.providerAPIKey"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 359
    const-string v7, "media.providerAPIKey"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderAPIKey(Ljava/lang/String;)V

    .line 361
    :cond_29
    const-string v7, "media.providerParameters"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 362
    const-string v7, "media.providerParameters"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-static {v7, v8}, Ltwitter4j/internal/util/T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, propsAry:[Ljava/lang/String;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 364
    .local v3, p:Ljava/util/Properties;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_2d

    aget-object v6, v0, v1

    .line 365
    .local v6, str:Ljava/lang/String;
    const-string v7, "="

    invoke-static {v6, v7}, Ltwitter4j/internal/util/T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, parameter:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    aget-object v8, v4, v9

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 231
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #p:Ljava/util/Properties;
    .end local v4           #parameter:[Ljava/lang/String;
    .end local v5           #propsAry:[Ljava/lang/String;
    .end local v6           #str:Ljava/lang/String;
    :cond_2a
    const-string v7, "user"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "password"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 234
    invoke-virtual {p0, v9}, Ltwitter4j/conf/PropertyConfiguration;->setUseSSL(Z)V

    goto/16 :goto_0

    .line 244
    :cond_2b
    const-string v7, "http.proxyHost"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 245
    const-string v7, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 255
    :cond_2c
    const-string v7, "http.proxyPort"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 256
    const-string v7, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    goto/16 :goto_2

    .line 368
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #p:Ljava/util/Properties;
    .restart local v5       #propsAry:[Ljava/lang/String;
    :cond_2d
    invoke-virtual {p0, v3}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderParameters(Ljava/util/Properties;)V

    .line 370
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #p:Ljava/util/Properties;
    .end local v5           #propsAry:[Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method private setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 8
    .parameter "props"
    .parameter "treePath"

    .prologue
    .line 203
    const-string v6, ""

    invoke-direct {p0, p1, v6}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    .line 204
    const-string v6, "/"

    invoke-static {p2, v6}, Ltwitter4j/internal/util/T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, splitArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 206
    .local v3, prefix:Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 207
    .local v4, split:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 208
    if-nez v3, :cond_1

    .line 209
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    :goto_1
    invoke-direct {p0, p1, v3}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 216
    .end local v4           #split:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "props"
    .parameter "prefix"
    .parameter "name"

    .prologue
    .line 373
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getDispatcherImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStreamingReadTimeout()I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getHttpStreamingReadTimeout()I

    move-result v0

    return v0
.end method

.method protected getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "props"
    .parameter "prefix"
    .parameter "name"

    .prologue
    .line 378
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 382
    :goto_0
    return v2

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getMediaProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaProviderAPIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderAPIKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaProviderParameters()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderParameters()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthenticationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthRequestTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRestBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSiteStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getSiteStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "props"
    .parameter "prefix"
    .parameter "name"

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGZIPEnabled()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isGZIPEnabled()Z

    move-result v0

    return v0
.end method

.method public isIncludeEntitiesEnabled()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeEntitiesEnabled()Z

    move-result v0

    return v0
.end method

.method public isIncludeRTsEnabled()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeRTsEnabled()Z

    move-result v0

    return v0
.end method

.method public isJSONStoreEnabled()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isJSONStoreEnabled()Z

    move-result v0

    return v0
.end method

.method public isMBeanEnabled()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isMBeanEnabled()Z

    move-result v0

    return v0
.end method

.method public isPrettyDebugEnabled()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isPrettyDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isUserStreamRepliesAllEnabled()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isUserStreamRepliesAllEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
