.class public interface abstract Lcom/htc/dcs/DCSCallback;
.super Ljava/lang/Object;
.source "DCSCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dcs/DCSCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract receiveDCSResult(Ljava/lang/String;[Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
