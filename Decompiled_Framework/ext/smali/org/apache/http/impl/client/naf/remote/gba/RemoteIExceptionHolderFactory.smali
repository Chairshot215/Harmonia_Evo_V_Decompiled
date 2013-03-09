.class public Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;
.super Ljava/lang/Object;
.source "RemoteIExceptionHolderFactory.java"


# static fields
.field private static final iExceptionHolderClassRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;->iExceptionHolderClassRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOriginalClassRef(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;",
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

    const-class v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;

    monitor-enter v3

    if-nez p0, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "gbaServiceClassLoader must be not null!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    sget-object v2, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;->iExceptionHolderClassRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    const-class v2, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "javax.microedition.gba.android.IExceptionHolder"

    invoke-interface {p0, v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "javax.microedition.gba.android.IExceptionHolder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong class was loaded by gbaServiceClassLoader!   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "javax.microedition.gba.android.IExceptionHolder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOriginalClassRef()   iExceptionHolderClass="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    sget-object v2, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;->iExceptionHolderClassRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    sget-object v2, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;->iExceptionHolderClassRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public static newInstsance(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "gbaServiceClassLoader must be not null!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;->getOriginalClassRef(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;->newInstsanceUnsafe(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    const-string v5, "New instance hasn\'t been created."

    invoke-direct {v4, v5}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v0

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v0

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v0

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_3
    move-exception v0

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_4
    move-exception v0

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_5
    move-exception v0

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7

    return-object v3

    :catch_6
    move-exception v0

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_7
    move-exception v0

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static newInstsanceUnsafe(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v5, 0x0

    const-class v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newInstsanceUnsafe()   iExceptionHolderConstructor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newInstsanceUnsafe()   iExceptionHolder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method
