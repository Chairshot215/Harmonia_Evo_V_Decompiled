.class public Lcom/broadcom/bt/app/system/ServiceManager;
.super Landroid/app/Service;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/ServiceManager$ServiceManagerStub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ServiceManager"


# instance fields
.field private final svc:Lcom/broadcom/bt/service/framework/IServiceManager$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lcom/broadcom/bt/app/system/ServiceManager$ServiceManagerStub;

    invoke-direct {v0}, Lcom/broadcom/bt/app/system/ServiceManager$ServiceManagerStub;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/ServiceManager;->svc:Lcom/broadcom/bt/service/framework/IServiceManager$Stub;

    .line 37
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 40
    const-string v0, "ServiceManager"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/broadcom/bt/app/system/ServiceManager;->svc:Lcom/broadcom/bt/service/framework/IServiceManager$Stub;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
