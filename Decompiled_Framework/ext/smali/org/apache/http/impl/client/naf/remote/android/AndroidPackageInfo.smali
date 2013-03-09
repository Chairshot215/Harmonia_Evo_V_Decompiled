.class public interface abstract Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
.super Ljava/lang/Object;
.source "AndroidPackageInfo.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/RemoteClass;


# virtual methods
.method public abstract getPermissions()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRequestedPermissions()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method
