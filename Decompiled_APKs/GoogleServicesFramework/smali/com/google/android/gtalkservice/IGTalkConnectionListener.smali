.class public interface abstract Lcom/google/android/gtalkservice/IGTalkConnectionListener;
.super Ljava/lang/Object;
.source "IGTalkConnectionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IGTalkConnectionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectionCreated(Lcom/google/android/gtalkservice/IGTalkConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectionCreationFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
