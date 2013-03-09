.class final Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;
.super Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothGattServiceStub"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

.field final synthetic this$0:Lcom/broadcom/bt/app/system/GattService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/system/GattService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->this$0:Lcom/broadcom/bt/app/system/GattService;

    invoke-direct {p0}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "bluetooth_gatt"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    .line 90
    return-void
.end method


# virtual methods
.method public GATTServer_AddCharDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "svc_handle"
    .parameter "permissions"
    .parameter "descId"

    .prologue
    .line 386
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_AddCharacteristicDescriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 390
    return-void
.end method

.method public GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V
    .locals 7
    .parameter "svc_handle"
    .parameter "charId"
    .parameter "permissions"
    .parameter "char_property"
    .parameter "dirty_mask"
    .parameter "dirty_desc_num"

    .prologue
    .line 375
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_AddCharacteristic"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V

    .line 380
    return-void
.end method

.method public GATTServer_AddIncludedService(II)V
    .locals 3
    .parameter "svc_handle"
    .parameter "included_svc_handle"

    .prologue
    .line 363
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_AddIncludedService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddIncludedService(II)V

    .line 369
    return-void
.end method

.method public GATTServer_CancelOpen(BLjava/lang/String;Z)V
    .locals 3
    .parameter "serIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 340
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_CancelOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CancelOpen(BLjava/lang/String;Z)V

    .line 343
    return-void
.end method

.method public GATTServer_Close(I)V
    .locals 3
    .parameter "connId"

    .prologue
    .line 348
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_Close(I)V

    .line 351
    return-void
.end method

.method public GATTServer_CreateService(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
    .locals 3
    .parameter "ser_if"
    .parameter "svcId"
    .parameter "num_handles"

    .prologue
    .line 355
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_CreateService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CreateService(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    .line 358
    return-void
.end method

.method public GATTServer_DeleteService(I)V
    .locals 3
    .parameter "svc_handle"

    .prologue
    .line 394
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_DeleteService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_DeleteService(I)V

    .line 398
    return-void
.end method

.method public GATTServer_HandleValueIndication(II[B)V
    .locals 3
    .parameter "connId"
    .parameter "attr_handle"
    .parameter "val"

    .prologue
    .line 419
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_HandleValueIndication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_HandleValueIndication(II[B)V

    .line 424
    return-void
.end method

.method public GATTServer_HandleValueNotification(II[B)V
    .locals 3
    .parameter "connId"
    .parameter "attr_handle"
    .parameter "val"

    .prologue
    .line 431
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_HandleValueNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_HandleValueNotification(II[B)V

    .line 436
    return-void
.end method

.method public GATTServer_Open(BLjava/lang/String;Z)V
    .locals 3
    .parameter "serIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 331
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_Open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_Open(BLjava/lang/String;Z)V

    .line 335
    return-void
.end method

.method public GATTServer_SendRsp(IIBII[BBZ)V
    .locals 9
    .parameter "conn_id"
    .parameter "trans_id"
    .parameter "response_status"
    .parameter "handle"
    .parameter "offset"
    .parameter "val"
    .parameter "auth_req"
    .parameter "write_req"

    .prologue
    .line 443
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_SendRsp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_SendRsp(IIBII[BBZ)V

    .line 448
    return-void
.end method

.method public GATTServer_StartService(IB)V
    .locals 3
    .parameter "svc_handle"
    .parameter "sup_transport"

    .prologue
    .line 402
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_StartService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_StartService(IB)V

    .line 406
    return-void
.end method

.method public GATTServer_StopService(I)V
    .locals 3
    .parameter "svcHandle"

    .prologue
    .line 410
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_StopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_StopService(I)V

    .line 414
    return-void
.end method

.method public close(BLjava/lang/String;IZ)V
    .locals 3
    .parameter "clientIf"
    .parameter "address"
    .parameter "connId"
    .parameter "isDirect"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->close(BLjava/lang/String;IZ)V

    goto :goto_0
.end method

.method public deregisterForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 3
    .parameter "clientIf"
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->deregisterForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->disable()V

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->enable()V

    goto :goto_0
.end method

.method public executeWrite(IZ)V
    .locals 3
    .parameter "connId"
    .parameter "isExecute"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->executeWrite(IZ)V

    goto :goto_0
.end method

.method public getFirstChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "serviceId"
    .parameter "condCharUuid"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getFirstCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "charId"
    .parameter "condDescrUuid"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "srvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "startCharId"
    .parameter "condCharUuid"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getNextCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "descrId"
    .parameter "condDescrUuid"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "startSrvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public open(BLjava/lang/String;Z)V
    .locals 3
    .parameter "clientif"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->open(BLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public prepareWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V
    .locals 6
    .parameter "connId"
    .parameter "charId"
    .parameter "offset"
    .parameter "len"
    .parameter "value"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->prepareWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V

    goto :goto_0
.end method

.method public readChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;B)V
    .locals 3
    .parameter "connId"
    .parameter "charId"
    .parameter "authReq"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->readChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;B)V

    goto :goto_0
.end method

.method public readCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;B)V
    .locals 3
    .parameter "connId"
    .parameter "charDescr"
    .parameter "authReq"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->readCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;B)V

    goto :goto_0
.end method

.method public registerApp(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleClientCallback;)V
    .locals 3
    .parameter "appID"
    .parameter "callback"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerApp(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleClientCallback;)V

    goto :goto_0
.end method

.method public registerForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 3
    .parameter "clientIf"
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    goto :goto_0
.end method

.method public registerServerProfileCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;)V
    .locals 3
    .parameter "appUuid"
    .parameter "callback"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerServerProfileCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;)V

    .line 465
    return-void
.end method

.method public registerServerServiceCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V
    .locals 3
    .parameter "serviceUuid"
    .parameter "appUuid"
    .parameter "callback"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerServerServiceCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V

    .line 454
    return-void
.end method

.method public registerServiceDataCallback(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Ljava/lang/String;Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;)V
    .locals 3
    .parameter "connId"
    .parameter "svcUuid"
    .parameter "bdaddr"
    .parameter "callback"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerServiceDataCallback(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Ljava/lang/String;Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;)V

    goto :goto_0
.end method

.method public searchService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "serviceUuid"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->searchService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public sendIndConfirm(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 3
    .parameter "connId"
    .parameter "charId"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->sendIndConfirm(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    goto :goto_0
.end method

.method public setEncryption(Ljava/lang/String;B)V
    .locals 3
    .parameter "address"
    .parameter "action"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->setEncryption(Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public setScanParameters(II)V
    .locals 3
    .parameter "scanInterval"
    .parameter "scanWindow"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->setScanParameters(II)V

    goto :goto_0
.end method

.method start()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "GattAppService"

    const-string v1, "Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "GattAppService"

    const-string v1, "Invoking mSvc.start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->init()V

    .line 101
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->start()V

    goto :goto_0
.end method

.method stop()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 108
    const-string v0, "GattAppService"

    const-string v1, "Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->stop()V

    .line 112
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->finish()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    .line 114
    const-string v0, "GattAppService"

    const-string v1, "Invoking mSvc.stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterApp(B)V
    .locals 3
    .parameter "clientIf"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->unregisterApp(B)V

    goto :goto_0
.end method

.method public unregisterServerProfileCallback(I)V
    .locals 3
    .parameter "serIf"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->unregisterServerProfileCallback(I)V

    .line 471
    return-void
.end method

.method public unregisterServerServiceCallback(I)V
    .locals 3
    .parameter "svcHandle"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->unregisterServerServiceCallback(I)V

    .line 460
    return-void
.end method

.method public writeCharDescrValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;IB[B)V
    .locals 6
    .parameter "connId"
    .parameter "charDescr"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "charDescrVal"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->writeCharDescrValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;IB[B)V

    goto :goto_0
.end method

.method public writeCharValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;IB[B)V
    .locals 6
    .parameter "connId"
    .parameter "charId"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "value"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->writeCharValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;IB[B)V

    goto :goto_0
.end method
