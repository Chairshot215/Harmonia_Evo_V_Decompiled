.class public Lcom/broadcom/bt/app/system/PbapService;
.super Landroid/app/Service;
.source "PbapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "PbapAppService"


# instance fields
.field private final mBinder:Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/PbapService;->mBinder:Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;

    .line 43
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 47
    const-string v0, "PbapAppService"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService;->mBinder:Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;

    return-object v0
.end method
