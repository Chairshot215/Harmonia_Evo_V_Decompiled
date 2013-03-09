.class public interface abstract Lcom/google/android/gtalkservice/IConnectionStateListener;
.super Ljava/lang/Object;
.source "IConnectionStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
