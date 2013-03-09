.class Ljava/net/AddressCache;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/AddressCache$AddressCacheEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_NEGATIVE_TTL_NANOS:J = 0x2540be400L

.field private static final DEFAULT_POSITIVE_TTL_NANOS:J = 0x8bb2c97000L

.field private static final MAX_ENTRIES:I = 0x200


# instance fields
.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/AddressCache$AddressCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    return-void
.end method

.method private customTtl(Ljava/lang/String;J)J
    .locals 8

    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p2

    :goto_0
    return-wide v4

    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    const-wide/high16 v4, -0x8000

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p2

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0}, Llibcore/util/BasicLruCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    iget-object v1, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v1, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/AddressCache$AddressCacheEntry;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    if-eqz p3, :cond_0

    const-string v4, "networkaddress.cache.ttl"

    :goto_0
    if-eqz p3, :cond_1

    const-wide v0, 0x8bb2c97000L

    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    add-long v2, v5, v0

    iget-object v5, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v6, Ljava/net/AddressCache$AddressCacheEntry;

    invoke-direct {v6, p2, v2, v3}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v5, p1, v6}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v4, "networkaddress.cache.negative.ttl"

    goto :goto_0

    :cond_1
    const-wide v0, 0x2540be400L

    goto :goto_1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/net/AddressCache;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/net/AddressCache;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public putUnknownHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/net/AddressCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
