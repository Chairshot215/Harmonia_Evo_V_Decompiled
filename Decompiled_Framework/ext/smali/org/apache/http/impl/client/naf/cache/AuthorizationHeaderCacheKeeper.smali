.class public Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;
.super Ljava/lang/Object;
.source "AuthorizationHeaderCacheKeeper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;


# static fields
.field private static instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private final delegate:Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->delegate:Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;

    return-void
.end method

.method public static instance()Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;
    .locals 5

    sget-object v3, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;

    if-nez v1, :cond_1

    sget-object v4, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v2, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;

    new-instance v3, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheImpl;

    invoke-direct {v3}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheImpl;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;-><init>(Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :cond_0
    :try_start_2
    monitor-exit v4

    :cond_1
    return-object v1

    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;
    .locals 3

    const/4 v0, 0x0

    sget-object v2, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->delegate:Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;->getItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;)V
    .locals 2

    sget-object v1, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->delegate:Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;->putItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
