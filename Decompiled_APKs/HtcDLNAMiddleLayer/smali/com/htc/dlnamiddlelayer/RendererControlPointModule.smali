.class public Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
.super Ljava/lang/Object;
.source "RendererControlPointModule.java"

# interfaces
.implements Lcom/htc/dlnamiddlelayer/IHandleUPnPCommand;


# instance fields
.field private mCallbackNotify:Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;

.field private mNotifyController:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/dlnamiddlelayer/IRendererNotifyController;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererModule:Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;

.field private mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

.field private mThumbnailCmd:Lcom/htc/dlnamiddlelayer/IThumbnailCommand;

.field private sClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;Lcom/htc/dlnamiddlelayer/IThumbnailCommand;)V
    .locals 3
    .parameter "aStackMgr"
    .parameter "aCallbackNotify"
    .parameter "aThumbCmd"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "RendererModule"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->sClassName:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRendererModule:Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;

    .line 34
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    .line 35
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mThumbnailCmd:Lcom/htc/dlnamiddlelayer/IThumbnailCommand;

    .line 36
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    .line 42
    invoke-virtual {p1, p0}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->registerCommandHandler(Lcom/htc/dlnamiddlelayer/IHandleUPnPCommand;)V

    .line 44
    new-instance v0, Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->getStack()Lcom/awox/jUPnPCP/UPnPStack;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;-><init>(Lcom/awox/jUPnPCP/UPnPStack;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRendererModule:Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;

    .line 45
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;

    .line 46
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mThumbnailCmd:Lcom/htc/dlnamiddlelayer/IThumbnailCommand;

    .line 49
    new-instance v0, Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/RenderersList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    .line 51
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method private clearRenderersList()V
    .locals 1

    .prologue
    .line 225
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RenderersList;->clear()V

    .line 228
    monitor-exit p0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private decideBestSuitIconType(Lcom/awox/jUPnPCP/UPnPRenderer;I)I
    .locals 6
    .parameter "renderer"
    .parameter "filterType"

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMManufacturerName()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, manufactureName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMModelName()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, modelName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMModelDescription()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, modelDescription:Ljava/lang/String;
    sget v0, Lcom/htc/dlnainterface/DLNASharedData;->VIDEO_PLAYER:I

    .line 281
    .local v0, iconType:I
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STR_HTC_MEDIA_LINK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STR_HTC_MEDIA_LINK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 284
    :cond_0
    sget v0, Lcom/htc/dlnainterface/DLNASharedData;->HTC_MEDIA_LINK:I

    .line 296
    :cond_1
    :goto_0
    return v0

    .line 286
    :cond_2
    and-int/lit8 v4, p2, 0x4

    if-nez v4, :cond_3

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_4

    .line 289
    :cond_3
    sget v0, Lcom/htc/dlnainterface/DLNASharedData;->VIDEO_PLAYER:I

    goto :goto_0

    .line 291
    :cond_4
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    .line 293
    sget v0, Lcom/htc/dlnainterface/DLNASharedData;->AUDIO_PLAYER:I

    goto :goto_0
.end method

.method private getCloneRenderersList()Lcom/htc/dlnamiddlelayer/RenderersList;
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RenderersList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/RenderersList;

    monitor-exit p0

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getRendererItem(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/RendererItem;
    .locals 1
    .parameter "rendererID"

    .prologue
    .line 244
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RenderersList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/RenderersList;->getRendererItem(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/RendererItem;

    move-result-object v0

    monitor-exit p0

    .line 250
    :goto_0
    return-object v0

    .line 248
    :cond_0
    monitor-exit p0

    .line 250
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRenderersListSize()I
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RenderersList;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUPnPRenderer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPRenderer;
    .locals 1
    .parameter "rendererID"

    .prologue
    .line 233
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RenderersList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/RenderersList;->getUPnPRenderer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v0

    monitor-exit p0

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_0
    monitor-exit p0

    .line 239
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterate(Lcom/htc/dlnamiddlelayer/ListIterator;)V
    .locals 4
    .parameter "listIterator"

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 221
    :cond_0
    return-void

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->getCloneRenderersList()Lcom/htc/dlnamiddlelayer/RenderersList;

    move-result-object v0

    .line 217
    .local v0, cloneList:Lcom/htc/dlnamiddlelayer/RenderersList;
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RenderersList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/RendererItem;

    .line 219
    .local v2, item:Lcom/htc/dlnamiddlelayer/RendererItem;
    invoke-interface {p1, v2}, Lcom/htc/dlnamiddlelayer/ListIterator;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onHandleCommand(Lcom/awox/jUPnPCP/UPnPCommand;)Z
    .locals 12
    .parameter "aCommand"

    .prologue
    const/4 v9, 0x1

    .line 90
    instance-of v8, p1, Lcom/awox/jUPnPCP/CmdRendererAdded;

    if-eqz v8, :cond_3

    move-object v6, p1

    .line 92
    check-cast v6, Lcom/awox/jUPnPCP/CmdRendererAdded;

    .line 93
    .local v6, theCommand:Lcom/awox/jUPnPCP/CmdRendererAdded;
    invoke-virtual {v6}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMMediaRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v7

    .line 95
    .local v7, theRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v8, v7}, Lcom/htc/dlnamiddlelayer/RenderersList;->add(Lcom/awox/jUPnPCP/UPnPRenderer;)Z

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, filterType:I
    invoke-virtual {v6}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMSinkProtocolInfo()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, protocolInfo:Ljava/lang/String;
    const-string v8, "http-get:*:video"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 104
    or-int/lit8 v1, v1, 0x4

    .line 106
    :cond_0
    const-string v8, "http-get:*:audio"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 108
    or-int/lit8 v1, v1, 0x1

    .line 110
    :cond_1
    const-string v8, "http-get:*:image"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 112
    or-int/lit8 v1, v1, 0x2

    .line 115
    :cond_2
    invoke-direct {p0, v7, v1}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->decideBestSuitIconType(Lcom/awox/jUPnPCP/UPnPRenderer;I)I

    move-result v3

    .line 117
    .local v3, iconType:I
    const/4 v5, 0x0

    .line 118
    .local v5, rendererItem:Lcom/htc/dlnamiddlelayer/RendererItem;
    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/RenderersList;->getLast()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/dlnamiddlelayer/RendererItem;

    move-object v5, v0

    .line 121
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    invoke-virtual {v5, v1}, Lcom/htc/dlnamiddlelayer/RendererItem;->addSupportedFilterType(I)V

    .line 123
    invoke-virtual {v5, v3}, Lcom/htc/dlnamiddlelayer/RendererItem;->setThumbIconType(I)V

    .line 125
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v11, v3}, Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;->rendererAddedMsg(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    const-string v8, "DLNAMiddlelayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Renderer capability : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", iconType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 200
    .end local v1           #filterType:I
    .end local v3           #iconType:I
    .end local v4           #protocolInfo:Ljava/lang/String;
    .end local v5           #rendererItem:Lcom/htc/dlnamiddlelayer/RendererItem;
    .end local v6           #theCommand:Lcom/awox/jUPnPCP/CmdRendererAdded;
    .end local v7           #theRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;
    :goto_0
    return v8

    .line 98
    .restart local v6       #theCommand:Lcom/awox/jUPnPCP/CmdRendererAdded;
    .restart local v7       #theRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 121
    .restart local v1       #filterType:I
    .restart local v3       #iconType:I
    .restart local v4       #protocolInfo:Ljava/lang/String;
    .restart local v5       #rendererItem:Lcom/htc/dlnamiddlelayer/RendererItem;
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 137
    .end local v1           #filterType:I
    .end local v3           #iconType:I
    .end local v4           #protocolInfo:Ljava/lang/String;
    .end local v5           #rendererItem:Lcom/htc/dlnamiddlelayer/RendererItem;
    .end local v6           #theCommand:Lcom/awox/jUPnPCP/CmdRendererAdded;
    .end local v7           #theRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;
    :cond_3
    instance-of v8, p1, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    if-eqz v8, :cond_5

    move-object v6, p1

    .line 139
    check-cast v6, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    .line 140
    .local v6, theCommand:Lcom/awox/jUPnPCP/CmdRendererRemoved;
    invoke-virtual {v6}, Lcom/awox/jUPnPCP/CmdRendererRemoved;->getMMediaRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v7

    .line 141
    .local v7, theRenderer:Lcom/awox/jUPnPCP/UPnPDeviceBase;
    monitor-enter p0

    .line 143
    :try_start_4
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mRenderersList:Lcom/htc/dlnamiddlelayer/RenderersList;

    invoke-virtual {v8, v7}, Lcom/htc/dlnamiddlelayer/RenderersList;->remove(Lcom/awox/jUPnPCP/UPnPDeviceBase;)V

    .line 144
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 145
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;->rendererRemovedMsg(Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 149
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/awox/jUPnPCP/CmdRendererRemoved;->getMRemovalReason()I

    move-result v11

    invoke-interface {v8, v10, v11}, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;->rendererRemovedMsg(Ljava/lang/String;I)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    .end local v2           #i:I
    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .restart local v2       #i:I
    :cond_4
    move v8, v9

    .line 151
    goto :goto_0

    .line 153
    .end local v2           #i:I
    .end local v6           #theCommand:Lcom/awox/jUPnPCP/CmdRendererRemoved;
    .end local v7           #theRenderer:Lcom/awox/jUPnPCP/UPnPDeviceBase;
    :cond_5
    instance-of v8, p1, Lcom/awox/jUPnPCP/CmdStateChange;

    if-eqz v8, :cond_7

    move-object v6, p1

    .line 155
    check-cast v6, Lcom/awox/jUPnPCP/CmdStateChange;

    .line 157
    .local v6, theCommand:Lcom/awox/jUPnPCP/CmdStateChange;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 159
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;

    invoke-interface {v8, v6}, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;->rendererStateChangedMsg(Lcom/awox/jUPnPCP/CmdStateChange;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v8, v9

    .line 161
    goto :goto_0

    .line 163
    .end local v2           #i:I
    .end local v6           #theCommand:Lcom/awox/jUPnPCP/CmdStateChange;
    :cond_7
    instance-of v8, p1, Lcom/awox/jUPnPCP/CmdSetURI2;

    if-eqz v8, :cond_9

    move-object v6, p1

    .line 165
    check-cast v6, Lcom/awox/jUPnPCP/CmdSetURI2;

    .line 166
    .local v6, theCommand:Lcom/awox/jUPnPCP/CmdSetURI2;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_8

    .line 168
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;

    invoke-interface {v8, v6}, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;->rendererSetUriResponseMsg(Lcom/awox/jUPnPCP/CmdSetURI2;)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move v8, v9

    .line 170
    goto/16 :goto_0

    .line 172
    .end local v2           #i:I
    .end local v6           #theCommand:Lcom/awox/jUPnPCP/CmdSetURI2;
    :cond_9
    instance-of v8, p1, Lcom/awox/jUPnPCP/CmdPlayMedia;

    if-eqz v8, :cond_b

    move-object v6, p1

    .line 174
    check-cast v6, Lcom/awox/jUPnPCP/CmdPlayMedia;

    .line 175
    .local v6, theCommand:Lcom/awox/jUPnPCP/CmdPlayMedia;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_a

    .line 177
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;

    invoke-interface {v8, v6}, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;->rendererPlayResponseMsg(Lcom/awox/jUPnPCP/CmdPlayMedia;)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    move v8, v9

    .line 179
    goto/16 :goto_0

    .line 181
    .end local v2           #i:I
    .end local v6           #theCommand:Lcom/awox/jUPnPCP/CmdPlayMedia;
    :cond_b
    instance-of v8, p1, Lcom/awox/jUPnPCP/CmdSeek;

    if-eqz v8, :cond_d

    move-object v6, p1

    .line 183
    check-cast v6, Lcom/awox/jUPnPCP/CmdSeek;

    .line 184
    .local v6, theCommand:Lcom/awox/jUPnPCP/CmdSeek;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_c

    .line 186
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;

    invoke-interface {v8, v6}, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;->rendererSeekResponseMsg(Lcom/awox/jUPnPCP/CmdSeek;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    move v8, v9

    .line 188
    goto/16 :goto_0

    .line 190
    .end local v2           #i:I
    .end local v6           #theCommand:Lcom/awox/jUPnPCP/CmdSeek;
    :cond_d
    instance-of v8, p1, Lcom/awox/jUPnPCP/CmdPauseMedia;

    if-eqz v8, :cond_f

    move-object v6, p1

    .line 192
    check-cast v6, Lcom/awox/jUPnPCP/CmdPauseMedia;

    .line 193
    .local v6, theCommand:Lcom/awox/jUPnPCP/CmdPauseMedia;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_e

    .line 195
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;

    invoke-interface {v8, v6}, Lcom/htc/dlnamiddlelayer/IRendererNotifyController;->rendererPauseResponseMsg(Lcom/awox/jUPnPCP/CmdPauseMedia;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    move v8, v9

    .line 197
    goto/16 :goto_0

    .line 200
    .end local v2           #i:I
    .end local v6           #theCommand:Lcom/awox/jUPnPCP/CmdPauseMedia;
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public registerCallback(Lcom/htc/dlnamiddlelayer/IRendererNotifyController;)V
    .locals 4
    .parameter "aCallback"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 58
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Callback to register is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 61
    .local v0, index:I
    if-gez v0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": registerCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    return-void
.end method

.method public unRegisterCallback(Lcom/htc/dlnamiddlelayer/IRendererNotifyController;)V
    .locals 4
    .parameter "aCallback"

    .prologue
    .line 70
    if-nez p1, :cond_1

    .line 72
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Callback to unregister is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 77
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 80
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unRegisterCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
