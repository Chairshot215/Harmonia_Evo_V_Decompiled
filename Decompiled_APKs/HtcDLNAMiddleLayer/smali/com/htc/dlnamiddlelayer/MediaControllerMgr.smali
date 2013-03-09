.class public Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
.super Ljava/lang/Object;
.source "MediaControllerMgr.java"


# instance fields
.field protected mMediaCtrlList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/dlnamiddlelayer/MediaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    .line 21
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "MediaControllerMgr constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method


# virtual methods
.method public addMediaController(ILjava/lang/String;Lcom/htc/dlnamiddlelayer/MediaController;)Z
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "aMediaCtrl"

    .prologue
    .line 27
    if-nez p3, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p3}, Lcom/htc/dlnamiddlelayer/MediaController;->registerCallback()V

    .line 35
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "register callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p3}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->subscribeToRenderer(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 41
    invoke-virtual {p3}, Lcom/htc/dlnamiddlelayer/MediaController;->switchStopState()V

    .line 43
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaControllerMgr: rendererID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeRendererOutput(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)Z
    .locals 4
    .parameter "cookie"
    .parameter "rendererIDOld"
    .parameter "aRendererOld"
    .parameter "rendererIDNew"
    .parameter "aRendererNew"

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/MediaController;

    .line 165
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->unSubscribeToRenderer(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 171
    invoke-virtual {v0, p5}, Lcom/htc/dlnamiddlelayer/MediaController;->changeRendererOutput(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 173
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v1

    invoke-virtual {p0, p1, p4, v1}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->subscribeToRenderer(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 175
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch renderer: NewID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; oldID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;
    .locals 2
    .parameter "cookie"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/MediaController;

    goto :goto_0
.end method

.method public getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/MediaController;

    .line 146
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 147
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMediaController : NotSame: MediaCtrlID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; RequestID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 152
    goto :goto_0
.end method

.method public isOtherUsingRenderer(ILjava/lang/String;)Z
    .locals 8
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v4

    .line 186
    :cond_1
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 188
    .local v3, set:Ljava/util/Set;
    const/4 v0, 0x0

    .line 190
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check is using rendererID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 194
    .local v1, iter:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 198
    .local v2, key:Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    check-cast v0, Lcom/htc/dlnamiddlelayer/MediaController;

    .line 203
    .restart local v0       #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public notifySDCardRemoved(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 242
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 245
    .local v3, set:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 247
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 251
    .local v2, key:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/MediaController;

    .line 253
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/MediaController;->sdCardRemovedMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v0           #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    .end local v2           #key:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public removeAll()V
    .locals 7

    .prologue
    .line 103
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 109
    .local v3, set:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 111
    .local v1, iter:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 116
    .local v2, key:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/MediaController;

    .line 118
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->switchStopState()V

    .line 123
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->unSubscribeToRenderer(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 125
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->unRegisterCallback()V

    goto :goto_1

    .line 128
    .end local v0           #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    .end local v2           #key:Ljava/lang/Integer;
    :cond_2
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public removeMediaController(I)V
    .locals 4
    .parameter "cookie"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    check-cast v0, Lcom/htc/dlnamiddlelayer/MediaController;

    .line 59
    .restart local v0       #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->switchStopState()V

    .line 64
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->unSubscribeToRenderer(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 66
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->unRegisterCallback()V

    .line 68
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMediacontroller : cookie"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeMediaController(ILjava/lang/String;)V
    .locals 4
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    check-cast v0, Lcom/htc/dlnamiddlelayer/MediaController;

    .line 81
    .restart local v0       #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->switchStopState()V

    .line 89
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->unSubscribeToRenderer(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 91
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->unRegisterCallback()V

    .line 93
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->mMediaCtrlList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMediacontroller : cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public subscribeToRenderer(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "aRenderer"

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->isOtherUsingRenderer(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    if-eqz p3, :cond_0

    .line 223
    invoke-virtual {p3}, Lcom/awox/jUPnPCP/UPnPRenderer;->SubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceSubscribe;

    .line 224
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaControllerMgr: Renderer subscribed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unSubscribeToRenderer(ILjava/lang/String;Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "aRenderer"

    .prologue
    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->isOtherUsingRenderer(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-eqz p3, :cond_0

    .line 236
    invoke-virtual {p3}, Lcom/awox/jUPnPCP/UPnPRenderer;->UnSubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;

    .line 237
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaControllerMgr: Renderer unSubscribed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
