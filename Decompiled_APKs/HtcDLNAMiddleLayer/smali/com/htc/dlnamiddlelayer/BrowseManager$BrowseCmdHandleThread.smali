.class Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;
.super Ljava/lang/Thread;
.source "BrowseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/BrowseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowseCmdHandleThread"
.end annotation


# instance fields
.field private cmdUniqueID:J

.field private mTheCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

.field private mTheEntryInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/awox/jUPnPCP/CDSEntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTheResourceInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/awox/jUPnPCP/CDSResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/BrowseManager;JLcom/awox/jUPnPCP/CmdBrowse2;)V
    .locals 5
    .parameter
    .parameter "uniqueID"
    .parameter "theCommand"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 217
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->cmdUniqueID:J

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    .line 224
    iput-wide p2, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->cmdUniqueID:J

    .line 225
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    int-to-long v1, v0

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMResultCount()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewEntryInfo(J)Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewResourceInfo(J)Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 43

    .prologue
    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mbStopBrowseCmdHandleThread:Z
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$000(Lcom/htc/dlnamiddlelayer/BrowseManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const/16 v39, 0x0

    .line 351
    .local v39, theCmd:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    const-wide/16 v33, -0x1

    .line 352
    .local v33, nLastIndex:J
    const/16 v28, 0x0

    .line 354
    .local v28, isBrowseComplete:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    move-result-object v4

    monitor-enter v4

    .line 356
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->cmdUniqueID:J

    invoke-virtual {v3, v13, v14}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->getBrowseCmdItem(J)Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    move-result-object v39

    .line 357
    if-nez v39, :cond_2

    .line 359
    const-string v3, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->cmdUniqueID:J

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "has been removed"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    monitor-exit v4

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BrowseResult : TotalCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMTotalMatches()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMResultCount()J

    move-result-wide v3

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-eqz v3, :cond_2c

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$200(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v3

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/htc/dlnamiddlelayer/ContentDBController;->containerAccessTableUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/16 v41, 0x0

    .line 371
    .local v41, thumbSizeRequestSeq:Ljava/lang/String;
    const/16 v24, 0x0

    .line 373
    .local v24, albumArtSizeRequestSeq:Ljava/lang/String;
    move-object/from16 v0, v39

    iget v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    if-nez v3, :cond_c

    .line 375
    sget-object v41, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Gallery_Browse_ThumbSize:Ljava/lang/String;

    .line 383
    :cond_3
    :goto_1
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThumbSeq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; AlbumArtSeq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, v39

    iget-boolean v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isBrowsingDown:Z

    if-eqz v3, :cond_12

    .line 388
    const/16 v27, 0x0

    .local v27, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_b

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mbStopBrowseCmdHandleThread:Z
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$000(Lcom/htc/dlnamiddlelayer/BrowseManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, theTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemID:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v6

    .line 394
    .local v6, theId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Creator:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, theArtist:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v29

    .line 396
    .local v29, isContainer:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemClassName:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v40

    .line 397
    .local v40, theType:Ljava/lang/String;
    const/4 v9, 0x0

    .line 398
    .local v9, theUrl:Ljava/lang/String;
    const/4 v8, 0x0

    .line 400
    .local v8, fileType:I
    if-nez v29, :cond_10

    .line 402
    const-string v3, "object.item.audioItem"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 403
    or-int/lit8 v8, v8, 0x1

    .line 404
    :cond_4
    const-string v3, "object.item.imageItem"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 405
    or-int/lit8 v8, v8, 0x2

    .line 406
    :cond_5
    const-string v3, "object.item.videoItem"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 407
    or-int/lit8 v8, v8, 0x4

    .line 409
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-string v4, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_MED,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_TN,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM_ICO,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG_ICO,http-get:*:image/png:DLNA.ORG_PN=PNG_TN,http-get:*:image/png:DLNA.ORG_PN=PNG_SM_ICO,http-get:*:image/png:DLNA.ORG_PN=PNG_LRG_ICO,http-get:*:image/png:DLNA.ORG_PN=PNG_LRG,http-get:*:image/gif:DLNA.ORG_PN=GIF_LRG,http-get:*:audio/3gpp:DLNA.ORG_PN=AAC_ISO_320;DLNA.ORG_OP=01,http-get:*:audio/mp4:DLNA.ORG_PN=AAC_ISO_320;DLNA.ORG_OP=01,http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMABASE;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMAFULL;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMAPRO;DLNA.ORG_OP=01,http-get:*:audio/3gpp:DLNA.ORG_PN=AMR_3GPP;DLNA.ORG_OP=01,http-get:*:audio/mp4:DLNA.ORG_PN=AMR_3GPP;DLNA.ORG_OP=01,http-get:*:audio/vnd.dlna.adts:DLNA.ORG_PN=AAC_ADTS;DLNA.ORG_OP=01,http-get:*:audio/3gpp:DLNA.ORG_PN=AAC_ISO;DLNA.ORG_OP=01,http-get:*:audio/mp4:DLNA.ORG_PN=AAC_ISO;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC_520;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_SP_VGA_HEAAC_res;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC_520;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L2_CIF30_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L3L_SD_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L3_SD_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_MP_SD_HEAAC_L2;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L3L_SD_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF30_HEAAC_L2;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L12_CIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L1B_QCIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_SP_L2_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L5_SO_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L4_SO_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_H263_MP4 P0_L10_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L4_SO_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L5_SO_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_SP_L2_AMR;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=AVC_3GPP_BL_QCIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=AVC_3GPP_BL_QCIF15_AAC;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=AVC_3GPP_BL_QCIF15_AMR;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=MPEG4_P2_3GPP_SP_L0B_AAC;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=MPEG4_P2_3GPP_SP_L0B_AMR;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=MPEG4_H263_3GPP_P3_L10_AMR;DLNA.ORG_OP=01,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVSPLL_BASE;DLNA.ORG_OP=01"

    const-string v5, "http;rtp;rtsp;udp"

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kawPreferResource_Default:I

    invoke-virtual {v3, v4, v5, v13}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetBestResourceIndexJava(Ljava/lang/String;Ljava/lang/String;I)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    move-result-object v26

    .line 412
    .local v26, bestIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMfMatchProtocolInfo()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 414
    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v37

    .line 415
    .local v37, selectedIndex:I
    and-int/lit8 v3, v8, 0x4

    if-eqz v3, :cond_7

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->selectBestIndexVideo(Lcom/awox/jUPnPCP/CDSResourceInfo;I)I

    move-result v37

    .line 423
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    move/from16 v0, v37

    int-to-long v4, v0

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v13, v13

    invoke-virtual {v3, v4, v5, v13, v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v9

    .line 469
    .end local v26           #bestIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    .end local v37           #selectedIndex:I
    :goto_3
    const-string v11, ""

    .line 470
    .local v11, theThumbnailURI:Ljava/lang/String;
    const-string v12, ""

    .line 473
    .local v12, theAlbumArtURI:Ljava/lang/String;
    if-eqz v41, :cond_8

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v42

    .line 476
    .local v42, thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    if-eqz v42, :cond_8

    .line 478
    invoke-virtual/range {v42 .. v42}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v11

    .line 484
    .end local v42           #thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    :cond_8
    if-eqz v24, :cond_9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v42

    .line 487
    .restart local v42       #thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    if-eqz v42, :cond_9

    .line 489
    invoke-virtual/range {v42 .. v42}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v12

    .line 494
    .end local v42           #thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    :cond_9
    if-nez v29, :cond_a

    if-eqz v9, :cond_11

    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORT_FILTER_TYPES:[I

    move-object/from16 v0, v39

    iget v4, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    aget v3, v3, v4

    and-int/2addr v3, v8

    if-eqz v3, :cond_11

    .line 497
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$200(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v3

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    move/from16 v0, v27

    int-to-long v15, v0

    add-long/2addr v13, v15

    invoke-virtual/range {v3 .. v14}, Lcom/htc/dlnamiddlelayer/ContentDBController;->insertBrowsedContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 501
    move-object/from16 v0, v39

    iget-wide v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    move/from16 v0, v27

    int-to-long v13, v0

    add-long v33, v3, v13

    .line 504
    move-object/from16 v0, v39

    iget v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v39

    iput v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    const/16 v4, 0xc7

    if-lt v3, v4, :cond_11

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v39

    iget v4, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    if-ge v3, v4, :cond_b

    .line 509
    const/16 v28, 0x1

    .line 637
    .end local v6           #theId:Ljava/lang/String;
    .end local v7           #theTitle:Ljava/lang/String;
    .end local v8           #fileType:I
    .end local v9           #theUrl:Ljava/lang/String;
    .end local v10           #theArtist:Ljava/lang/String;
    .end local v11           #theThumbnailURI:Ljava/lang/String;
    .end local v12           #theAlbumArtURI:Ljava/lang/String;
    .end local v29           #isContainer:Z
    .end local v40           #theType:Ljava/lang/String;
    :cond_b
    :goto_4
    const/16 v25, 0x0

    .line 638
    .local v25, bNotifyBrowsingResult:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    move-result-object v4

    monitor-enter v4

    .line 640
    const-wide/16 v13, -0x1

    cmp-long v3, v33, v13

    if-eqz v3, :cond_21

    .line 642
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->cmdUniqueID:J

    invoke-virtual {v3, v13, v14}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->getBrowseCmdItem(J)Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    move-result-object v38

    .line 643
    .local v38, theBrowseCmd:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    if-nez v38, :cond_20

    .line 645
    monitor-exit v4

    goto/16 :goto_0

    .line 713
    .end local v38           #theBrowseCmd:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 377
    .end local v25           #bNotifyBrowsingResult:Z
    .end local v27           #i:I
    :cond_c
    move-object/from16 v0, v39

    iget v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 379
    sget-object v41, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Music_Browse_ThumbSize:Ljava/lang/String;

    .line 380
    sget-object v24, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Music_DMP_AlbumArtSize:Ljava/lang/String;

    goto/16 :goto_1

    .line 441
    .restart local v6       #theId:Ljava/lang/String;
    .restart local v7       #theTitle:Ljava/lang/String;
    .restart local v8       #fileType:I
    .restart local v9       #theUrl:Ljava/lang/String;
    .restart local v10       #theArtist:Ljava/lang/String;
    .restart local v26       #bestIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    .restart local v27       #i:I
    .restart local v29       #isContainer:Z
    .restart local v40       #theType:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetMimeTypeForResourceIndex(J)Ljava/lang/String;

    move-result-object v30

    .line 446
    .local v30, mime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    move-object/from16 v0, v30

    invoke-virtual {v3, v8, v0}, Lcom/htc/dlnamiddlelayer/BrowseManager;->checkIfSupportedMimeType(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v4

    int-to-long v4, v4

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v13, v13

    invoke-virtual {v3, v4, v5, v13, v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 455
    :cond_e
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported MIME type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 460
    .end local v30           #mime:Ljava/lang/String;
    :cond_f
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "Best resource index return -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 466
    .end local v26           #bestIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-wide/16 v4, 0x0

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v13, v13

    invoke-virtual {v3, v4, v5, v13, v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 388
    .restart local v11       #theThumbnailURI:Ljava/lang/String;
    .restart local v12       #theAlbumArtURI:Ljava/lang/String;
    :cond_11
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 521
    .end local v6           #theId:Ljava/lang/String;
    .end local v7           #theTitle:Ljava/lang/String;
    .end local v8           #fileType:I
    .end local v9           #theUrl:Ljava/lang/String;
    .end local v10           #theArtist:Ljava/lang/String;
    .end local v11           #theThumbnailURI:Ljava/lang/String;
    .end local v12           #theAlbumArtURI:Ljava/lang/String;
    .end local v27           #i:I
    .end local v29           #isContainer:Z
    .end local v40           #theType:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v27, v3, -0x1

    .restart local v27       #i:I
    :goto_5
    if-ltz v27, :cond_b

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mbStopBrowseCmdHandleThread:Z
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$000(Lcom/htc/dlnamiddlelayer/BrowseManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v7

    .line 526
    .restart local v7       #theTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemID:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v6

    .line 527
    .restart local v6       #theId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Creator:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v10

    .line 528
    .restart local v10       #theArtist:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v29

    .line 529
    .restart local v29       #isContainer:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemClassName:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v40

    .line 530
    .restart local v40       #theType:Ljava/lang/String;
    const/4 v9, 0x0

    .line 531
    .restart local v9       #theUrl:Ljava/lang/String;
    const/4 v8, 0x0

    .line 533
    .restart local v8       #fileType:I
    if-nez v29, :cond_1e

    .line 535
    const-string v3, "object.item.audioItem"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 536
    or-int/lit8 v8, v8, 0x1

    .line 537
    :cond_13
    const-string v3, "object.item.imageItem"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 538
    or-int/lit8 v8, v8, 0x2

    .line 539
    :cond_14
    const-string v3, "object.item.videoItem"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 540
    or-int/lit8 v8, v8, 0x4

    .line 542
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-string v4, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_MED,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_TN,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM_ICO,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG_ICO,http-get:*:image/png:DLNA.ORG_PN=PNG_TN,http-get:*:image/png:DLNA.ORG_PN=PNG_SM_ICO,http-get:*:image/png:DLNA.ORG_PN=PNG_LRG_ICO,http-get:*:image/png:DLNA.ORG_PN=PNG_LRG,http-get:*:image/gif:DLNA.ORG_PN=GIF_LRG,http-get:*:audio/3gpp:DLNA.ORG_PN=AAC_ISO_320;DLNA.ORG_OP=01,http-get:*:audio/mp4:DLNA.ORG_PN=AAC_ISO_320;DLNA.ORG_OP=01,http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMABASE;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMAFULL;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMAPRO;DLNA.ORG_OP=01,http-get:*:audio/3gpp:DLNA.ORG_PN=AMR_3GPP;DLNA.ORG_OP=01,http-get:*:audio/mp4:DLNA.ORG_PN=AMR_3GPP;DLNA.ORG_OP=01,http-get:*:audio/vnd.dlna.adts:DLNA.ORG_PN=AAC_ADTS;DLNA.ORG_OP=01,http-get:*:audio/3gpp:DLNA.ORG_PN=AAC_ISO;DLNA.ORG_OP=01,http-get:*:audio/mp4:DLNA.ORG_PN=AAC_ISO;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC_520;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_SP_VGA_HEAAC_res;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC_520;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L2_CIF30_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L3L_SD_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L3_SD_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_MP_SD_HEAAC_L2;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L3L_SD_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF30_HEAAC_L2;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L12_CIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L1B_QCIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_SP_L2_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L5_SO_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L4_SO_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_H263_MP4 P0_L10_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L4_SO_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L5_SO_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_SP_L2_AMR;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=AVC_3GPP_BL_QCIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=AVC_3GPP_BL_QCIF15_AAC;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=AVC_3GPP_BL_QCIF15_AMR;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=MPEG4_P2_3GPP_SP_L0B_AAC;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=MPEG4_P2_3GPP_SP_L0B_AMR;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=MPEG4_H263_3GPP_P3_L10_AMR;DLNA.ORG_OP=01,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVSPLL_BASE;DLNA.ORG_OP=01"

    const-string v5, "http;rtp;rtsp;udp"

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kawPreferResource_Default:I

    invoke-virtual {v3, v4, v5, v13}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetBestResourceIndexJava(Ljava/lang/String;Ljava/lang/String;I)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    move-result-object v26

    .line 546
    .restart local v26       #bestIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMfMatchProtocolInfo()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 548
    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v37

    .line 549
    .restart local v37       #selectedIndex:I
    and-int/lit8 v3, v8, 0x4

    if-eqz v3, :cond_16

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->selectBestIndexVideo(Lcom/awox/jUPnPCP/CDSResourceInfo;I)I

    move-result v37

    .line 555
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    move/from16 v0, v37

    int-to-long v4, v0

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v13, v13

    invoke-virtual {v3, v4, v5, v13, v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v9

    .line 588
    .end local v26           #bestIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    .end local v37           #selectedIndex:I
    :goto_6
    const-string v11, ""

    .line 589
    .restart local v11       #theThumbnailURI:Ljava/lang/String;
    const-string v12, ""

    .line 592
    .restart local v12       #theAlbumArtURI:Ljava/lang/String;
    if-eqz v41, :cond_17

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_17

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v42

    .line 595
    .restart local v42       #thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    if-eqz v42, :cond_17

    .line 597
    invoke-virtual/range {v42 .. v42}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v11

    .line 603
    .end local v42           #thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    :cond_17
    if-eqz v24, :cond_18

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v42

    .line 606
    .restart local v42       #thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    if-eqz v42, :cond_18

    .line 608
    invoke-virtual/range {v42 .. v42}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v12

    .line 613
    .end local v42           #thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    :cond_18
    if-nez v29, :cond_19

    if-eqz v9, :cond_1f

    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORT_FILTER_TYPES:[I

    move-object/from16 v0, v39

    iget v4, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    aget v3, v3, v4

    and-int/2addr v3, v8

    if-eqz v3, :cond_1f

    .line 616
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$200(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v3

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    move/from16 v0, v27

    int-to-long v15, v0

    add-long/2addr v13, v15

    invoke-virtual/range {v3 .. v14}, Lcom/htc/dlnamiddlelayer/ContentDBController;->insertBrowsedContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 620
    move-object/from16 v0, v39

    iget-wide v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    move/from16 v0, v27

    int-to-long v13, v0

    add-long v33, v3, v13

    .line 623
    move-object/from16 v0, v39

    iget v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v39

    iput v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    const/16 v4, 0xc7

    if-lt v3, v4, :cond_1f

    .line 626
    if-nez v27, :cond_b

    move-object/from16 v0, v39

    iget-wide v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-eqz v3, :cond_1a

    const-wide/16 v3, 0x0

    cmp-long v3, v33, v3

    if-nez v3, :cond_b

    .line 628
    :cond_1a
    const/16 v28, 0x1

    goto/16 :goto_4

    .line 560
    .end local v11           #theThumbnailURI:Ljava/lang/String;
    .end local v12           #theAlbumArtURI:Ljava/lang/String;
    .restart local v26       #bestIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    :cond_1b
    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetMimeTypeForResourceIndex(J)Ljava/lang/String;

    move-result-object v30

    .line 565
    .restart local v30       #mime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    move-object/from16 v0, v30

    invoke-virtual {v3, v8, v0}, Lcom/htc/dlnamiddlelayer/BrowseManager;->checkIfSupportedMimeType(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v4

    int-to-long v4, v4

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v13, v13

    invoke-virtual {v3, v4, v5, v13, v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 574
    :cond_1c
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported MIME type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 579
    .end local v30           #mime:Ljava/lang/String;
    :cond_1d
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "Best resource index return -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 585
    .end local v26           #bestIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheResourceInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-wide/16 v4, 0x0

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v13, v13

    invoke-virtual {v3, v4, v5, v13, v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 521
    .restart local v11       #theThumbnailURI:Ljava/lang/String;
    .restart local v12       #theAlbumArtURI:Ljava/lang/String;
    :cond_1f
    add-int/lit8 v27, v27, -0x1

    goto/16 :goto_5

    .line 648
    .end local v6           #theId:Ljava/lang/String;
    .end local v7           #theTitle:Ljava/lang/String;
    .end local v8           #fileType:I
    .end local v9           #theUrl:Ljava/lang/String;
    .end local v10           #theArtist:Ljava/lang/String;
    .end local v11           #theThumbnailURI:Ljava/lang/String;
    .end local v12           #theAlbumArtURI:Ljava/lang/String;
    .end local v29           #isContainer:Z
    .end local v40           #theType:Ljava/lang/String;
    .restart local v25       #bNotifyBrowsingResult:Z
    .restart local v38       #theBrowseCmd:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :cond_20
    :try_start_3
    move-wide/from16 v0, v33

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nLastIndex:J

    .line 649
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_ADD:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    .line 650
    new-instance v31, Landroid/os/Message;

    invoke-direct/range {v31 .. v31}, Landroid/os/Message;-><init>()V

    .line 651
    .local v31, msg:Landroid/os/Message;
    move-object/from16 v0, v39

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mThreadCmdHandle:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$300(Lcom/htc/dlnamiddlelayer/BrowseManager;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 656
    .end local v31           #msg:Landroid/os/Message;
    .end local v38           #theBrowseCmd:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :cond_21
    if-nez v28, :cond_22

    move-object/from16 v0, v39

    iget v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    const/16 v5, 0xc7

    if-lt v3, v5, :cond_25

    .line 658
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    move-result-object v3

    move-object/from16 v0, v39

    iget v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    move-object/from16 v0, v39

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    invoke-virtual {v3, v5, v13, v14}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->remove(IJ)Z

    move-result v3

    if-nez v3, :cond_23

    .line 660
    const-string v3, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BrowseResult ID is already removed: cookie: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    iget v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", ID:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    monitor-exit v4

    goto/16 :goto_0

    .line 664
    :cond_23
    const/16 v25, 0x1

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$200(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/ContentDBController;->startToClearDB()V

    .line 713
    :goto_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 716
    if-eqz v25, :cond_0

    .line 719
    move-object/from16 v0, v39

    iget-wide v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-lez v3, :cond_2b

    move-object/from16 v0, v39

    iget-wide v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    const-wide/16 v13, 0x1

    sub-long v35, v3, v13

    .line 720
    .local v35, prevLastIndex:J
    :goto_8
    const-wide/16 v3, -0x1

    cmp-long v3, v33, v3

    if-eqz v3, :cond_24

    move-wide/from16 v35, v33

    .end local v35           #prevLastIndex:J
    :cond_24
    move-wide/from16 v0, v35

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nLastIndex:J

    .line 721
    move/from16 v0, v28

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isComplete:Z

    .line 722
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_DONE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    .line 723
    new-instance v32, Landroid/os/Message;

    invoke-direct/range {v32 .. v32}, Landroid/os/Message;-><init>()V

    .line 724
    .local v32, msgDone:Landroid/os/Message;
    move-object/from16 v0, v39

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mThreadCmdHandle:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$300(Lcom/htc/dlnamiddlelayer/BrowseManager;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$200(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/BrowseManager;->mPlayingItemsMap:Ljava/util/HashMap;

    move-object/from16 v0, v39

    iget v14, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/LockPlayItems;

    invoke-virtual {v4, v5, v13, v3}, Lcom/htc/dlnamiddlelayer/ContentDBController;->deleteOutDatedContents(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/LockPlayItems;)V

    goto/16 :goto_0

    .line 672
    .end local v32           #msgDone:Landroid/os/Message;
    :cond_25
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->mTheEntryInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v39

    iget v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    if-ge v3, v5, :cond_27

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    move-result-object v3

    move-object/from16 v0, v39

    iget v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    move-object/from16 v0, v39

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    invoke-virtual {v3, v5, v13, v14}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->remove(IJ)Z

    move-result v3

    if-nez v3, :cond_26

    .line 676
    const-string v3, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BrowseResult ID is already removed: cookie: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    iget v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", ID:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    monitor-exit v4

    goto/16 :goto_0

    .line 680
    :cond_26
    const/16 v28, 0x1

    .line 681
    const/16 v25, 0x1

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$200(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/ContentDBController;->startToClearDB()V

    goto/16 :goto_7

    .line 686
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    move-result-object v3

    move-object/from16 v0, v39

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    invoke-virtual {v3, v13, v14}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->getBrowseCmdItem(J)Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    move-result-object v3

    if-nez v3, :cond_28

    .line 688
    const-string v3, "DLNAMiddlelayer"

    const-string v5, "BrowseResult ID is removed and should not continue browsing"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    monitor-exit v4

    goto/16 :goto_0

    .line 692
    :cond_28
    move-object/from16 v0, v39

    iget-boolean v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isServerRemoved:Z

    if-eqz v3, :cond_29

    .line 694
    const-string v3, "DLNAMiddlelayer"

    const-string v5, "No continue browsing. Server is removed!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    monitor-exit v4

    goto/16 :goto_0

    .line 699
    :cond_29
    move-object/from16 v0, v39

    iget-boolean v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isBrowsingDown:Z

    if-eqz v3, :cond_2a

    .line 701
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    move-object/from16 v0, v39

    iget v14, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    move-object/from16 v0, v39

    iget-object v15, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v39

    iget v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    int-to-long v0, v3

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    move-object/from16 v0, v39

    iget v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    move/from16 v21, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    move/from16 v22, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isBrowsingDown:Z

    move/from16 v23, v0

    invoke-virtual/range {v13 .. v23}, Lcom/htc/dlnamiddlelayer/BrowseManager;->addThreadBrowseCmd(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJIIZ)V

    .line 710
    :goto_9
    monitor-exit v4

    goto/16 :goto_0

    .line 706
    :cond_2a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    move-object/from16 v0, v39

    iget v14, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    move-object/from16 v0, v39

    iget-object v15, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v39

    iget v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    int-to-long v0, v3

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    move-object/from16 v0, v39

    iget v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    move/from16 v21, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    move/from16 v22, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isBrowsingDown:Z

    move/from16 v23, v0

    invoke-virtual/range {v13 .. v23}, Lcom/htc/dlnamiddlelayer/BrowseManager;->addThreadBrowseCmd(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJIIZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    .line 719
    :cond_2b
    const-wide/16 v35, 0x0

    goto/16 :goto_8

    .line 735
    .end local v24           #albumArtSizeRequestSeq:Ljava/lang/String;
    .end local v25           #bNotifyBrowsingResult:Z
    .end local v27           #i:I
    .end local v41           #thumbSizeRequestSeq:Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    move-result-object v4

    monitor-enter v4

    .line 737
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    move-result-object v3

    move-object/from16 v0, v39

    iget v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    move-object/from16 v0, v39

    iget-wide v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    invoke-virtual {v3, v5, v13, v14}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->remove(IJ)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 738
    monitor-exit v4

    goto/16 :goto_0

    .line 743
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 742
    :cond_2d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$200(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/ContentDBController;->startToClearDB()V

    .line 743
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 745
    const-wide/16 v3, -0x1

    cmp-long v3, v33, v3

    if-eqz v3, :cond_2e

    .line 747
    move-wide/from16 v0, v33

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nLastIndex:J

    .line 754
    :goto_a
    const/4 v3, 0x1

    move-object/from16 v0, v39

    iput-boolean v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isComplete:Z

    .line 755
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->BROWSING_CONTENT_DONE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    .line 756
    new-instance v32, Landroid/os/Message;

    invoke-direct/range {v32 .. v32}, Landroid/os/Message;-><init>()V

    .line 757
    .restart local v32       #msgDone:Landroid/os/Message;
    move-object/from16 v0, v39

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mThreadCmdHandle:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$300(Lcom/htc/dlnamiddlelayer/BrowseManager;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    #getter for: Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->access$200(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v13, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->this$0:Lcom/htc/dlnamiddlelayer/BrowseManager;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/BrowseManager;->mPlayingItemsMap:Ljava/util/HashMap;

    move-object/from16 v0, v39

    iget v14, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/LockPlayItems;

    invoke-virtual {v4, v5, v13, v3}, Lcom/htc/dlnamiddlelayer/ContentDBController;->deleteOutDatedContents(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/LockPlayItems;)V

    goto/16 :goto_0

    .line 752
    .end local v32           #msgDone:Landroid/os/Message;
    :cond_2e
    move-object/from16 v0, v39

    iget-wide v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-gtz v3, :cond_2f

    const-wide/16 v3, 0x0

    :goto_b
    move-object/from16 v0, v39

    iput-wide v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nLastIndex:J

    goto :goto_a

    :cond_2f
    move-object/from16 v0, v39

    iget-wide v3, v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    const-wide/16 v13, 0x1

    sub-long/2addr v3, v13

    goto :goto_b
.end method

.method public selectBestIndexVideo(Lcom/awox/jUPnPCP/CDSResourceInfo;I)I
    .locals 15
    .parameter "resInfo"
    .parameter "curSelectedIndex"

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 239
    .local v2, defaultIndex:I
    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    .line 341
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 242
    .restart local p2
    :cond_1
    if-eqz p1, :cond_0

    .line 252
    int-to-long v11, v2

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetMimeTypeForResourceIndex(J)Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, mimeType:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 258
    const-string v11, "video/mp4"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "video/3gpp"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 260
    :cond_2
    move/from16 v0, p2

    int-to-long v11, v0

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_Resolution:I

    int-to-long v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, selectedResolution:Ljava/lang/String;
    int-to-long v11, v2

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_Resolution:I

    int-to-long v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, defaultResolution:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 268
    const/16 v11, 0x78

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 269
    .local v1, crossPos:I
    if-lez v1, :cond_0

    .line 272
    const/4 v11, 0x0

    invoke-virtual {v3, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 273
    .local v5, defaultResolutionWidth:I
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 279
    .local v4, defaultResolutionHeight:I
    if-le v5, v4, :cond_5

    .line 282
    sget v11, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    if-gt v5, v11, :cond_3

    sget v11, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    if-le v4, v11, :cond_0

    .line 295
    :cond_3
    if-eqz v8, :cond_0

    .line 298
    const/16 v11, 0x78

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 299
    if-lez v1, :cond_0

    .line 302
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 303
    .local v10, selectedResolutionWidth:I
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 311
    .local v9, selectedResolutionHeight:I
    if-le v10, v9, :cond_6

    .line 314
    sget v11, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    if-ge v10, v11, :cond_0

    sget v11, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    if-ge v9, v11, :cond_0

    .end local v1           #crossPos:I
    .end local v3           #defaultResolution:Ljava/lang/String;
    .end local v4           #defaultResolutionHeight:I
    .end local v5           #defaultResolutionWidth:I
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #selectedResolution:Ljava/lang/String;
    .end local v9           #selectedResolutionHeight:I
    .end local v10           #selectedResolutionWidth:I
    :cond_4
    :goto_1
    move/from16 p2, v2

    .line 341
    goto/16 :goto_0

    .line 289
    .restart local v1       #crossPos:I
    .restart local v3       #defaultResolution:Ljava/lang/String;
    .restart local v4       #defaultResolutionHeight:I
    .restart local v5       #defaultResolutionWidth:I
    .restart local v7       #mimeType:Ljava/lang/String;
    .restart local v8       #selectedResolution:Ljava/lang/String;
    :cond_5
    sget v11, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    if-gt v5, v11, :cond_3

    sget v11, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    if-gt v4, v11, :cond_3

    goto/16 :goto_0

    .line 323
    .restart local v9       #selectedResolutionHeight:I
    .restart local v10       #selectedResolutionWidth:I
    :cond_6
    sget v11, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    if-ge v10, v11, :cond_0

    sget v11, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v9, v11, :cond_4

    goto/16 :goto_0

    .line 335
    .end local v1           #crossPos:I
    .end local v3           #defaultResolution:Ljava/lang/String;
    .end local v4           #defaultResolutionHeight:I
    .end local v5           #defaultResolutionWidth:I
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #selectedResolution:Ljava/lang/String;
    .end local v9           #selectedResolutionHeight:I
    .end local v10           #selectedResolutionWidth:I
    :catch_0
    move-exception v6

    .line 337
    .local v6, e:Ljava/lang/Exception;
    const-string v11, "DLNAMiddlelayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "selectBestIndexVideo:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
