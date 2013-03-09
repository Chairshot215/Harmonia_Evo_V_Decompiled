.class public Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;
.super Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;
.source "RemoteIGbaServiceImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;


# instance fields
.field private final checkIfServiceIsOnlineMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getGbaAuthManagerMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;-><init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "checkIfServiceIsOnline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;->checkIfServiceIsOnlineMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getGbaAuthManager"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;->getGbaAuthManagerMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    return-void
.end method


# virtual methods
.method public checkIfServiceIsOnline(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;->checkIfServiceIsOnlineMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    const-string v0, "javax.microedition.gba.android.IGbaService"

    const-string v1, "javax.microedition.gba.android.IGbaService"

    return-object v1
.end method

.method public getGbaAuthManager()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v8, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;->getGbaAuthManagerMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;->getGbaClassLoader()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;->getOriginalClassRef(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Ljava/lang/Class;

    move-result-object v3

    new-instance v7, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManagerImpl;

    iget-object v8, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;->gbaClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-direct {v7, v2, v8, v3}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManagerImpl;-><init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v7

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->getPlatformClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v4}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->reinitClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PROBLEM with loading an instance of Platform class loader : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public bridge synthetic getGbaClassLoader()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    .locals 1

    invoke-super {p0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;->getGbaClassLoader()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v0

    return-object v0
.end method
