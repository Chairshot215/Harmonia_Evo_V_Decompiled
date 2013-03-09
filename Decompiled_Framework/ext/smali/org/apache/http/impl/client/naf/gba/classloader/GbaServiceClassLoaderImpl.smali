.class Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;
.super Ljava/lang/Object;
.source "GbaServiceClassLoaderImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;


# instance fields
.field private final classLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classLoader must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;->classLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public getPlatformClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;->classLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
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

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;->classLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
