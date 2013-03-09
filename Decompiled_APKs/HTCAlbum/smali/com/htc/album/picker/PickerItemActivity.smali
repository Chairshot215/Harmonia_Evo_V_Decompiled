.class public Lcom/htc/album/picker/PickerItemActivity;
.super Lcom/htc/album/TabPluginDevice/ActivityMainLocal;
.source "PickerItemActivity.java"


# static fields
.field static final CLS_NAME_MULTI_PICKER:Ljava/lang/String;

.field static final CLS_NAME_SINGLE_PICKER:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPickerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/album/picker/PickerItemActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerItemActivity;->LOG_TAG:Ljava/lang/String;

    .line 24
    const-class v0, Lcom/htc/album/picker/PickerSingleItemScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerItemActivity;->CLS_NAME_SINGLE_PICKER:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerItemActivity;->CLS_NAME_MULTI_PICKER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;-><init>()V

    .line 22
    const/high16 v0, 0x20

    iput v0, p0, Lcom/htc/album/picker/PickerItemActivity;->mPickerMode:I

    return-void
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 8
    .parameter "caller"

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 85
    sget-object v3, Lcom/htc/album/picker/PickerItemActivity;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[checkCallerIntent] Null Intent found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    sget-object v4, Lcom/htc/album/picker/PickerItemActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[checkCallerIntent] Caller action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v4, "picker_mode"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/album/picker/PickerItemActivity;->mPickerMode:I

    .line 94
    iget v4, p0, Lcom/htc/album/picker/PickerItemActivity;->mPickerMode:I

    if-nez v4, :cond_2

    .line 96
    invoke-static {p0}, Lcom/htc/album/picker/PickerConstants;->getPickerMode(Landroid/app/Activity;)I

    move-result v4

    iput v4, p0, Lcom/htc/album/picker/PickerItemActivity;->mPickerMode:I

    .line 97
    iget v4, p0, Lcom/htc/album/picker/PickerItemActivity;->mPickerMode:I

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "picker_mode"

    iget v5, p0, Lcom/htc/album/picker/PickerItemActivity;->mPickerMode:I

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    :cond_2
    const-string v4, "max_pick"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, limit:I
    if-ne v1, v7, :cond_3

    .line 107
    const-string v4, "max_pick"

    const/16 v5, 0x3e7

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v4, "hide_max_pick_hint"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    :cond_3
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.htc.HTCAlbum.action.MULTIPLE_ITEMS_PICKER_FROM_COLLECTIONS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.htc.album.ACTION_PICK_NF_MULTIPLE_ITEM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    sget-object v0, Lcom/htc/album/picker/PickerItemActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][PickerItemActivity][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/htc/album/picker/PickerItemActivity;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 124
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemActivity;->finish()V

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateScene()Z
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget v1, p0, Lcom/htc/album/picker/PickerItemActivity;->mPickerMode:I

    invoke-static {v1}, Lcom/htc/album/picker/PickerConstants;->isMultiPicker(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/htc/album/picker/PickerItemActivity;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/htc/album/picker/PickerItemActivity;->CLS_NAME_MULTI_PICKER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 40
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/htc/album/picker/PickerItemActivity;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/htc/album/picker/PickerItemActivity;->CLS_NAME_SINGLE_PICKER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 64
    iget v1, p0, Lcom/htc/album/picker/PickerItemActivity;->mPickerMode:I

    invoke-static {v1}, Lcom/htc/album/picker/PickerConstants;->isInternalPicker(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/PickerItemActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 71
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemActivity;->finish()V

    .line 76
    .end local v0           #keyguardManager:Landroid/app/KeyguardManager;
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->onStop()V

    .line 77
    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    sget-object v1, Lcom/htc/album/picker/PickerItemActivity;->CLS_NAME_MULTI_PICKER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    new-instance v0, Lcom/htc/album/picker/PickerMultiItemScene;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/picker/PickerMultiItemScene;-><init>()V

    .line 51
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 52
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 54
    :cond_1
    return-object v0

    .line 48
    :cond_2
    sget-object v1, Lcom/htc/album/picker/PickerItemActivity;->CLS_NAME_SINGLE_PICKER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Lcom/htc/album/picker/PickerSingleItemScene;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/picker/PickerSingleItemScene;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0
.end method
