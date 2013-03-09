.class public interface abstract Lcom/htc/android/mail/eassvc/pim/EASEventCallback;
.super Ljava/lang/Object;
.source "EASEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract callback(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
