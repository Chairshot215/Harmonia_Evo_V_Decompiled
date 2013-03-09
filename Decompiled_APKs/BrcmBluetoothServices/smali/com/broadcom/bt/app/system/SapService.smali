.class public Lcom/broadcom/bt/app/system/SapService;
.super Landroid/app/Service;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "SapAppService"


# instance fields
.field private final mBinder:Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/SapService;->mBinder:Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;

    .line 42
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 46
    const-string v0, "SapAppService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService;->mBinder:Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;

    return-object v0
.end method
