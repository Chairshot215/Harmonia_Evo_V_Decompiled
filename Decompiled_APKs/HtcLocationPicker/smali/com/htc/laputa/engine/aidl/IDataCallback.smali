.class public interface abstract Lcom/htc/laputa/engine/aidl/IDataCallback;
.super Ljava/lang/Object;
.source "IDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/aidl/IDataCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendData(IILandroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
