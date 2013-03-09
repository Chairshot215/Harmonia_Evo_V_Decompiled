.class public interface abstract Lcom/htc/dcs/DCSServiceComponent;
.super Ljava/lang/Object;
.source "DCSServiceComponent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dcs/DCSServiceComponent$Stub;
    }
.end annotation


# virtual methods
.method public abstract fetch(JILandroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract fetchData(I[Landroid/os/Bundle;I)[Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
