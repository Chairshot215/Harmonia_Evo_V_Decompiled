.class public Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;
.super Ljava/lang/Object;
.source "NafRedirectHandlerDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;


# static fields
.field private static final DEFAULT_MAXIMUM_REDIRECTIONS_COUNT:Ljava/lang/Integer;


# instance fields
.field private final authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;

.field private final currentAmountOfRedirections:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->DEFAULT_MAXIMUM_REDIRECTIONS_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->currentAmountOfRedirections:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NafRedirectHandlerDefault()   this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nafRequestExecutor must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

    new-instance v0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;

    return-void
.end method


# virtual methods
.method protected doSend(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSend()#started   nafRequestWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSend()#finished   responseWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public executeWithRedirectionHandling(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeWithRedirectionHandling()#started   nafRequestWrapper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_1
    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeWithRedirectionHandling()#   do{...}   currentAmountOfRedirections="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->currentAmountOfRedirections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->updateLastRequestWithNewLocation(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;)V

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->doSend(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "lastResponse must be not null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "lastResponseHttp must be not null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->isResponse4Redirrection(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->currentAmountOfRedirections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->currentAmountOfRedirections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->getMaximumRedirectionsAmount()I

    move-result v4

    if-le v3, v4, :cond_1

    :cond_6
    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_7

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeWithRedirectionHandling()#finished   lastResponse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_7
    return-object v0
.end method

.method protected getLocationHeaderValue(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->searchLocationHeader(Lorg/apache/http/HttpResponse;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocationHeaderValue()#finished   locationHeaderValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public getMaximumRedirectionsAmount()I
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->DEFAULT_MAXIMUM_REDIRECTIONS_COUNT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected isResponse4Redirrection(Lorg/apache/http/HttpResponse;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0x12c

    if-lt v2, v4, :cond_0

    const/16 v4, 0x18f

    if-gt v2, v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->searchLocationHeader(Lorg/apache/http/HttpResponse;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isResponse4Redirrection()#finished   isRedirectionResponse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method protected searchLocationHeader(Lorg/apache/http/HttpResponse;)Lorg/apache/http/Header;
    .locals 10

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "httpResponse must be not null!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v8, "location"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    move-object v7, v2

    :cond_1
    return-object v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected updateLastRequestWithNewLocation(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    sget v9, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v9, v9, 0x2

    if-lez v9, :cond_0

    iget-object v9, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateLastRequestWithNewLocation()#started   nafRequestWrapper="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   lastHttpResponseWrapper="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->getLocationHeaderValue(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v0

    instance-of v9, v0, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v9, :cond_5

    move-object v1, v0

    check-cast v1, Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    const-string v9, "https"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v6, 0x1bb

    :cond_1
    :goto_0
    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-direct {v5, v4, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v5}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->setCurrentHttpHost(Lorg/apache/http/HttpHost;)V

    iget-object v9, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;

    invoke-interface {v9, p1}, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;->updateRequestWithCachedAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V

    :cond_2
    :goto_1
    sget v9, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_3

    iget-object v9, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateLastRequestWithNewLocation()#finished   nafRequestWrapper="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   lastHttpResponseWrapper="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    const-string v9, "http"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v6, 0x50

    goto :goto_0

    :cond_5
    sget v9, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v9, v9, 0x1

    if-lez v9, :cond_2

    iget-object v9, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v10, "Unknown type of request class, update was cancelled!!!"

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1
.end method
