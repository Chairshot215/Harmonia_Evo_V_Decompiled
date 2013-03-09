.class final Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;
.super Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothSAPServiceStub"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothSAPService"


# instance fields
.field private mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;-><init>()V

    .line 69
    const-string v0, "bluetooth_sap"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(B)V
    .locals 1
    .parameter "type"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disconnect(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->enable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
