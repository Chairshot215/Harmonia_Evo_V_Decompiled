.class public interface abstract Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;
.super Ljava/lang/Object;
.source "IMultiUserCoordinatorServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageAcquired(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract packageReleased(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
