.class public interface abstract Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
.super Ljava/lang/Object;
.source "AndroidContext.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/RemoteClass;


# virtual methods
.method public abstract bindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentProcessPackageName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentProcessPermissionRequests()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract isThisContextOfGbaService()Z
.end method

.method public abstract startService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract unbindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method
