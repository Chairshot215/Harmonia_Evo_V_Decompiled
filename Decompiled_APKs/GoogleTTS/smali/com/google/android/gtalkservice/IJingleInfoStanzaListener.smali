.class public interface abstract Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
.super Ljava/lang/Object;
.source "IJingleInfoStanzaListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IJingleInfoStanzaListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAccountId()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStanzaReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
