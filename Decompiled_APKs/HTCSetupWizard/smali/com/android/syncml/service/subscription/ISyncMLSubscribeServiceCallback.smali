.class public interface abstract Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;
.super Ljava/lang/Object;
.source "ISyncMLSubscribeServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSubscribeInitializationFinished(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSubscribeStatusReceived(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTermsAndConditionsReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
