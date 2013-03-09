.class Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "AndroidPackageInfoWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;


# instance fields
.field private final permissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

.field private final requestedPermissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    const-string v1, "permissions"

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;->permissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    const-string v1, "requestedPermissions"

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;->requestedPermissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    const-string v0, "android.content.pm.PackageInfo"

    return-object v0
.end method

.method public getPermissions()[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;->permissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getRequestedPermissions()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;->requestedPermissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    :cond_0
    return-object v0
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
