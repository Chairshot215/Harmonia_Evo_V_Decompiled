.class public Lcom/htc/album/picker/PickerDeleteScene;
.super Lcom/htc/album/picker/PickerMultiItemBaseScene;
.source "PickerDeleteScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerDeleteScene$1;,
        Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mStartDeleting:Z

.field private mTextConfirm:Ljava/lang/String;

.field private mTextTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 32
    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextTitle:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextConfirm:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    return p1
.end method


# virtual methods
.method protected getConfirmText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextConfirm:Ljava/lang/String;

    return-object v0
.end method

.method protected getGridViewItemStyle()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onBindAdapter()V
    .locals 5

    .prologue
    .line 130
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onBindAdapter()V

    .line 132
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/htc/album/helper/DeleteManager;

    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    new-instance v3, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;-><init>(Lcom/htc/album/picker/PickerDeleteScene;Lcom/htc/album/picker/PickerDeleteScene$1;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v2, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 134
    return-void
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->onCancel()V

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfirm()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    .line 179
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 76
    .local v0, dlg:Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 79
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_0
    return-object v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextTitle:Ljava/lang/String;

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c01fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextConfirm:Ljava/lang/String;

    .line 103
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method protected onItemSelected(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onItemSelected(I)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 9
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 222
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 223
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_0

    .line 224
    const/4 v5, 0x0

    .line 246
    :goto_0
    return v5

    .line 226
    :cond_0
    iget-object v5, p0, Lcom/htc/album/picker/PickerDeleteScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 227
    .local v1, firstViewPos:I
    iget-object v5, p0, Lcom/htc/album/picker/PickerDeleteScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getChildrenCount()I

    move-result v5

    add-int/lit8 v3, v5, 0x4

    .line 228
    .local v3, totalChildren:I
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    .line 230
    .local v4, totalItems:I
    sget-object v5, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "firstViewPos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", totalChildren="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", totalItems="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    move v2, v1

    .local v2, i:I
    :goto_1
    add-int v5, v1, v3

    if-ge v2, v5, :cond_1

    .line 234
    if-lt v2, v4, :cond_2

    .line 242
    :cond_1
    iget-object v5, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v5}, Lcom/htc/album/helper/DeleteManager;->deleteAllMedias()V

    .line 243
    iput-boolean v6, p0, Lcom/htc/album/picker/PickerDeleteScene;->mIsSelectAll:Z

    .line 244
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->invalidateControlBars()V

    move v5, v6

    .line 246
    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/album/picker/PickerDeleteScene;->isItemPicked(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 239
    invoke-virtual {p0, v2}, Lcom/htc/album/picker/PickerDeleteScene;->pickItem(I)V

    .line 232
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const v1, 0x20c01d4

    const/4 v2, 0x1

    .line 210
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 211
    const/4 v0, 0x0

    invoke-interface {p1, v2, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 212
    return v2
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 118
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 120
    :cond_1
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onStop()V

    .line 121
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 146
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onUnbindAdapter()V

    .line 149
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method
