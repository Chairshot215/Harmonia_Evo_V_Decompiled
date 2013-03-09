.class Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;
.super Ljava/lang/Object;
.source "GbaServiceClassLoaderWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderReinitializable;


# instance fields
.field private delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;->delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    return-void
.end method


# virtual methods
.method public declared-synchronized getPlatformClassLoader()Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;->delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->getPlatformClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;->delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized replacePlatformClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;->delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
