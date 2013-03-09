.class public interface abstract Lcom/htc/dcs/DCS;
.super Ljava/lang/Object;
.source "DCS.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dcs/DCS$Stub;
    }
.end annotation


# virtual methods
.method public abstract scheduleService(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dcs/DCSCallback;II[Landroid/os/Bundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleTask(Ljava/lang/String;Ljava/lang/String;JJILandroid/os/Bundle;[Landroid/os/Bundle;Lcom/htc/dcs/DCSCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unscheduleService(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unscheduleTask(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
