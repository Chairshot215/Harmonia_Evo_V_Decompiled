.class Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "AndroidContextWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;


# instance fields
.field private final bindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getPackageManagerMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getPackageNameMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field private final packageMnagerholder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private final requestedPermissionsHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final startServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final unbindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->requestedPermissionsHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->packageMnagerholder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "getPackageName"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageNameMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v2, "android.content.ServiceConnection"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "unbindService"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v1, v4, v7

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->unbindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v2, "android.content.Intent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "startService"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v0, v4, v7

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->startServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "bindService"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v7

    aput-object v1, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->bindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "getPackageManager"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageManagerMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    return-void
.end method


# virtual methods
.method public bindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->createGbaServiceIntent()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->bindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;->getObjRef()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService()   bindServiceResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method createGbaServiceIntent()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.content.Intent"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startService()   intentClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startService()   intentConstructor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    if-eqz v2, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "javax.microedition.gba.android.IGbaService"

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startService()   intentInstance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6

    :cond_2
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCurrentProcessPackageName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageNameMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentProcessPermissionRequests()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->requestedPermissionsHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getCurrentProcessPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/16 v4, 0x1000

    invoke-interface {v1, v2, v4}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;->getPackageInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;

    move-result-object v0

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   packageInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   requestedPermissions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->requestedPermissionsHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    return-object v3
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    const-string v0, "android.content.Context"

    const-string v1, "android.content.Context"

    return-object v1
.end method

.method public getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->packageMnagerholder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageManagerMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->packageMnagerholder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    :cond_0
    :goto_0
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   packageManager="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public isThisContextOfGbaService()Z
    .locals 6

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "isThisContextOfGbaService()#started"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getCurrentProcessPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "javax.microedition.gba.android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lorg/apache/commons/logging/impl/AndroidLogger;->indicateGbaService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isThisContextOfGbaService()#finished   isContextOfGbaService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v3
.end method

.method public startService()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->createGbaServiceIntent()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->startServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startService()   componentName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unbindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->unbindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;->getObjRef()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public validateClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
