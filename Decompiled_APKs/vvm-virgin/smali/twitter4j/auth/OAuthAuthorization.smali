.class public Ltwitter4j/auth/OAuthAuthorization;
.super Ljava/lang/Object;
.source "OAuthAuthorization.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/OAuthSupport;


# static fields
.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static final OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter; = null

.field private static RAND:Ljava/util/Random; = null

.field static class$twitter4j$auth$OAuthAuthorization:Ljava/lang/Class; = null

.field private static transient http:Ltwitter4j/internal/http/HttpClientWrapper; = null

.field private static final logger:Ltwitter4j/internal/logging/Logger; = null

.field private static final serialVersionUID:J = -0x3c9fc4eaff57b01aL


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private oauthToken:Ltwitter4j/auth/OAuthToken;

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    const-string v1, "oauth_signature_method"

    const-string v2, "HMAC-SHA1"

    invoke-direct {v0, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter;

    .line 50
    sget-object v0, Ltwitter4j/auth/OAuthAuthorization;->class$twitter4j$auth$OAuthAuthorization:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.auth.OAuthAuthorization"

    invoke-static {v0}, Ltwitter4j/auth/OAuthAuthorization;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->class$twitter4j$auth$OAuthAuthorization:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/internal/logging/Logger;

    .line 251
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;

    return-void

    .line 50
    :cond_0
    sget-object v0, Ltwitter4j/auth/OAuthAuthorization;->class$twitter4j$auth$OAuthAuthorization:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 3
    .parameter "conf"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 65
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    .line 66
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {v0, p1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 67
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ltwitter4j/auth/AccessToken;

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 71
    :cond_0
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
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

.method public static constructRequestURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 425
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 426
    .local v2, index:I
    if-eq v6, v2, :cond_0

    .line 427
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 429
    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 430
    .local v3, slashIndex:I
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, baseURL:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 432
    .local v1, colonIndex:I
    if-eq v6, v1, :cond_1

    .line 434
    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ":80"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 444
    return-object p0

    .line 437
    :cond_2
    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ":443"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, httpParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v0, "&"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "splitter"
    .parameter "quot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, httpParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 387
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/internal/http/HttpParameter;

    .line 388
    .local v2, param:Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    if-eqz p2, :cond_1

    .line 391
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    :cond_2
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    if-eqz p2, :cond_3

    .line 397
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    :cond_3
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 402
    .end local v2           #param:Ltwitter4j/internal/http/HttpParameter;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 403
    if-eqz p2, :cond_5

    .line 404
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private ensureTokenIsAvailable()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Token available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method public static normalizeAuthorizationHeaders(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 366
    invoke-static {p0}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 361
    invoke-static {p0}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeRequestParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 356
    invoke-static {p0}, Ltwitter4j/auth/OAuthAuthorization;->toParamList([Ltwitter4j/internal/http/HttpParameter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/auth/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseGetParameters(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, signatureBaseParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 228
    .local v4, queryStart:I
    const/4 v7, -0x1

    if-eq v7, v4, :cond_1

    .line 229
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-static {v7, v8}, Ltwitter4j/internal/util/T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, queryStrs:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 232
    .local v3, query:Ljava/lang/String;
    const-string v7, "="

    invoke-static {v3, v7}, Ltwitter4j/internal/util/T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, split:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 234
    new-instance v7, Ltwitter4j/internal/http/HttpParameter;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_0
    new-instance v7, Ltwitter4j/internal/http/HttpParameter;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 244
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #query:Ljava/lang/String;
    .end local v6           #split:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 249
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #queryStrs:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static toParamList([Ltwitter4j/internal/http/HttpParameter;)Ljava/util/List;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ltwitter4j/internal/http/HttpParameter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v0, paramList:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    if-ne p0, p1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v1

    .line 455
    :cond_1
    instance-of v3, p1, Ltwitter4j/auth/OAuthSupport;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 457
    check-cast v0, Ltwitter4j/auth/OAuthAuthorization;

    .line 459
    .local v0, that:Ltwitter4j/auth/OAuthAuthorization;
    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 460
    goto :goto_0

    .line 459
    :cond_4
    iget-object v3, v0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 461
    :cond_5
    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 462
    goto :goto_0

    .line 461
    :cond_7
    iget-object v3, v0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 463
    :cond_8
    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    iget-object v4, v0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {v3, v4}, Ltwitter4j/auth/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 464
    goto :goto_0

    .line 463
    :cond_9
    iget-object v3, v0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
    .locals 8
    .parameter "method"
    .parameter "url"
    .parameter "params"
    .parameter "nonce"
    .parameter "timestamp"
    .parameter "otoken"

    .prologue
    .line 191
    if-nez p3, :cond_0

    .line 192
    const/4 v5, 0x0

    new-array p3, v5, [Ltwitter4j/internal/http/HttpParameter;

    .line 194
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v2, oauthHeaderParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_consumer_key"

    iget-object v7, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v5, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_timestamp"

    invoke-direct {v5, v6, p5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_nonce"

    invoke-direct {v5, v6, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_version"

    const-string v7, "1.0"

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    if-eqz p6, :cond_1

    .line 201
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_token"

    invoke-virtual {p6}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, p3

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v4, signatureBaseParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    invoke-static {p3}, Ltwitter4j/internal/http/HttpParameter;->containsFile([Ltwitter4j/internal/http/HttpParameter;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 206
    invoke-static {p3}, Ltwitter4j/auth/OAuthAuthorization;->toParamList([Ltwitter4j/internal/http/HttpParameter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    :cond_2
    invoke-direct {p0, p2, v4}, Ltwitter4j/auth/OAuthAuthorization;->parseGetParameters(Ljava/lang/String;Ljava/util/List;)V

    .line 209
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {p2}, Ltwitter4j/auth/OAuthAuthorization;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 211
    .local v0, base:Ljava/lang/StringBuffer;
    invoke-static {v4}, Ltwitter4j/auth/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, oauthBaseString:Ljava/lang/String;
    sget-object v5, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v6, "OAuth base string: "

    invoke-virtual {v5, v6, v1}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v1, p6}, Ltwitter4j/auth/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, signature:Ljava/lang/String;
    sget-object v5, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v6, "OAuth signature: "

    invoke-virtual {v5, v6, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_signature"

    invoke-direct {v5, v6, v3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v5, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 221
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "realm"

    iget-object v7, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "OAuth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
    .locals 11
    .parameter "method"
    .parameter "url"
    .parameter "params"
    .parameter "token"

    .prologue
    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 259
    .local v9, timestamp:J
    sget-object v0, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    add-long v7, v9, v0

    .line 260
    .local v7, nonce:J
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ltwitter4j/auth/OAuthAuthorization;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateOAuthSignatureHttpParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "method"
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v7, v9, v11

    .line 265
    .local v7, timestamp:J
    sget-object v9, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    int-to-long v9, v9

    add-long v1, v7, v9

    .line 267
    .local v1, nonce:J
    new-instance v4, Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v4, oauthHeaderParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v9, Ltwitter4j/internal/http/HttpParameter;

    const-string v10, "oauth_consumer_key"

    iget-object v11, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v9, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v9, Ltwitter4j/internal/http/HttpParameter;

    const-string v10, "oauth_timestamp"

    invoke-direct {v9, v10, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v9, Ltwitter4j/internal/http/HttpParameter;

    const-string v10, "oauth_nonce"

    invoke-direct {v9, v10, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v9, Ltwitter4j/internal/http/HttpParameter;

    const-string v10, "oauth_version"

    const-string v11, "1.0"

    invoke-direct {v9, v10, v11}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v9, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v9, :cond_0

    .line 274
    new-instance v9, Ltwitter4j/internal/http/HttpParameter;

    const-string v10, "oauth_token"

    iget-object v11, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {v11}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .local v6, signatureBaseParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-direct {p0, p2, v6}, Ltwitter4j/auth/OAuthAuthorization;->parseGetParameters(Ljava/lang/String;Ljava/util/List;)V

    .line 281
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {p2}, Ltwitter4j/auth/OAuthAuthorization;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 283
    .local v0, base:Ljava/lang/StringBuffer;
    invoke-static {v6}, Ltwitter4j/auth/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, oauthBaseString:Ljava/lang/String;
    iget-object v9, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {p0, v3, v9}, Ltwitter4j/auth/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, signature:Ljava/lang/String;
    new-instance v9, Ltwitter4j/internal/http/HttpParameter;

    const-string v10, "oauth_signature"

    invoke-direct {v9, v10, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-object v4
.end method

.method generateSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/auth/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
    .locals 8
    .parameter "data"
    .parameter "token"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, byteHMAC:[B
    :try_start_0
    const-string v6, "HmacSHA1"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 306
    .local v2, mac:Ljavax/crypto/Mac;
    if-nez p2, :cond_1

    .line 307
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-static {v7}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, oauthSignature:Ljava/lang/String;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "HmacSHA1"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 317
    .end local v4           #oauthSignature:Ljava/lang/String;
    .local v5, spec:Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_0
    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 326
    invoke-static {v0}, Ltwitter4j/internal/http/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 310
    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ltwitter4j/auth/OAuthToken;->getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v5

    .line 311
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    if-nez v5, :cond_0

    .line 312
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-static {v7}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p2}, Ltwitter4j/auth/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    .restart local v4       #oauthSignature:Ljava/lang/String;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "HmacSHA1"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 314
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {p2, v5}, Ltwitter4j/auth/OAuthToken;->setSecretKeySpec(Ljavax/crypto/spec/SecretKeySpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 319
    .end local v2           #mac:Ljavax/crypto/Mac;
    .end local v4           #oauthSignature:Ljava/lang/String;
    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 320
    .local v1, ike:Ljava/security/InvalidKeyException;
    sget-object v6, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v7, "Failed initialize \"Message Authentication Code\" (MAC)"

    invoke-virtual {v6, v7, v1}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 322
    .end local v1           #ike:Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v3

    .line 323
    .local v3, nsae:Ljava/security/NoSuchAlgorithmException;
    sget-object v6, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v7, "Failed to get HmacSHA1 \"Message Authentication Code\" (MAC)"

    invoke-virtual {v6, v7, v3}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .locals 4
    .parameter "req"

    .prologue
    .line 75
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v0

    invoke-virtual {v0}, Ltwitter4j/internal/http/RequestMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/auth/OAuthAuthorization;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ltwitter4j/auth/OAuthAuthorization;->ensureTokenIsAvailable()V

    .line 117
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    instance-of v0, v0, Ltwitter4j/auth/AccessToken;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    check-cast v0, Ltwitter4j/auth/AccessToken;

    .line 121
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ltwitter4j/auth/AccessToken;

    sget-object v1, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 121
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    check-cast v0, Ltwitter4j/auth/AccessToken;

    goto :goto_0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 7
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Ltwitter4j/auth/OAuthAuthorization;->ensureTokenIsAvailable()V

    .line 129
    new-instance v0, Ltwitter4j/auth/AccessToken;

    sget-object v1, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_verifier"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 131
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    check-cast v0, Ltwitter4j/auth/AccessToken;

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 9
    .parameter "screenName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, url:Ljava/lang/String;
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_0
    new-instance v2, Ltwitter4j/auth/AccessToken;

    sget-object v3, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    const/4 v4, 0x3

    new-array v4, v4, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v5, 0x0

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "x_auth_username"

    invoke-direct {v6, v7, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "x_auth_password"

    invoke-direct {v6, v7, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "x_auth_mode"

    const-string v8, "client_auth"

    invoke-direct {v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/auth/AccessToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    iput-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 166
    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    check-cast v2, Ltwitter4j/auth/AccessToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 167
    .end local v1           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 168
    .local v0, te:Ltwitter4j/TwitterException;
    new-instance v2, Ltwitter4j/TwitterException;

    const-string v3, "The screen name / password combination seems to be invalid."

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2
.end method

.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .parameter "requestToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 139
    invoke-virtual {p0}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .parameter "requestToken"
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 147
    invoke-virtual {p0, p2}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/auth/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .locals 4
    .parameter "callbackURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    instance-of v1, v1, Ltwitter4j/auth/AccessToken;

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Access token already available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "oauth_callback"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 108
    .local v0, params:[Ltwitter4j/internal/http/HttpParameter;
    :goto_0
    new-instance v1, Ltwitter4j/auth/RequestToken;

    sget-object v2, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthRequestTokenURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ltwitter4j/auth/RequestToken;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/auth/OAuthSupport;)V

    iput-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 109
    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    check-cast v1, Ltwitter4j/auth/RequestToken;

    return-object v1

    .line 107
    .end local v0           #params:[Ltwitter4j/internal/http/HttpParameter;
    :cond_1
    new-array v0, v3, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 472
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 473
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {v1}, Ltwitter4j/auth/OAuthToken;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 474
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 471
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 472
    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    instance-of v0, v0, Ltwitter4j/auth/AccessToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    .locals 0
    .parameter "accessToken"

    .prologue
    .line 176
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 177
    return-void
.end method

.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 448
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    .line 449
    if-eqz p2, :cond_1

    .end local p2
    :goto_1
    iput-object p2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    .line 450
    return-void

    .line 448
    .restart local p1
    .restart local p2
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 449
    .end local p1
    :cond_1
    const-string p2, ""

    goto :goto_1
.end method

.method public setOAuthRealm(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 186
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "OAuthAuthorization{consumerKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", consumerSecret=\'******************************************\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oauthToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
