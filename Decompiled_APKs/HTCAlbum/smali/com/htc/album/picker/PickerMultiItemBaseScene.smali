.class public abstract Lcom/htc/album/picker/PickerMultiItemBaseScene;
.super Lcom/htc/album/picker/PickerItemBaseScene;
.source "PickerMultiItemBaseScene.java"


# static fields
.field protected static final CMD_BAR_MULTIPICKER:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mIsSelectAll:Z

.field private mLocker:Ljava/lang/Object;

.field protected mPickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/album/picker/PickerItemBaseScene;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mLocker:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getBottomMargin()I
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method protected abstract getConfirmText()Ljava/lang/String;
.end method

.method protected abstract getGridViewItemStyle()I
.end method

.method protected getSelectionCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final isItemPicked(I)Z
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBindAdapter()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->onBindAdapter()V

    .line 91
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->invalidateControlBars()V

    .line 92
    return-void
.end method

.method protected onCancel()V
    .locals 4

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCancel] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract onConfirm()V
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 214
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onConfirm()V

    goto :goto_0

    .line 219
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCancel()V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 113
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 115
    const/4 v3, 0x5

    const v5, 0x20c01d6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 116
    const/4 v3, 0x4

    const v5, 0x7f0b0001

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 118
    return-object v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerItemBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x2

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->createControlBar(II)V

    .line 81
    return-void
.end method

.method protected onItemSelected(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->pickItem(I)V

    .line 161
    return-void
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 49
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;

    invoke-direct {v0, p1, p2}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 50
    .local v0, item:Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getGridViewItemStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setStyle(I)V

    .line 51
    new-instance v1, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;

    invoke-direct {v1, p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;-><init>(Lcom/htc/album/picker/PickerMultiItemBaseScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;)V

    .line 67
    return-object v0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 4
    .parameter "footer"

    .prologue
    const/4 v2, 0x1

    .line 133
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 134
    .local v0, btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getConfirmText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getConfirmText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected final pickItem(I)V
    .locals 10
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v9, 0x3f80

    const/high16 v8, 0x3f40

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, selected:Z
    iget-object v5, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mLocker:Ljava/lang/Object;

    monitor-enter v5

    .line 168
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v3

    .line 169
    :goto_0
    if-eqz v2, :cond_0

    .line 170
    iget-object v6, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iput-boolean v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    .line 174
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getGridViewItemStyle()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 175
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 176
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 177
    sget-object v4, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 178
    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 179
    if-eqz v2, :cond_3

    .line 180
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v3, v9, v9, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v4, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v4, v8, v8, v8}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 184
    :goto_1
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v1

    .line 185
    .local v1, sView:Lcom/htc/sunny2/view/SView;
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->cancelAnimation()V

    .line 187
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 190
    .end local v0           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v1           #sView:Lcom/htc/sunny2/view/SView;
    :cond_1
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange(I)V

    .line 191
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->invalidateControlBars()V

    .line 193
    return-void

    :cond_2
    move v2, v4

    .line 168
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 182
    .restart local v0       #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    :cond_3
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v3, v8, v8, v8}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v4, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v4, v9, v9, v9}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    goto :goto_1
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
