.class public Lcom/broadcom/bt/app/system/GattService;
.super Landroid/app/Service;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GattAppService"


# instance fields
.field private mBinder:Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService;->mBinder:Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 53
    const-string v1, "GattAppService"

    const-string v2, "Starting service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    new-instance v1, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;

    invoke-direct {v1, p0, p0}, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;-><init>(Lcom/broadcom/bt/app/system/GattService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/system/GattService;->mBinder:Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;

    .line 56
    iget-object v1, p0, Lcom/broadcom/bt/app/system/GattService;->mBinder:Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const-string v1, "GattAppService"

    const-string v2, "Done starting service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GattAppService"

    const-string v2, "Error while enabling gatt service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 65
    const-string v1, "GattAppService"

    const-string v2, "Destroying service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/system/GattService;->mBinder:Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->stop()V

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/app/system/GattService;->mBinder:Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    const-string v1, "GattAppService"

    const-string v2, "Done stopting service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GattAppService"

    const-string v2, "Error while enabling gatt service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
