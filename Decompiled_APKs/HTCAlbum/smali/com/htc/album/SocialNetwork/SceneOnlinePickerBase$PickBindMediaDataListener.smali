.class Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;
.super Ljava/lang/Object;
.source "SceneOnlinePickerBase.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickBindMediaDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>.PickBindMediaDataListener;"
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>.PickBindMediaDataListener;"
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;)V

    return-void
.end method


# virtual methods
.method public onItemBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V
    .locals 9
    .parameter "dataIndex"
    .parameter "gridViewItem"
    .parameter "mediaData"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>.PickBindMediaDataListener;"
    const/high16 v8, 0x3f40

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    .line 384
    move-object v0, p2

    check-cast v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;

    .line 386
    .local v0, item:Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v4, v4, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v4, :cond_0

    .line 388
    invoke-virtual {v0, v6, v6, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setScale(FFF)V

    .line 389
    invoke-virtual {v0, v2, v7}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 392
    :cond_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v4, v4, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v4, :cond_2

    move v1, v2

    .line 394
    .local v1, mode:I
    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setStyle(I)V

    .line 396
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v4, v4, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v4, v3, :cond_5

    .line 398
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 399
    invoke-virtual {v0, v8, v8, v8}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setScale(FFF)V

    .line 400
    invoke-virtual {v0, v3, v7}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 413
    :cond_1
    :goto_1
    return-void

    .line 392
    .end local v1           #mode:I
    :cond_2
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v4, v4, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v4, v3, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    .line 402
    .restart local v1       #mode:I
    :cond_4
    invoke-virtual {v0, v6, v6, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setScale(FFF)V

    .line 403
    invoke-virtual {v0, v2, v7}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_1

    .line 406
    :cond_5
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v4, v4, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 408
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 409
    invoke-virtual {v0, v3, v7}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_1

    .line 411
    :cond_6
    invoke-virtual {v0, v2, v7}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_1
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "gridViewItem"

    .prologue
    .line 379
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>.PickBindMediaDataListener;"
    return-void
.end method
