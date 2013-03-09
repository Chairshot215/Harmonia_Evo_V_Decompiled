.class public Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;
.super Ljava/lang/Object;
.source "FullscreenTopOverlay.java"


# instance fields
.field private mListPlugin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumUtility/IPluginTopOverlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumUtility/IPluginTopOverlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, listPlugin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumUtility/IPluginTopOverlay;>;"
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    return-void
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 55
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->initialize()V

    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public onDispatchEnterImage(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 91
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onEnterImage(I)V

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method

.method public onDispatchNotifyUpdateChange()V
    .locals 3

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 73
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onNotifyUpdateChange()V

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method public onDispatchNotifyUpdateChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onNotifyUpdateChange(Ljava/lang/Object;)V

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method

.method public onDispatchScreenRotate()V
    .locals 3

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 100
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onScreenRotate()V

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method public onDispatchTransformImageBegin(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 109
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onTransformImageBegin(I)V

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method

.method public onDispatchTransformImageEnd(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 118
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onTransformImageEnd(I)V

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    return-void
.end method

.method public setAdater(Landroid/widget/BaseAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 28
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 29
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->setAdater(Landroid/widget/BaseAdapter;)V

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public setShowHideOverlay(Z)V
    .locals 3
    .parameter "bIsShow"

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 46
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->setShowHide(Z)V

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public setTemplate(Lcom/htc/opensense2/album/ViewTemplateBase;)V
    .locals 3
    .parameter "template"

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 37
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->setTemplate(Lcom/htc/opensense2/album/ViewTemplateBase;)V

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public unInitialize()V
    .locals 3

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 64
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->unInitialize()V

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method
