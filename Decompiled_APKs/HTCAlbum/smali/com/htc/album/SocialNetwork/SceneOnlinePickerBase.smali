.class public abstract Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlinePickerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        "TADAPTER;>;"
    }
.end annotation


# static fields
.field public static final FOOTERBAR_PICKER_ID:I = 0x1389

.field public static final HEADERBAR_PICKER_ID:I = 0x138a

.field public static final PICKER_MODE_DELETE:I = 0x1

.field public static final PICKER_MODE_MULTI:I = 0x2

.field public static final PICKER_MODE_NONE:I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mBindMediaDataListener:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase",
            "<TADAPTER;>.PickBindMediaData",
            "Listener;"
        }
    .end annotation
.end field

.field protected mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

.field protected mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field protected mIsSelectAll:Z

.field protected mPickList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPickerMode:I

.field protected mProgressLoad:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 45
    const-class v0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->LOG_TAG:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    .line 48
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 49
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mBindMediaDataListener:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;

    .line 50
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 51
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsSelectAll:Z

    .line 52
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 373
    return-void
.end method

.method private selectAll(Z)V
    .locals 4
    .parameter "bSelected"

    .prologue
    .line 359
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    if-nez p1, :cond_1

    .line 360
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    .line 371
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->invalidateControlBars()V

    .line 372
    return-void

    .line 363
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 365
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 130
    :cond_0
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPickerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPickerMode()I
    .locals 1

    .prologue
    .line 104
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v0, 0x0

    .line 348
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->setPickerMode(I)V

    .line 351
    const/4 v0, 0x1

    .line 354
    :cond_0
    return v0
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v3, 0x0

    .line 170
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 176
    :pswitch_0
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 177
    .local v0, mode:I
    const/16 v1, 0x4e42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 181
    .end local v0           #mode:I
    :pswitch_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 182
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->setPickerMode(I)V

    goto :goto_0

    .line 172
    nop

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
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v2, 0x0

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    const/16 v3, 0x1389

    if-ne p1, v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 160
    const/4 v3, 0x5

    const v5, 0x20c01d6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 161
    const/4 v3, 0x4

    const v5, 0x7f0b0001

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 164
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 138
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v1, 0x0

    .line 140
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    const/16 v2, 0x138a

    if-ne p1, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 145
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-object v1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 8

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v5, 0x0

    .line 189
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SceneOnlinePickerBase][onCreateScene]: ..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 192
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 193
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SceneOnlinePickerBase][onCreateScene] Activity is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 217
    :goto_0
    return-object v2

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 198
    .local v1, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 200
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v4, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v4, v1, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 201
    .local v4, ti:Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mBindMediaDataListener:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$PickBindMediaDataListener;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;)V

    .line 203
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    .end local v2           #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v2, v1, v6, v4}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 207
    .restart local v2       #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v6, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v6, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 208
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v3, inValue:Landroid/os/Bundle;
    const-string v6, "TEXTURE_MAX_COUNT"

    const/16 v7, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v6, "GRID_WIDTH_HEIGHT"

    sget v7, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v5, v3}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 212
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 214
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setThumbnailImageGetter(Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;)V

    .line 215
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    goto :goto_0
.end method

.method protected abstract onGetLoadingMessage()Ljava/lang/String;
.end method

.method protected abstract onGetNormalFooterId()I
.end method

.method protected abstract onGetNormalHeaderId()I
.end method

.method protected onItemSelected(I)Z
    .locals 8
    .parameter "index"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v5, 0x1

    const/high16 v7, 0x3f80

    const/high16 v6, 0x3f40

    .line 264
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v3, :cond_2

    .line 266
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->togglePickedIndex(I)Z

    move-result v1

    .line 268
    .local v1, isSelected:Z
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v3, v5, :cond_0

    .line 269
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 270
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 271
    sget-object v3, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 272
    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 273
    if-eqz v1, :cond_1

    .line 274
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v3, v7, v7, v7}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v4, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v4, v6, v6, v6}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 278
    :goto_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v2

    .line 279
    .local v2, sView:Lcom/htc/sunny2/view/SView;
    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v2}, Lcom/htc/sunny2/view/SView;->cancelAnimation()V

    .line 281
    invoke-virtual {v2, v0}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 284
    .end local v0           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v2           #sView:Lcom/htc/sunny2/view/SView;
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    .line 285
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->invalidateControlBars()V

    move v3, v5

    .line 289
    .end local v1           #isSelected:Z
    :goto_1
    return v3

    .line 276
    .restart local v0       #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .restart local v1       #isSelected:Z
    :cond_1
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v3, v6, v6, v6}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v4, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v4, v7, v7, v7}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    goto :goto_0

    .line 289
    .end local v0           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v1           #isSelected:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 327
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v1, :cond_0

    .line 328
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 343
    :goto_0
    return v0

    .line 330
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 337
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->selectAll(Z)V

    goto :goto_0

    .line 333
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->selectAll(Z)V

    .line 334
    const/16 v1, 0x4e42

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 340
    :sswitch_2
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->selectAll(Z)V

    goto :goto_0

    .line 330
    nop

    :sswitch_data_0
    .sparse-switch
        0x20c013a -> :sswitch_0
        0x20c01d4 -> :sswitch_1
        0x20c01dc -> :sswitch_2
    .end sparse-switch
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 222
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 229
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 225
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onItemSelected(I)Z

    .line 226
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x139c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const v7, 0x2080334

    const v6, 0x20c01dc

    const v4, 0x20c013a

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 294
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v3, :cond_0

    .line 295
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 322
    :goto_0
    return v2

    .line 297
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 298
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v3, v2, :cond_1

    .line 300
    const v3, 0x20c01d4

    const v4, 0x20c01d4

    invoke-interface {p1, v2, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x2080323

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v1

    .line 305
    .local v1, total:I
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 307
    .local v0, pickCount:I
    if-ne v1, v0, :cond_2

    .line 309
    invoke-interface {p1, v2, v6, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x208033c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 311
    :cond_2
    if-nez v0, :cond_3

    .line 313
    invoke-interface {p1, v2, v4, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 317
    :cond_3
    invoke-interface {p1, v5, v4, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 318
    invoke-interface {p1, v2, v6, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x208033c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 6
    .parameter "footer"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v3, 0x1

    .line 235
    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v4, v3, :cond_2

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20c01fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, text:Ljava/lang/String;
    :goto_1
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 242
    .local v0, btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v0, :cond_0

    .line 249
    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsSelectAll:Z

    if-eqz v4, :cond_3

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 237
    .end local v0           #btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v2           #text:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20c0124

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 256
    .restart local v0       #btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    .restart local v2       #text:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 257
    .local v1, count:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 258
    if-lez v1, :cond_4

    :goto_2
    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public setPickerMode(I)V
    .locals 10
    .parameter "mode"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/16 v9, 0x1389

    const/4 v8, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 56
    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v4, p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 57
    :cond_0
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 59
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v4, v5}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onRecycleCache(Z)V

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    .line 62
    .local v3, nStatusH:I
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onGetNormalFooterId()I

    move-result v1

    .line 68
    .local v1, footbarId:I
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onGetNormalHeaderId()I

    move-result v2

    .line 69
    .local v2, headbarId:I
    if-eq v1, v8, :cond_2

    invoke-virtual {p0, v6, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    .line 70
    :cond_2
    if-eq v2, v8, :cond_3

    invoke-virtual {p0, v5, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    .line 71
    :cond_3
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 76
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    goto :goto_0

    .line 80
    .end local v1           #footbarId:I
    .end local v2           #headbarId:I
    :pswitch_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 81
    invoke-virtual {p0, v6, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    .line 82
    const/16 v4, 0x138a

    invoke-virtual {p0, v5, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    .line 83
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {v0, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 90
    invoke-virtual {p0, v6, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    .line 91
    const/16 v4, 0x138a

    invoke-virtual {p0, v5, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    .line 92
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-static {v0, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 97
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public togglePickedIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 114
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method
