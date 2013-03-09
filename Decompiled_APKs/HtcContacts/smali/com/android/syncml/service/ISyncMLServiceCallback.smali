.class public interface abstract Lcom/android/syncml/service/ISyncMLServiceCallback;
.super Ljava/lang/Object;
.source "ISyncMLServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/syncml/service/ISyncMLServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onError(JLandroid/net/Uri;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFinish(JLandroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProgress(JLandroid/net/Uri;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
