.class Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "AndroidPackageManagerWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;


# static fields
.field private static final DEFAULT_GET_APP_INFO_FLAG:I = 0x80


# instance fields
.field private final checkSignaturesMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getApplicationInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getPackageInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getApplicationInfo"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getApplicationInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getPackageInfo"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getPackageInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "checkSignatures"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->checkSignaturesMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    return-void
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getApplicationInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfoWrapper;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfoWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    const-string v0, "android.content.pm.PackageManager"

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getPackageInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public haveTheSameSignatures(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->checkSignaturesMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
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
