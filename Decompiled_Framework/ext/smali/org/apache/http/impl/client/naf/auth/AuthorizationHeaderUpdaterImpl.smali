.class public Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;
.super Ljava/lang/Object;
.source "AuthorizationHeaderUpdaterImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public updateRequestWithCachedAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V
    .locals 6

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "updateRequestWithCachedAuthorizationHeader(...)#started"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v3

    invoke-static {}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->instance()Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;->getItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->buildHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Authorization"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "   current request has been updated with cached Authorization header."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "   current request hasn\'t been updated with cached Authorization header, because the cache doesn\'t contain appropriate records."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method
