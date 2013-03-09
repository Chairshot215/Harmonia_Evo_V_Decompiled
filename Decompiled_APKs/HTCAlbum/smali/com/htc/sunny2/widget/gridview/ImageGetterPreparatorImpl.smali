.class public Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;
.super Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.source "ImageGetterPreparatorImpl.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;
.implements Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const-string v0, "ImageGetterPreparatorImpl"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected decodeOriginalFile(J)Z
    .locals 8
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v5, 0x1

    .line 44
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl$1;->$SwitchMap$com$htc$sunny2$widget$gridview$GridViewPreparatorImpl$DecodeState:[I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :pswitch_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v4, v6}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 48
    .local v3, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v3, :cond_1

    .line 49
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 50
    .local v1, itemCount:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeOriginalFile: MediaItem is null, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", identifier "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", preparator list count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mItemCounts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", media list count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 52
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move v4, v5

    .line 53
    goto :goto_0

    .line 56
    .end local v1           #itemCount:I
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v2

    .line 58
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    if-eqz v2, :cond_2

    .line 59
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mediaItem:Lcom/htc/sunny2/IMediaData;
    check-cast v3, Lcom/htc/sunny2/IMediaData;

    .line 60
    .restart local v3       #mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v3, :cond_3

    .line 61
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 62
    .restart local v1       #itemCount:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeOriginalFile: MediaItem is null, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subIdx "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", identifier "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", preparator list count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mItemCounts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", media list count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 64
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move v4, v5

    .line 65
    goto/16 :goto_0

    .line 68
    .end local v1           #itemCount:I
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 69
    .restart local v1       #itemCount:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeOriginalFile: MediaDataList is null, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subIdx "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", identifier "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", preparator list count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mItemCounts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", media list count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 71
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move v4, v5

    .line 72
    goto/16 :goto_0

    .line 76
    .end local v1           #itemCount:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunny2/IMediaData;>;"
    :cond_3
    const/4 v0, 0x0

    .line 77
    .local v0, isVideo:Z
    instance-of v4, v3, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v4, :cond_5

    move-object v4, v3

    .line 78
    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v0

    .line 82
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V

    move v4, v5

    .line 86
    goto/16 :goto_0

    .line 79
    :cond_5
    instance-of v4, v3, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v4, :cond_4

    move-object v4, v3

    .line 80
    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->isVideo()Z

    move-result v0

    goto :goto_1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getThumbnailImage(ILcom/htc/sunny2/IMediaData;)Lcom/htc/sunny2/Texture;
    .locals 2
    .parameter "index"
    .parameter "mediaData"

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Lcom/htc/sunny2/Texture;
    .locals 2
    .parameter "index"
    .parameter "mediaData"
    .parameter "bkgTextureId"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    sub-int/2addr p1, v1

    .line 32
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, inValue:Landroid/os/Bundle;
    const-string v1, "SUB_INDEX"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    return-object v1
.end method

.method protected isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 169
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v0, :cond_1

    .line 170
    check-cast p1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p1
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    .restart local p1
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 5
    .parameter "limitedTimeMillis"

    .prologue
    .line 178
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->onProcessPreparationIRT(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 197
    :goto_0
    return v2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected Exception, reset decodeItem and status, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 182
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    .line 183
    .local v0, currentTextureHandle:Lcom/htc/sunny2/Texture;
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    .line 184
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 188
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mTexturesCount:I

    .line 191
    :cond_0
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->executeCacheTask(J)I

    .line 193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 197
    .end local v0           #currentTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V
    .locals 13
    .parameter "mediaItem"

    .prologue
    const/4 v12, 0x1

    .line 95
    const/4 v10, 0x0

    .line 96
    .local v10, isVideo:Z
    if-nez p1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "[setupCurrentTaskToMediaDecodeThread] mediaItem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 100
    :cond_0
    instance-of v1, p1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_5

    move-object v1, p1

    .line 101
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v10

    .line 105
    :cond_1
    :goto_1
    if-eqz v10, :cond_a

    .line 106
    new-instance v0, Lcom/htc/sunny2/common/VideoDecodeItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mCacheSet:I

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/VideoDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .line 107
    .local v0, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v11

    .line 108
    .local v11, mediaSourceType:I
    iput v11, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mSourceType:I

    .line 109
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mSubIndex:I

    .line 110
    const/4 v9, 0x0

    .line 111
    .local v9, hasError:Z
    packed-switch v11, :pswitch_data_0

    .line 141
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, filePath:Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 143
    :cond_2
    const/4 v9, 0x1

    .line 148
    .end local v8           #filePath:Ljava/lang/String;
    :cond_3
    :goto_2
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mTargetWidth:I

    .line 149
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mTargetHeight:I

    .line 150
    iput-boolean v12, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->enableCropCenter:Z

    .line 151
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mimeType:Ljava/lang/String;

    .line 153
    if-nez v9, :cond_9

    move v1, v12

    :goto_3
    if-ne v1, v12, :cond_4

    .line 154
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 156
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v2, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mPosition:I

    invoke-virtual {v1, v2, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 158
    :cond_4
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 159
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 160
    const/4 v0, 0x0

    .line 161
    goto :goto_0

    .line 102
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v9           #hasError:Z
    .end local v11           #mediaSourceType:I
    :cond_5
    instance-of v1, p1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 103
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->isVideo()Z

    move-result v10

    goto :goto_1

    .line 113
    .restart local v0       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .restart local v9       #hasError:Z
    .restart local v11       #mediaSourceType:I
    :pswitch_1
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 114
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_2

    .line 116
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupCurrentTaskToMediaDecodeThread: MediaData ParcelFileDescriptor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v9, 0x1

    .line 119
    goto :goto_2

    .line 121
    :pswitch_2
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 122
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mUri:Ljava/lang/String;

    goto :goto_2

    .line 124
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupCurrentTaskToMediaDecodeThread: MediaData Uri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v9, 0x1

    .line 127
    goto :goto_2

    .line 129
    :pswitch_3
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 130
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mInputStream:Ljava/io/InputStream;

    goto :goto_2

    .line 132
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupCurrentTaskToMediaDecodeThread: MediaData InputStream is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v9, 0x1

    .line 135
    goto :goto_2

    .line 153
    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    .line 164
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v9           #hasError:Z
    .end local v11           #mediaSourceType:I
    :cond_a
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
