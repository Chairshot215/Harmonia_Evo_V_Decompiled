.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2591
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()Z
    .locals 2

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$7700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2601
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][ActivityFullscreen][onNewIntent]: 4 "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$7800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2605
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$7900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 2608
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDrmItemClick(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2616
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2617
    .local v2, position:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z
    invoke-static {v3, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$7702(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 2618
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2619
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_0

    .line 2621
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2622
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2651
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    :goto_0
    return-void

    .line 2625
    .restart local v1       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2627
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2629
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z
    invoke-static {v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5602(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 2630
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V
    invoke-static {v6, v3, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V

    .line 2631
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 2630
    goto :goto_1

    .line 2634
    :cond_3
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v6, "image/gif"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getFrameCount()I

    move-result v3

    if-le v3, v4, :cond_5

    .line 2636
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2638
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z
    invoke-static {v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5602(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 2639
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V
    invoke-static {v3, v4, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V

    .line 2640
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 2639
    goto :goto_2

    .line 2645
    :cond_5
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z
    invoke-static {v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5602(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 2646
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v6

    if-nez v6, :cond_6

    :goto_3
    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V
    invoke-static {v3, v4, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V

    .line 2647
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/DrmManager;->consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2648
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/16 v4, 0x10

    invoke-virtual {v3, v2, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onMediaItemRefreshIHT(II)V

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 2646
    goto :goto_3
.end method
