.class public Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;
.super Ljava/lang/Object;
.source "GbaSupportPermissionRequestCheckerImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public isCurrentProcessAllowedToUseGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->isCurrentProcessRequestedGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->isCurrentProcessHasTheSameSignaturesAsGbaService(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->isCurrentProcessSystemsOne(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCurrentProcessAllowedToUseGba()#started   result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentProcessHasTheSameSignaturesAsGbaService(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getCurrentProcessPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "javax.microedition.gba.android"

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;->haveTheSameSignatures(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCurrentProcessHasTheSameSignaturesAsGbaService()#   curAppPackageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   gbaServicePackageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   haveTheSameSignatures="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v2

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isCurrentProcessRequestedGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
    .locals 10

    sget v7, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_0

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCurrentProcessRequestedGba()#started   androidContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getCurrentProcessPermissionRequests()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v0, v5

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    const-string v7, "javax.microedition.gba.USE_GBA_SERVICE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "   the permission request has been found."

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCurrentProcessRequestedGba()#finished   result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    sget v7, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_1

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "   requestedPermissions == null"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   errorMsg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isCurrentProcessSystemsOne(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getCurrentProcessPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-interface {v4, v5}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;->getApplicationInfo(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;->isSystemsOne()Z

    move-result v7

    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCurrentProcessSystemsOne()#   systemsOne="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move v6, v7

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;->getSourceDir()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCurrentProcessSystemsOne()#   curProcApkPath="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    if-nez v7, :cond_0

    if-eqz v2, :cond_0

    const-string v8, "/system/app/"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :cond_0
    :goto_0
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCurrentProcessSystemsOne()#finished   res="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return v6

    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "   applicationInfo == null"

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
