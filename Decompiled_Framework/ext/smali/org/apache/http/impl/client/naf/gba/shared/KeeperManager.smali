.class public Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
.super Ljava/lang/Object;
.source "KeeperManager.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/shared/SharedResources;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;
    }
.end annotation


# static fields
.field private static instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;",
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

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static instance()Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    .locals 5

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;

    if-nez v1, :cond_1

    sget-object v4, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v2, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;

    invoke-direct {v2}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

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
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "RELEASING of shared resources"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->clear()V

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->clear()V

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->clear()V

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->clear()V

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "INITIALIZATION of shared resources"

    invoke-interface {v1, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v2

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->instance(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    move-result-object v4

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    move-result-object v5

    new-instance v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;-><init>(Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reload()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->clear()V

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->init()V

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "RELOADING of shared resources has been completed."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
