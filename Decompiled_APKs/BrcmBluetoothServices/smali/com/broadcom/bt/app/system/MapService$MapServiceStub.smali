.class final Lcom/broadcom/bt/app/system/MapService$MapServiceStub;
.super Lcom/broadcom/bt/service/map/IMapService$Stub;
.source "MapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/MapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MapServiceStub"
.end annotation


# instance fields
.field private mSvc:Lcom/broadcom/bt/service/map/MapService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/IMapService$Stub;-><init>()V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 116
    const-string v1, "bluetooth_map"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapEventLoop;

    .line 119
    .local v0, mEventLoop:Lcom/broadcom/bt/service/map/MapEventLoop;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/MapEventLoop;->getMapService()Lcom/broadcom/bt/service/map/MapService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call disableProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/MapService;->disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call enableProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/MapService;->enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enumRegisteredProviders()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 144
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call enumRegisteredProviders"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/MapService;->enumRegisteredProviders()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 154
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call folderListingResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/MapService;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V

    goto :goto_0
.end method

.method public getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_file_path"
    .parameter "virtual_folder_path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 163
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call getMsgResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"
    .parameter "arg7"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 174
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call msgListingResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/MapService;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V

    goto :goto_0
.end method

.method public msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 183
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call msgPushResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/MapService;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V

    goto :goto_0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 193
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call notifyClient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 202
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call notifyRegistrationResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/map/MapService;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    .locals 10
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"
    .parameter "arg7"
    .parameter "arg8"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call registerDSProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/broadcom/bt/service/map/MapService;->registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V

    goto :goto_0
.end method

.method public setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 222
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call setMsgStatusResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "provider_id"
    .parameter "provider_ds_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 231
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call startMSEInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "provider_id"
    .parameter "provider_ds_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 240
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call stopMSEInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 249
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call unregisterDSProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
