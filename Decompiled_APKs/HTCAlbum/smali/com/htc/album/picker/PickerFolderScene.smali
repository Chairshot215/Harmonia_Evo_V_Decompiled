.class public Lcom/htc/album/picker/PickerFolderScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.source "PickerFolderScene.java"


# static fields
.field protected static final HEADER_PICKER:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/album/picker/PickerFolderScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerFolderScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    return-void
.end method


# virtual methods
.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/album/picker/PickerFolderScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mediaType"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/album/picker/PickerFolderScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 207
    sget-object v1, Lcom/htc/album/picker/PickerFolderScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onActivityResult]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-eq v4, p2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/high16 v1, 0x30

    if-ne p1, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 215
    .local v0, activity:Landroid/app/Activity;
    if-eqz p3, :cond_2

    .line 217
    const-string v1, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {v0, v4, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 224
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 222
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/htc/album/picker/PickerFolderScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 100
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 102
    return-object v1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 44
    iget-object v2, p0, Lcom/htc/album/picker/PickerFolderScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, context:Landroid/content/Context;
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v1

    .line 46
    .local v1, gv:Lcom/htc/sunny2/widget/gridview/GridView;
    invoke-static {v0, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 51
    return-object v1
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnterScene(Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerFolderScene;->createControlBar(II)V

    .line 83
    return-void
.end method

.method public onItemSelected(I)V
    .locals 17
    .parameter "index"

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/picker/PickerFolderScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 134
    .local v4, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v4, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v14, "com.htc.HTCAlbum.DUMMY"

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/picker/PickerFolderScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .local v2, activity:Landroid/app/Activity;
    move-object v14, v2

    .line 141
    check-cast v14, Lcom/htc/album/picker/PickerFolderActivity;

    invoke-virtual {v14}, Lcom/htc/album/picker/PickerFolderActivity;->getPickerMode()I

    move-result v11

    .line 143
    .local v11, mode:I
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 146
    .local v12, request:Landroid/content/Intent;
    const-string v14, "mediaType"

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v15

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 147
    .local v10, mediaType:I
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "MimeTypeFilter"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, filter:Ljava/lang/String;
    invoke-virtual {v4, v10}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSupportedMediaTypes(I)V

    .line 150
    invoke-virtual {v4, v6}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setFilter(Ljava/lang/String;)V

    .line 152
    invoke-static {v11}, Lcom/htc/album/picker/PickerConstants;->isFolderPicker(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 154
    sget-object v14, Lcom/htc/album/picker/PickerFolderScene;->LOG_TAG:Ljava/lang/String;

    const-string v15, "[onListItemClick] Folder Picker..."

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getQueyParams()Landroid/content/Intent;

    move-result-object v13

    .line 156
    .local v13, result:Landroid/content/Intent;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, folderType:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, bucketId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, folderName:Ljava/lang/String;
    const-string v14, "folder_type"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/4 v14, -0x1

    invoke-virtual {v2, v14, v13}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 168
    .end local v3           #bucketId:Ljava/lang/String;
    .end local v8           #folderName:Ljava/lang/String;
    .end local v9           #folderType:Ljava/lang/String;
    .end local v13           #result:Landroid/content/Intent;
    :cond_2
    sget-object v14, Lcom/htc/album/picker/PickerFolderScene;->LOG_TAG:Ljava/lang/String;

    const-string v15, "[onListItemClick] item picker..."

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, action:Ljava/lang/String;
    const-string v14, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 173
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 176
    :cond_3
    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v5, extras:Landroid/os/Bundle;
    const-string v14, "collection_info"

    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    invoke-virtual {v12, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 180
    const-string v14, "picker_mode"

    invoke-virtual {v12, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v14, "3d_image_index_list"

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->show3DVirtualFolder()Z

    move-result v15

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string v14, "external_picker"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-class v14, Lcom/htc/album/picker/PickerItemActivity;

    invoke-virtual {v12, v2, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 185
    .local v7, flags:I
    sget-object v14, Lcom/htc/album/picker/PickerFolderScene;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[onItemSelected] Caller with flags, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/high16 v14, 0x200

    and-int/2addr v14, v7

    if-eqz v14, :cond_4

    .line 189
    sget-object v14, Lcom/htc/album/picker/PickerFolderScene;->LOG_TAG:Ljava/lang/String;

    const-string v15, "[onItemSelected] Folder finished by Intent.FLAG_ACTIVITY_FORWARD_RESULT"

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 195
    :cond_4
    const/high16 v14, 0x30

    invoke-virtual {v2, v12, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 86
    sget-object v0, Lcom/htc/album/picker/PickerFolderScene;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][PickerFolderScene][onNewAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onNewAdapter(Landroid/os/Bundle;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/picker/PickerFolderScene;->onEnableProgressLoading(Z)V

    .line 89
    iget-object v0, p0, Lcom/htc/album/picker/PickerFolderScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->enableCacheUpdate(Z)V

    .line 90
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 4
    .parameter "bIsLoading"

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onNotifyUpdating(Z)V

    .line 234
    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 235
    .local v0, nLoadState:I
    sget-object v1, Lcom/htc/album/picker/PickerFolderScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][PickerFolderScene][onNotifyUpdating]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-nez p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 237
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/PickerFolderScene;->onEnableProgressLoading(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method protected onSceneLoading()V
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/htc/album/picker/PickerFolderScene;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][PickerFolderScene][onSceneLoading]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/picker/PickerFolderScene;->onEnableProgressLoading(Z)V

    .line 246
    return-void
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
