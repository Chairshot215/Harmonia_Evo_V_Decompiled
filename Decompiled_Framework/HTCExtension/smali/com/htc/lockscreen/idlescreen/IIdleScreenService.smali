.class public interface abstract Lcom/htc/lockscreen/idlescreen/IIdleScreenService;
.super Ljava/lang/Object;
.source "IIdleScreenService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IIdleScreenService$Stub;
    }
.end annotation


# virtual methods
.method public abstract attach(Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;Landroid/os/IBinder;IIIIZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
