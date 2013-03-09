.class public Lcom/broadcom/bt/app/system/DataGatewayService;
.super Landroid/app/Service;
.source "DataGatewayService.java"


# static fields
.field private static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "DataGatewayAppService"


# instance fields
.field private final svc:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/DataGatewayService;->svc:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    .line 36
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DataGatewayService;->svc:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    invoke-virtual {v0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->init()V

    .line 37
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DataGatewayService;->svc:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    invoke-virtual {v0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayEnable()V

    .line 38
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 45
    const-string v0, "DataGatewayAppService"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DataGatewayService;->svc:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    invoke-virtual {v0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
