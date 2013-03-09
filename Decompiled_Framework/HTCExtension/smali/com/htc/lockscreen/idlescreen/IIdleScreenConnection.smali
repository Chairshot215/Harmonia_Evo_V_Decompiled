.class public interface abstract Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;
.super Ljava/lang/Object;
.source "IIdleScreenConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract attachEngine(Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
