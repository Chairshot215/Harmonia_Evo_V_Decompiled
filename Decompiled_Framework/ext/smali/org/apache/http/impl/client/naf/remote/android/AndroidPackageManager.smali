.class public interface abstract Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
.super Ljava/lang/Object;
.source "AndroidPackageManager.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/RemoteClass;


# virtual methods
.method public abstract getApplicationInfo(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract haveTheSameSignatures(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method
