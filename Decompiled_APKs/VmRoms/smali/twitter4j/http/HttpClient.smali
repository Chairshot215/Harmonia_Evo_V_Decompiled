.class public Ltwitter4j/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BAD_GATEWAY:I = 0x1f6

.field private static final BAD_REQUEST:I = 0x190

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FORBIDDEN:I = 0x193

.field private static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field private static final NOT_ACCEPTABLE:I = 0x196

.field private static final NOT_AUTHORIZED:I = 0x191

.field private static final NOT_FOUND:I = 0x194

.field private static final NOT_MODIFIED:I = 0x130

.field private static final OK:I = 0xc8

.field private static final SERVICE_UNAVAILABLE:I = 0x1f7

.field private static isJDK14orEarlier:Z = false

.field private static final serialVersionUID:J = 0xb36a81e0d31617cL


# instance fields
.field private accessTokenURL:Ljava/lang/String;

.field private authenticationURL:Ljava/lang/String;

.field private authorizationURL:Ljava/lang/String;

.field private basic:Ljava/lang/String;

.field private connectionTimeout:I

.field private oauth:Ltwitter4j/http/OAuth;

.field private oauthToken:Ltwitter4j/http/OAuthToken;

.field private password:Ljava/lang/String;

.field private proxyAuthPassword:Ljava/lang/String;

.field private proxyAuthUser:Ljava/lang/String;

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private readTimeout:I

.field private requestHeaders:Ljava/util/Map;
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

.field private requestTokenURL:Ljava/lang/String;

.field private retryCount:I

.field private retryIntervalMillis:I

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-static {}, Ltwitter4j/Configuration;->getDebug()Z

    move-result v2

    sput-boolean v2, Ltwitter4j/http/HttpClient;->DEBUG:Z

    .line 77
    sput-boolean v6, Ltwitter4j/http/HttpClient;->isJDK14orEarlier:Z

    .line 88
    :try_start_0
    const-string v2, "java.specification.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, versionStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 90
    const-wide/high16 v2, 0x3ff8

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    move v2, v7

    :goto_0
    sput-boolean v2, Ltwitter4j/http/HttpClient;->isJDK14orEarlier:Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #versionStr:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v1       #versionStr:Ljava/lang/String;
    :cond_1
    move v2, v6

    .line 90
    goto :goto_0

    .line 92
    .end local v1           #versionStr:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 93
    .local v0, ace:Ljava/security/AccessControlException;
    sput-boolean v7, Ltwitter4j/http/HttpClient;->isJDK14orEarlier:Z

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ltwitter4j/Configuration;->getRetryCount()I

    move-result v0

    iput v0, p0, Ltwitter4j/http/HttpClient;->retryCount:I

    .line 67
    invoke-static {}, Ltwitter4j/Configuration;->getRetryIntervalSecs()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Ltwitter4j/http/HttpClient;->retryIntervalMillis:I

    .line 68
    invoke-static {}, Ltwitter4j/Configuration;->getUser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    .line 69
    invoke-static {}, Ltwitter4j/Configuration;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    .line 70
    invoke-static {}, Ltwitter4j/Configuration;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    .line 71
    invoke-static {}, Ltwitter4j/Configuration;->getProxyPort()I

    move-result v0

    iput v0, p0, Ltwitter4j/http/HttpClient;->proxyPort:I

    .line 72
    invoke-static {}, Ltwitter4j/Configuration;->getProxyUser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    .line 73
    invoke-static {}, Ltwitter4j/Configuration;->getProxyPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    .line 74
    invoke-static {}, Ltwitter4j/Configuration;->getConnectionTimeout()I

    move-result v0

    iput v0, p0, Ltwitter4j/http/HttpClient;->connectionTimeout:I

    .line 75
    invoke-static {}, Ltwitter4j/Configuration;->getReadTimeout()I

    move-result v0

    iput v0, p0, Ltwitter4j/http/HttpClient;->readTimeout:I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    .line 79
    iput-object v2, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ltwitter4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "twitter.com/oauth/request_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ltwitter4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "twitter.com/oauth/authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->authorizationURL:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ltwitter4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "twitter.com/oauth/authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ltwitter4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "twitter.com/oauth/access_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 104
    iput-object v2, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    .line 105
    invoke-virtual {p0, v2}, Ltwitter4j/http/HttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v2, v2}, Ltwitter4j/http/HttpClient;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ltwitter4j/http/HttpClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "userId"
    .parameter "password"

    .prologue
    .line 98
    invoke-direct {p0}, Ltwitter4j/http/HttpClient;-><init>()V

    .line 99
    invoke-virtual {p0, p1}, Ltwitter4j/http/HttpClient;->setUserId(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p2}, Ltwitter4j/http/HttpClient;->setPassword(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method static access$000(Ltwitter4j/http/HttpClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method static access$100(Ltwitter4j/http/HttpClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method private encodeBasicAuthenticationString()V
    .locals 5

    .prologue
    .line 369
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ltwitter4j/http/BASE64Encoder;

    invoke-direct {v2}, Ltwitter4j/http/BASE64Encoder;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/http/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    .line 373
    :cond_0
    return-void
.end method

.method public static encodeParameters([Ltwitter4j/http/PostParameter;)Ljava/lang/String;
    .locals 5
    .parameter "postParams"

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 510
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 511
    if-eqz v1, :cond_0

    .line 512
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    :cond_0
    :try_start_0
    aget-object v2, p0, v1

    iget-object v2, v2, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    iget-object v3, v3, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 517
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static getCause(I)Ljava/lang/String;
    .locals 3
    .parameter "statusCode"

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 684
    .local v0, cause:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 712
    const-string v0, ""

    .line 714
    :goto_0
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 688
    :sswitch_1
    const-string v0, "The request was invalid.  An accompanying error message will explain why. This is the status code will be returned during rate limiting."

    .line 689
    goto :goto_0

    .line 691
    :sswitch_2
    const-string v0, "Authentication credentials were missing or incorrect."

    .line 692
    goto :goto_0

    .line 694
    :sswitch_3
    const-string v0, "The request is understood, but it has been refused.  An accompanying error message will explain why."

    .line 695
    goto :goto_0

    .line 697
    :sswitch_4
    const-string v0, "The URI requested is invalid or the resource requested, such as a user, does not exists."

    .line 698
    goto :goto_0

    .line 700
    :sswitch_5
    const-string v0, "Returned by the Search API when an invalid format is specified in the request."

    .line 701
    goto :goto_0

    .line 703
    :sswitch_6
    const-string v0, "Something is broken.  Please post to the group so the Twitter team can investigate."

    .line 704
    goto :goto_0

    .line 706
    :sswitch_7
    const-string v0, "Twitter is down or being upgraded."

    .line 707
    goto :goto_0

    .line 709
    :sswitch_8
    const-string v0, "Service Unavailable: The Twitter servers are up, but overloaded with requests. Try again later. The search and trend methods use this to indicate when you are being rate limited."

    .line 710
    goto :goto_0

    .line 684
    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x193 -> :sswitch_3
        0x194 -> :sswitch_4
        0x196 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x1f6 -> :sswitch_7
        0x1f7 -> :sswitch_8
    .end sparse-switch
.end method

.method private getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, con:Ljava/net/HttpURLConnection;
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 572
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Proxy AuthUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    .line 574
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Proxy AuthPassword: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    .line 575
    new-instance v2, Ltwitter4j/http/HttpClient$3;

    invoke-direct {v2, p0}, Ltwitter4j/http/HttpClient$3;-><init>(Ltwitter4j/http/HttpClient;)V

    invoke-static {v2}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 590
    :cond_0
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v3, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    iget v4, p0, Ltwitter4j/http/HttpClient;->proxyPort:I

    invoke-static {v3, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 592
    .local v1, proxy:Ljava/net/Proxy;
    sget-boolean v2, Ltwitter4j/http/HttpClient;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 593
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Opening proxied connection("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Ltwitter4j/http/HttpClient;->proxyPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    .line 595
    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #con:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 599
    .end local v1           #proxy:Ljava/net/Proxy;
    .restart local v0       #con:Ljava/net/HttpURLConnection;
    :goto_0
    iget v2, p0, Ltwitter4j/http/HttpClient;->connectionTimeout:I

    if-lez v2, :cond_2

    sget-boolean v2, Ltwitter4j/http/HttpClient;->isJDK14orEarlier:Z

    if-nez v2, :cond_2

    .line 600
    iget v2, p0, Ltwitter4j/http/HttpClient;->connectionTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 602
    :cond_2
    iget v2, p0, Ltwitter4j/http/HttpClient;->readTimeout:I

    if-lez v2, :cond_3

    sget-boolean v2, Ltwitter4j/http/HttpClient;->isJDK14orEarlier:Z

    if-nez v2, :cond_3

    .line 603
    iget v2, p0, Ltwitter4j/http/HttpClient;->readTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 605
    :cond_3
    return-object v0

    .line 597
    :cond_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #con:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0       #con:Ljava/net/HttpURLConnection;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 670
    sget-boolean v0, Ltwitter4j/http/HttpClient;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 671
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 673
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 676
    sget-boolean v0, Ltwitter4j/http/HttpClient;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    .line 679
    :cond_0
    return-void
.end method

.method private setHeaders(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ljava/net/HttpURLConnection;Z)V
    .locals 6
    .parameter "url"
    .parameter "params"
    .parameter "connection"
    .parameter "authenticated"

    .prologue
    .line 531
    const-string v3, "Request: "

    invoke-static {v3}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    .line 532
    if-eqz p2, :cond_2

    .line 533
    const-string v3, "POST "

    invoke-static {v3, p1}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :goto_0
    if-eqz p4, :cond_1

    .line 539
    iget-object v3, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    if-nez v3, :cond_0

    .line 541
    :cond_0
    const/4 v0, 0x0

    .line 542
    .local v0, authorization:Ljava/lang/String;
    iget-object v3, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    if-eqz v3, :cond_4

    .line 544
    iget-object v3, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    if-eqz p2, :cond_3

    const-string v4, "POST"

    :goto_1
    iget-object v5, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    invoke-virtual {v3, v4, p1, p2, v5}, Ltwitter4j/http/OAuth;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_2
    const-string v3, "Authorization"

    invoke-virtual {p3, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Authorization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    .line 555
    .end local v0           #authorization:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Ltwitter4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 556
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Ltwitter4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v3, p0, Ltwitter4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 535
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    const-string v3, "GET "

    invoke-static {v3, p1}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    .restart local v0       #authorization:Ljava/lang/String;
    :cond_3
    const-string v4, "GET"

    goto :goto_1

    .line 545
    :cond_4
    iget-object v3, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 547
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    goto :goto_2

    .line 549
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 559
    .end local v0           #authorization:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 610
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 643
    :goto_0
    return v2

    .line 611
    :cond_0
    instance-of v2, p1, Ltwitter4j/http/HttpClient;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 613
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/http/HttpClient;

    move-object v1, v0

    .line 615
    .local v1, that:Ltwitter4j/http/HttpClient;
    iget v2, p0, Ltwitter4j/http/HttpClient;->connectionTimeout:I

    iget v3, v1, Ltwitter4j/http/HttpClient;->connectionTimeout:I

    if-eq v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    .line 616
    :cond_2
    iget v2, p0, Ltwitter4j/http/HttpClient;->proxyPort:I

    iget v3, v1, Ltwitter4j/http/HttpClient;->proxyPort:I

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 617
    :cond_3
    iget v2, p0, Ltwitter4j/http/HttpClient;->readTimeout:I

    iget v3, v1, Ltwitter4j/http/HttpClient;->readTimeout:I

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    .line 618
    :cond_4
    iget v2, p0, Ltwitter4j/http/HttpClient;->retryCount:I

    iget v3, v1, Ltwitter4j/http/HttpClient;->retryCount:I

    if-eq v2, v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 619
    :cond_5
    iget v2, p0, Ltwitter4j/http/HttpClient;->retryIntervalMillis:I

    iget v3, v1, Ltwitter4j/http/HttpClient;->retryIntervalMillis:I

    if-eq v2, v3, :cond_6

    move v2, v4

    goto :goto_0

    .line 620
    :cond_6
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v2, v4

    .line 621
    goto :goto_0

    .line 620
    :cond_8
    iget-object v2, v1, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 622
    :cond_9
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v4

    goto :goto_0

    .line 623
    :cond_a
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->authorizationURL:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->authorizationURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    goto :goto_0

    .line 624
    :cond_b
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v2, v4

    .line 625
    goto :goto_0

    .line 624
    :cond_d
    iget-object v2, v1, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 626
    :cond_e
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    if-eqz v2, :cond_10

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    invoke-virtual {v2, v3}, Ltwitter4j/http/OAuth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    move v2, v4

    .line 627
    goto/16 :goto_0

    .line 626
    :cond_10
    iget-object v2, v1, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    if-nez v2, :cond_f

    .line 628
    :cond_11
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    if-eqz v2, :cond_13

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    invoke-virtual {v2, v3}, Ltwitter4j/http/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move v2, v4

    .line 629
    goto/16 :goto_0

    .line 628
    :cond_13
    iget-object v2, v1, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    if-nez v2, :cond_12

    .line 630
    :cond_14
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    move v2, v4

    .line 631
    goto/16 :goto_0

    .line 630
    :cond_16
    iget-object v2, v1, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 632
    :cond_17
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_18
    move v2, v4

    .line 633
    goto/16 :goto_0

    .line 632
    :cond_19
    iget-object v2, v1, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 634
    :cond_1a
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    move v2, v4

    .line 635
    goto/16 :goto_0

    .line 634
    :cond_1c
    iget-object v2, v1, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 636
    :cond_1d
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1e
    move v2, v4

    .line 637
    goto/16 :goto_0

    .line 636
    :cond_1f
    iget-object v2, v1, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 638
    :cond_20
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v2, v4

    goto/16 :goto_0

    .line 639
    :cond_21
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move v2, v4

    goto/16 :goto_0

    .line 640
    :cond_22
    iget-object v2, p0, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v2, v4

    .line 641
    goto/16 :goto_0

    .line 640
    :cond_24
    iget-object v2, v1, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    if-nez v2, :cond_23

    :cond_25
    move v2, v5

    .line 643
    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;)Ltwitter4j/http/Response;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Ltwitter4j/http/Response;
    .locals 1
    .parameter "url"
    .parameter "authenticated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationRL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->authorizationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Ltwitter4j/http/HttpClient;->connectionTimeout:I

    return v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 5
    .parameter "token"
    .parameter "tokenSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    new-instance v1, Ltwitter4j/http/HttpClient$1;

    invoke-direct {v1, p0, p1, p2}, Ltwitter4j/http/HttpClient$1;-><init>(Ltwitter4j/http/HttpClient;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 220
    new-instance v1, Ltwitter4j/http/AccessToken;

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/http/AccessToken;-><init>(Ltwitter4j/http/Response;)V

    iput-object v1, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    iget-object p0, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .end local p0
    check-cast p0, Ltwitter4j/http/AccessToken;

    return-object p0

    .line 221
    .restart local p0
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 222
    .local v0, te:Ltwitter4j/TwitterException;
    new-instance v1, Ltwitter4j/TwitterException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 7
    .parameter "token"
    .parameter "tokenSecret"
    .parameter "oauth_verifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    new-instance v1, Ltwitter4j/http/HttpClient$2;

    invoke-direct {v1, p0, p1, p2}, Ltwitter4j/http/HttpClient$2;-><init>(Ltwitter4j/http/HttpClient;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 241
    new-instance v1, Ltwitter4j/http/AccessToken;

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "oauth_verifier"

    invoke-direct {v5, v6, p3}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/http/AccessToken;-><init>(Ltwitter4j/http/Response;)V

    iput-object v1, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    iget-object p0, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .end local p0
    check-cast p0, Ltwitter4j/http/AccessToken;

    return-object p0

    .line 243
    .restart local p0
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 244
    .local v0, te:Ltwitter4j/TwitterException;
    new-instance v1, Ltwitter4j/TwitterException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iput-object p1, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 183
    new-instance v1, Ltwitter4j/http/AccessToken;

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/http/AccessToken;-><init>(Ltwitter4j/http/Response;)V

    iput-object v1, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    iget-object p0, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .end local p0
    check-cast p0, Ltwitter4j/http/AccessToken;

    return-object p0

    .line 184
    .restart local p0
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 185
    .local v0, te:Ltwitter4j/TwitterException;
    new-instance v1, Ltwitter4j/TwitterException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 7
    .parameter "token"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    iput-object p1, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 200
    new-instance v1, Ltwitter4j/http/AccessToken;

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "oauth_verifier"

    invoke-direct {v5, v6, p2}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/http/AccessToken;-><init>(Ltwitter4j/http/Response;)V

    iput-object v1, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    iget-object p0, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .end local p0
    check-cast p0, Ltwitter4j/http/AccessToken;

    return-object p0

    .line 202
    .restart local p0
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 203
    .local v0, te:Ltwitter4j/TwitterException;
    new-instance v1, Ltwitter4j/TwitterException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ltwitter4j/http/RequestToken;

    iget-object v1, p0, Ltwitter4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ltwitter4j/http/PostParameter;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/http/RequestToken;-><init>(Ltwitter4j/http/Response;Ltwitter4j/http/HttpClient;)V

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 157
    iget-object p0, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .end local p0
    check-cast p0, Ltwitter4j/http/RequestToken;

    return-object p0
.end method

.method public getOauthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;
    .locals 7
    .parameter "callback_url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 167
    new-instance v0, Ltwitter4j/http/RequestToken;

    iget-object v1, p0, Ltwitter4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    new-array v2, v6, [Ltwitter4j/http/PostParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "oauth_callback"

    invoke-direct {v4, v5, p1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2, v6}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/http/RequestToken;-><init>(Ltwitter4j/http/Response;Ltwitter4j/http/HttpClient;)V

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 170
    iget-object p0, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .end local p0
    check-cast p0, Ltwitter4j/http/RequestToken;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAuthPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAuthUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Ltwitter4j/http/HttpClient;->proxyPort:I

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Ltwitter4j/http/HttpClient;->readTimeout:I

    return v0
.end method

.method public getRequestHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 566
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRequestTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0}, Ltwitter4j/http/HttpClient;->getRequestHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 648
    iget-object v1, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 649
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/http/HttpClient;->retryCount:I

    add-int v0, v1, v2

    .line 650
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/http/HttpClient;->retryIntervalMillis:I

    add-int v0, v1, v2

    .line 651
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 652
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 653
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v1, v2

    .line 654
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/http/HttpClient;->proxyPort:I

    add-int v0, v1, v2

    .line 655
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v1, v2

    .line 656
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v1, v2

    .line 657
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/http/HttpClient;->connectionTimeout:I

    add-int v0, v1, v2

    .line 658
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/http/HttpClient;->readTimeout:I

    add-int v0, v1, v2

    .line 659
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 660
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    invoke-virtual {v2}, Ltwitter4j/http/OAuth;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v1, v2

    .line 661
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 662
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->authorizationURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 663
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 664
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v1, v2

    .line 665
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    invoke-virtual {v2}, Ltwitter4j/http/OAuthToken;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v1, v2

    .line 666
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v3

    .line 648
    goto/16 :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 651
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 652
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 653
    goto/16 :goto_3

    :cond_4
    move v2, v3

    .line 655
    goto :goto_4

    :cond_5
    move v2, v3

    .line 656
    goto :goto_5

    :cond_6
    move v2, v3

    .line 660
    goto :goto_6

    :cond_7
    move v2, v3

    .line 664
    goto :goto_7

    :cond_8
    move v2, v3

    .line 665
    goto :goto_8
.end method

.method protected httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;
    .locals 24
    .parameter "url"
    .parameter "postParams"
    .parameter "authenticated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/http/HttpClient;->retryCount:I

    move/from16 v21, v0

    add-int/lit8 v18, v21, 0x1

    .line 431
    .local v18, retry:I
    const/4 v13, 0x0

    .line 432
    .local v13, res:Ltwitter4j/http/Response;
    const/16 v17, 0x0

    .local v17, retriedCount:I
    move-object v14, v13

    .end local v13           #res:Ltwitter4j/http/Response;
    .local v14, res:Ltwitter4j/http/Response;
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 433
    const/4 v15, -0x1

    .line 435
    .local v15, responseCode:I
    const/4 v6, 0x0

    .line 436
    .local v6, con:Ljava/net/HttpURLConnection;
    const/4 v11, 0x0

    .line 438
    .local v11, osw:Ljava/io/OutputStream;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Ltwitter4j/http/HttpClient;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 439
    const/16 v21, 0x1

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Ltwitter4j/http/HttpClient;->setHeaders(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ljava/net/HttpURLConnection;Z)V

    .line 441
    if-eqz p2, :cond_1

    .line 442
    const-string v21, "POST"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 443
    const-string v21, "Content-Type"

    const-string v22, "application/x-www-form-urlencoded"

    move-object v0, v6

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/16 v21, 0x1

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 446
    invoke-static/range {p2 .. p2}, Ltwitter4j/http/HttpClient;->encodeParameters([Ltwitter4j/http/PostParameter;)Ljava/lang/String;

    move-result-object v12

    .line 447
    .local v12, postParam:Ljava/lang/String;
    const-string v21, "Post Params: "

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-static {v0, v1}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v21, "UTF-8"

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 450
    .local v5, bytes:[B
    const-string v21, "Content-Length"

    move-object v0, v5

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v6

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 453
    invoke-virtual {v11, v5}, Ljava/io/OutputStream;->write([B)V

    .line 454
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 455
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 459
    .end local v5           #bytes:[B
    .end local v12           #postParam:Ljava/lang/String;
    :goto_1
    new-instance v13, Ltwitter4j/http/Response;

    invoke-direct {v13, v6}, Ltwitter4j/http/Response;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    .end local v14           #res:Ltwitter4j/http/Response;
    .restart local v13       #res:Ltwitter4j/http/Response;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 461
    sget-boolean v21, Ltwitter4j/http/HttpClient;->DEBUG:Z

    if-eqz v21, :cond_3

    .line 462
    const-string v21, "Response: "

    invoke-static/range {v21 .. v21}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v16

    .line 464
    .local v16, responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 465
    .local v10, key:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 466
    .local v20, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 467
    .local v19, value:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 468
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 484
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/String;
    .end local v16           #responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v19           #value:Ljava/lang/String;
    .end local v20           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v21

    .line 485
    :goto_3
    :try_start_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 487
    :goto_4
    :try_start_3
    throw v21
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 489
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 491
    .local v9, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/http/HttpClient;->retryCount:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 492
    new-instance v21, Ltwitter4j/TwitterException;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v21

    .line 457
    .end local v9           #ioe:Ljava/io/IOException;
    .end local v13           #res:Ltwitter4j/http/Response;
    .restart local v14       #res:Ltwitter4j/http/Response;
    :cond_1
    :try_start_4
    const-string v21, "GET"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 484
    :catchall_1
    move-exception v21

    move-object v13, v14

    .end local v14           #res:Ltwitter4j/http/Response;
    .restart local v13       #res:Ltwitter4j/http/Response;
    goto :goto_3

    .line 470
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v16       #responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v19       #value:Ljava/lang/String;
    .restart local v20       #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_5
    invoke-static/range {v19 .. v19}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 475
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/String;
    .end local v16           #responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v19           #value:Ljava/lang/String;
    .end local v20           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/16 v21, 0xc8

    move v0, v15

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 476
    const/16 v21, 0x1f4

    move v0, v15

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/http/HttpClient;->retryCount:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 477
    :cond_4
    new-instance v21, Ltwitter4j/TwitterException;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v15}, Ltwitter4j/http/HttpClient;->getCause(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual {v13}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move v2, v15

    invoke-direct {v0, v1, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;I)V

    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 485
    :cond_5
    :try_start_6
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 505
    .end local v6           #con:Ljava/net/HttpURLConnection;
    .end local v11           #osw:Ljava/io/OutputStream;
    .end local v15           #responseCode:I
    :goto_5
    return-object v13

    .line 485
    .restart local v6       #con:Ljava/net/HttpURLConnection;
    .restart local v11       #osw:Ljava/io/OutputStream;
    .restart local v15       #responseCode:I
    :cond_6
    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 496
    :cond_7
    :goto_6
    :try_start_8
    sget-boolean v21, Ltwitter4j/http/HttpClient;->DEBUG:Z

    if-eqz v21, :cond_8

    if-eqz v13, :cond_8

    .line 497
    invoke-virtual {v13}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    .line 499
    :cond_8
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "Sleeping "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/http/HttpClient;->retryIntervalMillis:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, " millisecs for next retry."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ltwitter4j/http/HttpClient;->log(Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, p0

    iget v0, v0, Ltwitter4j/http/HttpClient;->retryIntervalMillis:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4

    .line 432
    :goto_7
    add-int/lit8 v17, v17, 0x1

    move-object v14, v13

    .end local v13           #res:Ltwitter4j/http/Response;
    .restart local v14       #res:Ltwitter4j/http/Response;
    goto/16 :goto_0

    .line 486
    .end local v14           #res:Ltwitter4j/http/Response;
    .restart local v13       #res:Ltwitter4j/http/Response;
    :catch_1
    move-exception v21

    goto :goto_5

    :catch_2
    move-exception v21

    goto :goto_6

    :catch_3
    move-exception v22

    goto/16 :goto_4

    .line 501
    :catch_4
    move-exception v21

    goto :goto_7

    .end local v6           #con:Ljava/net/HttpURLConnection;
    .end local v11           #osw:Ljava/io/OutputStream;
    .end local v13           #res:Ltwitter4j/http/Response;
    .end local v15           #responseCode:I
    .restart local v14       #res:Ltwitter4j/http/Response;
    :cond_9
    move-object v13, v14

    .end local v14           #res:Ltwitter4j/http/Response;
    .restart local v13       #res:Ltwitter4j/http/Response;
    goto :goto_5
.end method

.method public isAuthenticationEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->basic:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/String;)Ltwitter4j/http/Response;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 415
    new-array v0, v1, [Ltwitter4j/http/PostParameter;

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Z)Ltwitter4j/http/Response;
    .locals 1
    .parameter "url"
    .parameter "authenticated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/http/PostParameter;

    invoke-virtual {p0, p1, v0, p2}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;)Ltwitter4j/http/Response;
    .locals 1
    .parameter "url"
    .parameter "PostParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;
    .locals 1
    .parameter "url"
    .parameter "postParameters"
    .parameter "authenticated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0, p1, p2, p3}, Ltwitter4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public setAccessTokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter "accessTokenURL"

    .prologue
    .line 284
    iput-object p1, p0, Ltwitter4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setAuthorizationURL(Ljava/lang/String;)V
    .locals 0
    .parameter "authorizationURL"

    .prologue
    .line 269
    iput-object p1, p0, Ltwitter4j/http/HttpClient;->authorizationURL:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .parameter "connectionTimeout"

    .prologue
    .line 353
    invoke-static {p1}, Ltwitter4j/Configuration;->getConnectionTimeout(I)I

    move-result v0

    iput v0, p0, Ltwitter4j/http/HttpClient;->connectionTimeout:I

    .line 355
    return-void
.end method

.method public setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 256
    iput-object p1, p0, Ltwitter4j/http/HttpClient;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 257
    return-void
.end method

.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 141
    invoke-static {p1}, Ltwitter4j/Configuration;->getOAuthConsumerKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {p2}, Ltwitter4j/Configuration;->getOAuthConsumerSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 143
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ltwitter4j/http/OAuth;

    invoke-direct {v0, p1, p2}, Ltwitter4j/http/OAuth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->oauth:Ltwitter4j/http/OAuth;

    .line 147
    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 116
    iput-object p1, p0, Ltwitter4j/http/HttpClient;->password:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Ltwitter4j/http/HttpClient;->encodeBasicAuthenticationString()V

    .line 118
    return-void
.end method

.method public setProxyAuthPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "proxyAuthPassword"

    .prologue
    .line 340
    invoke-static {p1}, Ltwitter4j/Configuration;->getProxyPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setProxyAuthUser(Ljava/lang/String;)V
    .locals 1
    .parameter "proxyAuthUser"

    .prologue
    .line 327
    invoke-static {p1}, Ltwitter4j/Configuration;->getProxyUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 1
    .parameter "proxyHost"

    .prologue
    .line 301
    invoke-static {p1}, Ltwitter4j/Configuration;->getProxyHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setProxyPort(I)V
    .locals 1
    .parameter "proxyPort"

    .prologue
    .line 314
    invoke-static {p1}, Ltwitter4j/Configuration;->getProxyPort(I)I

    move-result v0

    iput v0, p0, Ltwitter4j/http/HttpClient;->proxyPort:I

    .line 315
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .parameter "readTimeout"

    .prologue
    .line 365
    invoke-static {p1}, Ltwitter4j/Configuration;->getReadTimeout(I)I

    move-result v0

    iput v0, p0, Ltwitter4j/http/HttpClient;->readTimeout:I

    .line 366
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 562
    iget-object v0, p0, Ltwitter4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    return-void
.end method

.method public setRequestTokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTokenURL"

    .prologue
    .line 260
    iput-object p1, p0, Ltwitter4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setRetryCount(I)V
    .locals 2
    .parameter "retryCount"

    .prologue
    .line 376
    if-ltz p1, :cond_0

    .line 377
    invoke-static {p1}, Ltwitter4j/Configuration;->getRetryCount(I)I

    move-result v0

    iput v0, p0, Ltwitter4j/http/HttpClient;->retryCount:I

    .line 381
    return-void

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RetryCount cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetryIntervalSecs(I)V
    .locals 2
    .parameter "retryIntervalSecs"

    .prologue
    .line 391
    if-ltz p1, :cond_0

    .line 392
    invoke-static {p1}, Ltwitter4j/Configuration;->getRetryIntervalSecs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Ltwitter4j/http/HttpClient;->retryIntervalMillis:I

    .line 397
    return-void

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RetryInterval cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2
    .parameter "ua"

    .prologue
    .line 384
    const-string v0, "User-Agent"

    invoke-static {p1}, Ltwitter4j/Configuration;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/http/HttpClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 111
    iput-object p1, p0, Ltwitter4j/http/HttpClient;->userId:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ltwitter4j/http/HttpClient;->encodeBasicAuthenticationString()V

    .line 113
    return-void
.end method
