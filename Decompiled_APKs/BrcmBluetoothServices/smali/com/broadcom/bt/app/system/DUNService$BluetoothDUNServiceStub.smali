.class final Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;
.super Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;
.source "DUNService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/DUNService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothDUNServiceStub"
.end annotation


# static fields
.field public static final PORT_STATE_CLOSED:B = 0x3t

.field public static final PORT_STATE_LISTENING:B = 0x1t

.field public static final PORT_STATE_OPENED:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "BluetoothDUNService"


# instance fields
.field private mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

.field private mSvcStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 70
    const-string v0, "bluetooth_dun"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 73
    return-void
.end method


# virtual methods
.method public close(B)V
    .locals 1
    .parameter "appId"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->close(B)V

    .line 80
    :cond_0
    return-void
.end method

.method public getAllPortStatus()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->getAllPortStatus()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 87
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 93
    :cond_0
    return-void
.end method
