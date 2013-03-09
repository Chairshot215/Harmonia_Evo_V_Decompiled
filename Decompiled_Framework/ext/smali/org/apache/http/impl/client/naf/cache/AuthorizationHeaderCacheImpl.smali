.class Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheImpl;
.super Ljava/lang/Object;
.source "AuthorizationHeaderCacheImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;",
            "Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheImpl;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;
    .locals 3

    new-instance v1, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;

    invoke-direct {v1, p1}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;-><init>(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->isValidKey()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheImpl;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;

    :cond_0
    return-object v0
.end method

.method public putItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;)V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;-><init>(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->isValidKey()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheImpl;->map:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
