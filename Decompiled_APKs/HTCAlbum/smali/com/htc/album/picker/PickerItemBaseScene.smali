.class public abstract Lcom/htc/album/picker/PickerItemBaseScene;
.super Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.source "PickerItemBaseScene.java"


# static fields
.field protected static final HEADER_PICKER:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mPickerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/htc/album/picker/PickerItemBaseScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerItemBaseScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mPickerMode:I

    return-void
.end method

.method private restoreSelection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 124
    const/4 v4, 0x0

    .line 125
    .local v4, initPos:I
    const v2, 0x7fffffff

    .line 127
    .local v2, firstPosY:I
    iget-object v6, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "external_picker"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 131
    .local v3, fromExternal:Z
    if-nez v3, :cond_2

    .line 133
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 134
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v6, "photo_position"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 135
    if-gez v4, :cond_0

    .line 136
    const/4 v4, 0x0

    .line 139
    :cond_0
    const-string v6, "first_positionY"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 151
    .end local v3           #fromExternal:Z
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6, v4, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(II)V

    .line 152
    return-void

    .line 143
    .restart local v3       #fromExternal:Z
    :cond_2
    iget-object v6, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 144
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->showLatest()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    iget-object v6, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected createCollection()Lcom/htc/album/modules/collection/Collection;
    .locals 4

    .prologue
    .line 38
    iget-object v1, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "picker_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mPickerMode:I

    .line 41
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->createCollection()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 42
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    iget v1, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mPickerMode:I

    invoke-static {v1}, Lcom/htc/album/picker/PickerConstants;->getMediaType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/Collection;->setSupportedMediaTypes(I)V

    .line 44
    return-object v0
.end method

.method protected abstract getBottomMargin()I
.end method

.method public onBindAdapter()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onBindAdapter()V

    .line 83
    invoke-direct {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->restoreSelection()V

    .line 84
    return-void
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 117
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 119
    return-object v1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v2, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, context:Landroid/content/Context;
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v1

    .line 56
    .local v1, gv:Lcom/htc/sunny2/widget/gridview/GridView;
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getBottomMargin()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 59
    return-object v1
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerItemBaseScene;->createControlBar(II)V

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerItemBaseScene;->markSelection(II)V

    .line 94
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPause()V

    .line 95
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerItemBaseScene;->markSelection(II)V

    .line 105
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onUnbindAdapter()V

    .line 106
    return-void
.end method
