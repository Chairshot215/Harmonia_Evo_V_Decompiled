.class public Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;
.super Ljava/lang/Object;
.source "GbaClassLoaderKeeper.java"


# static fields
.field private static instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderReinitializable;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 3

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static instance()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    .locals 5

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderReinitializable;

    if-nez v1, :cond_1

    sget-object v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderReinitializable;

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v2, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;

    new-instance v3, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;

    invoke-direct {v3}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;-><init>(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public static reinitClassLoader(Ljava/lang/ClassLoader;)V
    .locals 3

    sget-object v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reinitClassLoader()   classLoader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderReinitializable;

    invoke-interface {v0, p0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderReinitializable;->replacePlatformClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method
