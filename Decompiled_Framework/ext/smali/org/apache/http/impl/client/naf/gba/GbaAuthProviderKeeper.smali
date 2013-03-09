.class public Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;
.super Ljava/lang/Object;
.source "GbaAuthProviderKeeper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;


# static fields
.field private static instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private final delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

.field private final supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/GbaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    return-void
.end method

.method public static clear()V
    .locals 4

    sget-object v2, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->releaseForced()V

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static instance()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    .locals 6

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    if-nez v1, :cond_1

    sget-object v4, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v2, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;

    new-instance v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;

    invoke-direct {v5}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;-><init>()V

    invoke-direct {v3, v5}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;-><init>(Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;-><init>(Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

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
.method public getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/GbaType;

    if-nez v1, :cond_1

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-object v1, v0

    if-nez v1, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v3

    :cond_1
    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public promiseToReleaseInNearTime()V
    .locals 2

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->promiseToReleaseInNearTime()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v2, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

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

.method public releaseForced()V
    .locals 2

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->releaseForced()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
