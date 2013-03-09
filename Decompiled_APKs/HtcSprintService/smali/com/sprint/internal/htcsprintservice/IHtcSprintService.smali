.class public interface abstract Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
.super Ljava/lang/Object;
.source "IHtcSprintService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getString(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reboot()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
