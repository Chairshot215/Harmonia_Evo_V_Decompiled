.class public Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
.super Lcom/htc/sunny2/widget/gridview/GridView;
.source "PreparatorNotifyGridView.java"

# interfaces
.implements Lcom/htc/sunny2/Preparator$UpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "context"
    .parameter "sContext"
    .parameter "itemPrototype"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 36
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->notifyMediaDataInvalidate(I)V

    .line 37
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 2
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 23
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 24
    .local v0, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 25
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    :goto_0
    return-void

    .line 27
    .restart local v0       #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_0
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    .line 31
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->notifyMediaDataInvalidate(I)V

    goto :goto_0
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 18
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->notifyMediaDataInvalidate(I)V

    .line 19
    return-void
.end method
