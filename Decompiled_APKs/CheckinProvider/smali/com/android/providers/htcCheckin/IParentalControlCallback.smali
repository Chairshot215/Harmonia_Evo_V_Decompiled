.class public interface abstract Lcom/android/providers/htcCheckin/IParentalControlCallback;
.super Ljava/lang/Object;
.source "IParentalControlCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/IParentalControlCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(Lcom/google/android/net/ParentalControlState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
