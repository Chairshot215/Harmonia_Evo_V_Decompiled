.class Lcom/htc/dlnamiddlelayer/DLNAService$3;
.super Lcom/htc/dlnainterface/IDLNAPluginService$Stub;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;


# direct methods
.method constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mImageThread:Lcom/htc/dlnamiddlelayer/ImageDownloadThread;

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->ALBUM_ART_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->getImage(ILjava/lang/String;Ljava/lang/String;ZLcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;)V

    .line 1063
    return-void
.end method

.method public browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    .locals 17
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "startIndex"
    .parameter "count"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v16

    .line 1068
    .local v16, mServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    const/4 v15, 0x1

    .local v15, isContainer:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/htc/dlnamiddlelayer/ContentDBController;->isContentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 1069
    .local v14, fileExist:Z
    const/4 v5, 0x1

    .line 1071
    .local v5, isBrowsingDown:Z
    if-eqz v14, :cond_0

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/htc/dlnamiddlelayer/ContentDBController;->isContainer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 1074
    :cond_0
    if-eqz v15, :cond_4

    .line 1076
    if-eqz v16, :cond_3

    .line 1078
    const/16 v2, 0x64

    move/from16 v0, p6

    if-le v0, v2, :cond_1

    const/16 p6, 0x64

    .line 1079
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_2

    .line 1081
    cmp-long v2, p7, p4

    if-ltz v2, :cond_2

    .line 1083
    const/4 v5, 0x0

    .line 1086
    :cond_2
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Browsed first index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", boundary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORT_FILTER_TYPES:[I

    aget v10, v4, p1

    move-object/from16 v4, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p7

    invoke-virtual/range {v2 .. v10}, Lcom/htc/dlnamiddlelayer/ContentDBController;->markContentsToUpdated(Ljava/lang/String;Ljava/lang/String;ZJJI)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v6

    move/from16 v7, p1

    move-object/from16 v8, v16

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move/from16 v12, p6

    move v13, v5

    invoke-virtual/range {v6 .. v13}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->browse(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JIZ)V

    .line 1105
    :goto_0
    return-void

    .line 1094
    :cond_3
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "Browsed server not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/16 v12, -0x1f5

    const/16 v2, -0x1f5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->BrowsingErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v13}, Lcom/htc/dlnamiddlelayer/DLNAService;->contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    .line 1101
    :cond_4
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "Browsed content is not a container"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/16 v12, -0x1f7

    const/16 v2, -0x1f7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->BrowsingErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v13}, Lcom/htc/dlnamiddlelayer/DLNAService;->contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0
.end method

.method public browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v2

    .line 1110
    .local v2, mServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    if-eqz v2, :cond_0

    .line 1112
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "BrowseCancel..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v0

    move v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->browseCancel(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;J)V

    .line 1121
    :goto_0
    return-void

    .line 1117
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Browse canceled server not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/16 v9, -0x1f5

    const/16 v0, -0x1f5

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->BrowsingErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v10}, Lcom/htc/dlnamiddlelayer/DLNAService;->contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0
.end method

.method public cancelContentThumbnail(II)V
    .locals 1
    .parameter "cookie"
    .parameter "groupID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->cancelContentThumbnail(II)V

    .line 1815
    return-void
.end method

.method public changeDuration(ILjava/lang/String;J)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "durationMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1128
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1130
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "changeDuration: No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :goto_0
    return-void

    .line 1134
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/htc/dlnamiddlelayer/MediaController;->setDuration(J)V

    goto :goto_0
.end method

.method public changeRendererOutput(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "cookie"
    .parameter "rendererIDOld"
    .parameter "rendererIDNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->getUPnPRenderer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v3

    .line 1141
    .local v3, aRendererOld:Lcom/awox/jUPnPCP/UPnPRenderer;
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->getUPnPRenderer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v5

    .line 1143
    .local v5, aRendererNew:Lcom/awox/jUPnPCP/UPnPRenderer;
    if-nez v5, :cond_1

    .line 1145
    const/16 v6, -0x12c

    .line 1146
    .local v6, resID:I
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v6, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 1156
    .end local v6           #resID:I
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->changeRendererOutput(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)Z

    .line 1154
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v0, p1, p3}, Lcom/htc/dlnamiddlelayer/DLNAService;->destroyOtherMediaController(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    .locals 15
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "firstIndex"
    .parameter "startIndex"
    .parameter "count"
    .parameter "browsedCount"

    .prologue
    .line 1968
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v4

    .line 1969
    .local v4, mServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    const/4 v14, 0x1

    .local v14, isContainer:Z
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/htc/dlnamiddlelayer/ContentDBController;->isContentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 1971
    .local v13, fileExist:Z
    if-eqz v13, :cond_0

    .line 1972
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/htc/dlnamiddlelayer/ContentDBController;->isContainer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 1974
    :cond_0
    if-eqz v14, :cond_3

    .line 1976
    if-eqz v4, :cond_2

    .line 1978
    const/16 v2, 0x64

    move/from16 v0, p8

    if-le v0, v2, :cond_1

    const/16 p8, 0x64

    .line 1979
    :cond_1
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[continueBrowseDown]:startIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", browsedCount:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->continueBrowseDown(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJII)V

    .line 1995
    :goto_0
    return-void

    .line 1984
    :cond_2
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "[continueBrowseDown]:Browsed server not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/16 v11, -0x1f5

    const/16 v2, -0x1f5

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->BrowsingErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p6

    invoke-virtual/range {v5 .. v12}, Lcom/htc/dlnamiddlelayer/DLNAService;->contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    .line 1991
    :cond_3
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "[continueBrowseDown]:Browsed content is not a container"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/16 v11, -0x1f7

    const/16 v2, -0x1f7

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->BrowsingErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p6

    invoke-virtual/range {v5 .. v12}, Lcom/htc/dlnamiddlelayer/DLNAService;->contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0
.end method

.method public createMediaController(ILjava/lang/String;ILjava/lang/String;)I
    .locals 16
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "filterType"
    .parameter "controllerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1508
    const/4 v13, 0x0

    .line 1510
    .local v13, bRet:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->getUPnPRenderer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v5

    .line 1512
    .local v5, renderer:Lcom/awox/jUPnPCP/UPnPRenderer;
    if-nez v5, :cond_0

    .line 1514
    const/16 v15, -0x12c

    .line 1515
    .local v15, resID:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v4, v4, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1, v15, v4}, Lcom/htc/dlnamiddlelayer/DLNAService;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 1516
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "creteMediaController: no renderer available"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 1585
    .end local v13           #bRet:I
    .end local v15           #resID:I
    .local v14, bRet:I
    :goto_0
    return v14

    .line 1523
    .end local v14           #bRet:I
    .restart local v13       #bRet:I
    :cond_0
    const/4 v12, 0x0

    .line 1525
    .local v12, bIsCreated:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v2

    .line 1527
    .local v2, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez p1, :cond_5

    .line 1529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    move/from16 v0, p3

    #setter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGalleryType:I
    invoke-static {v3, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2502(Lcom/htc/dlnamiddlelayer/DLNAService;I)I

    .line 1530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    move-object/from16 v0, p4

    #setter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGalleryTitle:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2602(Lcom/htc/dlnamiddlelayer/DLNAService;Ljava/lang/String;)Ljava/lang/String;

    .line 1537
    :cond_1
    :goto_1
    if-nez v2, :cond_6

    .line 1539
    new-instance v2, Lcom/htc/dlnamiddlelayer/MediaController;

    .end local v2           #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v8, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/dlnamiddlelayer/MediaController;-><init>(ILcom/htc/dlnamiddlelayer/PlaylistBase;Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/htc/dlnamiddlelayer/ServerControlPointModule;Lcom/htc/dlnamiddlelayer/RendererControlPointModule;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    .line 1541
    .restart local v2       #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v3

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->addMediaController(ILjava/lang/String;Lcom/htc/dlnamiddlelayer/MediaController;)Z

    move-result v12

    .line 1543
    if-eqz v12, :cond_2

    .line 1544
    const/4 v13, 0x1

    .line 1546
    :cond_2
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "Add to controller mgr"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :goto_2
    if-eqz v12, :cond_4

    .line 1571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/4 v4, 0x0

    move/from16 v0, p1

    #calls: Lcom/htc/dlnamiddlelayer/DLNAService;->setNotification(ILjava/lang/String;)V
    invoke-static {v3, v0, v4}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2800(Lcom/htc/dlnamiddlelayer/DLNAService;ILjava/lang/String;)V

    .line 1573
    if-nez p1, :cond_9

    .line 1575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://dlna/gallery_enable_dmc"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 1583
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->destroyOtherMediaController(ILjava/lang/String;)V

    :cond_4
    move v14, v13

    .line 1585
    .end local v13           #bRet:I
    .restart local v14       #bRet:I
    goto/16 :goto_0

    .line 1532
    .end local v14           #bRet:I
    .restart local v13       #bRet:I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 1534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    move-object/from16 v0, p4

    #setter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCMusicTitle:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2702(Lcom/htc/dlnamiddlelayer/DLNAService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1548
    :cond_6
    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    move-result-object v3

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->getUPnPRenderer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v9

    .line 1551
    .local v9, aRendererOld:Lcom/awox/jUPnPCP/UPnPRenderer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->getUPnPRenderer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v11

    .line 1553
    .local v11, aRendererNew:Lcom/awox/jUPnPCP/UPnPRenderer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v8

    move/from16 v7, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->changeRendererOutput(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)Z

    move-result v12

    .line 1555
    if-eqz v12, :cond_7

    .line 1556
    const/4 v13, 0x2

    .line 1558
    :cond_7
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller change Renderer: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1563
    .end local v9           #aRendererOld:Lcom/awox/jUPnPCP/UPnPRenderer;
    .end local v11           #aRendererNew:Lcom/awox/jUPnPCP/UPnPRenderer;
    :cond_8
    const/4 v12, 0x1

    .line 1564
    const/4 v13, 0x2

    .line 1566
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "Controller ready"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1578
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 1580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://dlna/music_enable_dmc"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public destroyMediaController(ILjava/lang/String;)V
    .locals 2
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->removeMediaController(I)V

    .line 1594
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #calls: Lcom/htc/dlnamiddlelayer/DLNAService;->cancelNotification(I)V
    invoke-static {v0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1100(Lcom/htc/dlnamiddlelayer/DLNAService;I)V

    .line 1595
    if-nez p1, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://dlna/gallery_disable_dmc"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1600
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://dlna/music_disable_dmc"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    goto :goto_0
.end method

.method public getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x1f5

    .line 1653
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v8

    .line 1654
    .local v8, aServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    if-nez v8, :cond_0

    .line 1656
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "getContentItemDetails : server not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->BrowsingErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/DLNAService;->contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 1664
    :goto_0
    return-void

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v0

    invoke-virtual {v0, p1, v8, p3}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getItemDetail(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "groupID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    sget-object v4, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->CONTENT_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->addContentThumbnail(ILjava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;I)V

    .line 1224
    return-void
.end method

.method public getControlItemInfo(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1678
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1680
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1682
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "DMC Item Info : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :goto_0
    return-void

    .line 1686
    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getControlItemInfo()V

    goto :goto_0
.end method

.method public getControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1231
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1233
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "getStatus : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v1, 0x0

    .line 1239
    :goto_0
    return-object v1

    .line 1237
    :cond_0
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "getControlStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getUIControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v1

    goto :goto_0
.end method

.method public getControllingRendererID(I)Ljava/lang/String;
    .locals 2
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1957
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1958
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_0

    .line 1960
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v1

    .line 1963
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1640
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1642
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1644
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "DMC Content Details : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const/4 v1, 0x0

    .line 1648
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getContentDeatils()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1694
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1696
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1698
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "DMC ContainerID : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const-string v1, ""

    .line 1702
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getCurrentContainerID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1708
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1710
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1712
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "DMC Content Details : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const-string v1, ""

    .line 1716
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getCurrentContentID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDMCCurrentLocalPlayId(ILjava/lang/String;)I
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1722
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1724
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1726
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "DMC Content Details : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const/4 v1, -0x1

    .line 1730
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getCurrentLocalPlayId()I

    move-result v1

    goto :goto_0
.end method

.method public getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1771
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1773
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1775
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "DMC Content Details : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    const/4 v1, -0x1

    .line 1779
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getCurrentLocalPlayIndex()I

    move-result v1

    goto :goto_0
.end method

.method public getDMCMuteControlSupport(ILjava/lang/String;)Z
    .locals 1
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1821
    const/4 v0, 0x1

    return v0
.end method

.method public getDMCPhotoSlideshowState(ILjava/lang/String;)I
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1801
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1803
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1805
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "setDMCPhotoSlide : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    const/4 v1, -0x1

    .line 1809
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getPhotoSlideshowState()I

    move-result v1

    goto :goto_0
.end method

.method public getDMCVolumeControlSupport(ILjava/lang/String;)Z
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1827
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1829
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1831
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "getDMCVolumeControlSupport : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const/4 v1, 0x0

    .line 1835
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getVolumeControlSupport()Z

    move-result v1

    goto :goto_0
.end method

.method public getLocalContentItemDetails(III)V
    .locals 4
    .parameter "cookie"
    .parameter "id"
    .parameter "filterCapability"

    .prologue
    .line 1942
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalContentItemDetails: cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",fitler:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {p1, p2, p3, v1}, Lcom/htc/dlnamiddlelayer/LocalListPageDetails;->getItemDetails(IIILcom/htc/dlnamiddlelayer/DLNAServiceObject;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 1946
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    if-eqz v0, :cond_0

    .line 1948
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getContentDetailsMsg(ILjava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V

    .line 1951
    :cond_0
    return-void
.end method

.method public getPlayPosition(ILjava/lang/String;)J
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1245
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1247
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1249
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "getPlayPos : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const-wide/16 v1, -0x1

    .line 1253
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getPlayPosition()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getPlaylistPlayIndex(ILjava/lang/String;)J
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1261
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1263
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "getIndex : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const-wide/16 v1, -0x1

    .line 1267
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getPlaylistPlayIndex()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getPlaylistTotalCount(ILjava/lang/String;)J
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1276
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1278
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "getTotalCount : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-wide/16 v1, -0x1

    .line 1282
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getPlaylistTotalCount()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getRendererList(II)V
    .locals 2
    .parameter "cookie"
    .parameter "filterCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService;->rendererUpdateMsg(I)V

    .line 1290
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->getRenderersListSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService$3;->reSearchDevices(I)V

    .line 1293
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "getRendererList: send MSEARCH ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_0
    return-void
.end method

.method public getRendererThumbnail(ILjava/lang/String;)V
    .locals 1
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getRendererThumbItem(ILjava/lang/String;)V

    .line 1309
    return-void
.end method

.method public getServerList(I)V
    .locals 1
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService;->serverUpdateMsg(I)V

    .line 1299
    return-void
.end method

.method public getServerThumbnail(ILjava/lang/String;)V
    .locals 1
    .parameter "cookie"
    .parameter "serverID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getServerThumbItem(ILjava/lang/String;)V

    .line 1304
    return-void
.end method

.method public imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mImageThread:Lcom/htc/dlnamiddlelayer/ImageDownloadThread;

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->CONTENT_IMAGE_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->getImage(ILjava/lang/String;Ljava/lang/String;ZLcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;)V

    .line 1314
    return-void
.end method

.method public isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->isBrowsingCmdExist(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockPlayingContents(ILjava/lang/String;Ljava/lang/String;JZI)V
    .locals 8
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "isBrowsingDown"
    .parameter "filterCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1919
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockPlayingContents: cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isBrowsingDown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v7

    new-instance v0, Lcom/htc/dlnamiddlelayer/LockPlayItems;

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LockPlayItems;-><init>(Ljava/lang/String;Ljava/lang/String;JZI)V

    invoke-virtual {v7, p1, v0}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->addLockPlayItems(ILcom/htc/dlnamiddlelayer/LockPlayItems;)Z

    .line 1925
    :cond_0
    return-void
.end method

.method public newPlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z
    .locals 7
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "playlistInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1161
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #setter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbPushLocalVideo:Z
    invoke-static {v1, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2302(Lcom/htc/dlnamiddlelayer/DLNAService;Z)Z

    .line 1163
    if-nez p3, :cond_0

    .line 1165
    const-string v1, "DLNAMiddlelayer"

    const-string v3, "newPlaylist: No playlistInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :goto_0
    return v0

    .line 1169
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v1

    iget-object v3, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v2

    .line 1170
    .local v2, aServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    if-nez v2, :cond_1

    .line 1172
    const/16 v6, -0x12d

    .line 1173
    .local v6, resID:I
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v6, v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1177
    .end local v6           #resID:I
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v4

    .line 1179
    .local v4, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v4, :cond_2

    .line 1181
    const-string v1, "DLNAMiddlelayer"

    const-string v3, "newPlaylist : No MediaController"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1187
    :cond_2
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newPlaylist : contentID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", containerID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v5, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/awox/jUPnPCP/UPnPContentServer;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    invoke-virtual {v4, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->setPlaylist(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V

    .line 1191
    iget-wide v0, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    invoke-virtual {v4, v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setDuration(J)V

    .line 1193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    .locals 8
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "index"
    .parameter "idList"
    .parameter "filterCapability"
    .parameter "durationMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1200
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #setter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbPushLocalVideo:Z
    invoke-static {v1, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2302(Lcom/htc/dlnamiddlelayer/DLNAService;Z)Z

    .line 1202
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v6

    .line 1204
    .local v6, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v6, :cond_0

    .line 1206
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "newPushPlaylist : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :goto_0
    return v0

    .line 1210
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newPushPlaylist: index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mPushModule:Lcom/htc/dlnamiddlelayer/PushControllerCPModule;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2400(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/PushControllerCPModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PushControllerCPModule;->getPushController()Lcom/awox/jUPnPCP/PushControllerModule;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v7, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/awox/jUPnPCP/PushControllerModule;I[IILcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    invoke-virtual {v6, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->setPlaylist(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V

    .line 1214
    invoke-virtual {v6, p6, p7}, Lcom/htc/dlnamiddlelayer/MediaController;->setDuration(J)V

    .line 1216
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1320
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1322
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "pause : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :goto_0
    return-void

    .line 1326
    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->pause()V

    goto :goto_0
.end method

.method public play(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbPushLocalVideo:Z
    invoke-static {v0, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2302(Lcom/htc/dlnamiddlelayer/DLNAService;Z)Z

    .line 1335
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v2

    .line 1336
    .local v2, aServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    if-nez v2, :cond_0

    .line 1338
    const/16 v7, -0x12d

    .line 1339
    .local v7, resID:I
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v7, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 1356
    .end local v7           #resID:I
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v5

    .line 1345
    .local v5, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v5, :cond_1

    .line 1347
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "play : No MediaController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1351
    :cond_1
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAService : remote video play : contentID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", containerID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v6, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    invoke-virtual {v5, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->setPlaylist(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V

    .line 1354
    const-wide/16 v0, 0x0

    invoke-virtual {v5, v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setDuration(J)V

    .line 1355
    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    goto :goto_0
.end method

.method public playPush(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/4 v1, 0x1

    #setter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbPushLocalVideo:Z
    invoke-static {v0, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2302(Lcom/htc/dlnamiddlelayer/DLNAService;Z)Z

    .line 1363
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v4

    .line 1365
    .local v4, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v4, :cond_0

    .line 1367
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "playPush : No MediaController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :goto_0
    return-void

    .line 1371
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAService : local video play : filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mPushModule:Lcom/htc/dlnamiddlelayer/PushControllerCPModule;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2400(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/PushControllerCPModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/PushControllerCPModule;->getPushController()Lcom/awox/jUPnPCP/PushControllerModule;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v5, v3, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/awox/jUPnPCP/PushControllerModule;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    invoke-virtual {v4, v0}, Lcom/htc/dlnamiddlelayer/MediaController;->setPlaylist(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V

    .line 1374
    const-wide/16 v0, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setDuration(J)V

    .line 1375
    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    goto :goto_0
.end method

.method public reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "newIndex"
    .parameter "idList"

    .prologue
    .line 1929
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1931
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1933
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "reArrangePushPlaylist : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const/4 v1, 0x0

    .line 1937
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p4}, Lcom/htc/dlnamiddlelayer/MediaController;->reArrangePlaylist([I)Z

    move-result v1

    goto :goto_0
.end method

.method public reSearchDevices(I)V
    .locals 1
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2900(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->reSearchDevices()V

    .line 1673
    return-void
.end method

.method public registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    .locals 3
    .parameter "cookie"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1040
    if-eqz p2, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1608(Lcom/htc/dlnamiddlelayer/DLNAService;)I

    .line 1045
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2100(Lcom/htc/dlnamiddlelayer/DLNAService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": registered , count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRegisterCount:I
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1600(Lcom/htc/dlnamiddlelayer/DLNAService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_1
    return-void
.end method

.method public resume(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1385
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1387
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "resume : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :goto_0
    return-void

    .line 1391
    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    goto :goto_0
.end method

.method public serverSubscribed(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1744
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v0

    .line 1745
    .local v0, aServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    if-nez v0, :cond_0

    .line 1747
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "serverSubscribed : server not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :goto_0
    return-void

    .line 1751
    :cond_0
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPContentServer;->SubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceSubscribe;

    goto :goto_0
.end method

.method public serverUnsubscribed(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1757
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v0

    .line 1758
    .local v0, aServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    if-nez v0, :cond_0

    .line 1760
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "serverUnsubscribed : server not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :goto_0
    return-void

    .line 1764
    :cond_0
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPContentServer;->UnSubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;

    goto :goto_0
.end method

.method public setBrowseThumbSize(ILjava/lang/String;)Z
    .locals 5
    .parameter "cookie"
    .parameter "sizeSequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1841
    const/4 v0, 0x0

    .line 1843
    .local v0, bRet:Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1845
    :cond_0
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "setBrowseThumbSize: failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1862
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 1849
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrowseThumbSize: cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sequence:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    if-nez p1, :cond_3

    .line 1853
    sput-object p2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Gallery_Browse_ThumbSize:Ljava/lang/String;

    .line 1854
    const/4 v0, 0x1

    :cond_2
    :goto_1
    move v1, v0

    .line 1862
    .restart local v1       #bRet:I
    goto :goto_0

    .line 1856
    .end local v1           #bRet:I
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 1858
    sput-object p2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Music_Browse_ThumbSize:Ljava/lang/String;

    .line 1859
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setControllingTimeout(J)V
    .locals 3
    .parameter "timeoutMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #setter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceCloseTimeoutMillis:J
    invoke-static {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$3002(Lcom/htc/dlnamiddlelayer/DLNAService;J)J

    .line 1739
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceCloseTimeoutMillis:J
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$3000(Lcom/htc/dlnamiddlelayer/DLNAService;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->writeServiceTimeoutValue(J)V

    .line 1740
    return-void
.end method

.method public setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1787
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1789
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "setDMCPhotoSlide : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const/4 v1, 0x0

    .line 1795
    :goto_0
    return v1

    .line 1793
    :cond_0
    invoke-virtual {v0, p3}, Lcom/htc/dlnamiddlelayer/MediaController;->setPhotoSlideshowState(I)V

    .line 1795
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setDMCThumbSize(ILjava/lang/String;)Z
    .locals 5
    .parameter "cookie"
    .parameter "sizeSequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1890
    const/4 v0, 0x0

    .line 1892
    .local v0, bRet:Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1894
    :cond_0
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "setBrowseThumbSize: failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1911
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 1898
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDMCThumbSize: cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sequence:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    if-nez p1, :cond_3

    .line 1902
    sput-object p2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Gallery_DMC_ThumbSize:Ljava/lang/String;

    .line 1903
    const/4 v0, 0x1

    :cond_2
    :goto_1
    move v1, v0

    .line 1911
    .restart local v1       #bRet:I
    goto :goto_0

    .line 1905
    .end local v1           #bRet:I
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 1907
    sput-object p2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Music_DMC_AlbumArtSize:Ljava/lang/String;

    .line 1908
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setDMPAlbumArtSize(ILjava/lang/String;)Z
    .locals 5
    .parameter "cookie"
    .parameter "sizeSequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1868
    const/4 v0, 0x0

    .line 1870
    .local v0, bRet:Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1872
    :cond_0
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "setBrowseThumbSize: failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1884
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 1876
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDMPAlbumArtSize: cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sequence:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 1880
    sput-object p2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Music_DMP_AlbumArtSize:Ljava/lang/String;

    .line 1881
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 1884
    .restart local v1       #bRet:I
    goto :goto_0
.end method

.method public setMute(ILjava/lang/String;Z)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "bMute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1399
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1401
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "setMute : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :goto_0
    return-void

    .line 1405
    :cond_0
    invoke-virtual {v0, p3}, Lcom/htc/dlnamiddlelayer/MediaController;->setMute(Z)V

    goto :goto_0
.end method

.method public setRepeat(ILjava/lang/String;I)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "repeatMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1411
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1413
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1415
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "setRepeat : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :goto_0
    return-void

    .line 1419
    :cond_0
    invoke-virtual {v0, p3}, Lcom/htc/dlnamiddlelayer/MediaController;->setRepeatState(I)V

    goto :goto_0
.end method

.method public setSeek(ILjava/lang/String;J)V
    .locals 4
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1425
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1427
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1429
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "setSeek : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :goto_0
    return-void

    .line 1433
    :cond_0
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSeek: seconds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    long-to-int v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setSeek(I)V

    goto :goto_0
.end method

.method public setShuffle(ILjava/lang/String;Z)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "bShuffle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1442
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1444
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "setShuffle : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :goto_0
    return-void

    .line 1448
    :cond_0
    invoke-virtual {v0, p3}, Lcom/htc/dlnamiddlelayer/MediaController;->setShuffle(Z)V

    goto :goto_0
.end method

.method public setVolume(ILjava/lang/String;I)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1455
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1457
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "setVolume : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :goto_0
    return-void

    .line 1461
    :cond_0
    invoke-virtual {v0, p3}, Lcom/htc/dlnamiddlelayer/MediaController;->setVolume(I)V

    goto :goto_0
.end method

.method public startPlaylist(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1466
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1468
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1470
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "startPlaylist : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :goto_0
    return-void

    .line 1474
    :cond_0
    invoke-virtual {v0, p3}, Lcom/htc/dlnamiddlelayer/MediaController;->play(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPushPlaylist(ILjava/lang/String;J)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1480
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1482
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1484
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "startPushPlaylist : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :goto_0
    return-void

    .line 1488
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/htc/dlnamiddlelayer/MediaController;->play(J)V

    goto :goto_0
.end method

.method public stop(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1496
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1498
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "stop : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :goto_0
    return-void

    .line 1502
    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->stop()V

    goto :goto_0
.end method

.method public switchPlaylistNextItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1611
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1613
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1615
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "switch Next : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :goto_0
    return-void

    .line 1619
    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->switchPlaylistNextItem()Z

    goto :goto_0
.end method

.method public switchPlaylistPrevItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1625
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1627
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1629
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "switch Prev : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :goto_0
    return-void

    .line 1633
    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->switchPlaylistPrevItem()V

    goto :goto_0
.end method

.method public unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    .locals 3
    .parameter "cookie"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1052
    if-eqz p2, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1610(Lcom/htc/dlnamiddlelayer/DLNAService;)I

    .line 1056
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2100(Lcom/htc/dlnamiddlelayer/DLNAService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unregistered, count ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$3;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRegisterCount:I
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1600(Lcom/htc/dlnamiddlelayer/DLNAService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_1
    return-void
.end method
