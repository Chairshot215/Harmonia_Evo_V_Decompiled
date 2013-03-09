.class Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;
.super Ljava/lang/Object;
.source "AuthorizationHeaderCacheKey.java"


# instance fields
.field private final hostName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V
    .locals 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    return v1

    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isValidKey()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorizationHeaderCacheKey [hostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
