.class public interface abstract Lcom/htc/android/pim/hux/IHuxManager;
.super Ljava/lang/Object;
.source "IHuxManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/pim/hux/IHuxManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract verifyDevice()Lcom/htc/android/pim/hux/HuxProvResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
