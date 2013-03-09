.class public Lcom/htc/album/TabPluginDevice/SceneLocalError;
.super Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.source "SceneLocalError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/SceneLocalBase",
        "<",
        "Lcom/htc/sunny2/view/SView;",
        "Lcom/htc/album/TabPluginDevice/AdapterLocalError;",
        ">;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalError"


# instance fields
.field private mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "AdapterLocalError"

    return-object v0
.end method

.method public enableHostPadding()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 291
    const/16 v0, 0xff

    return v0
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v1, 0x0

    const-string v2, "SceneLocalFolder"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1234
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "SceneLocalError"

    const-string v1, "[HTCAlbum][SceneLocalError][onBindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onBindAdapter()V

    .line 169
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v3

    .line 231
    :cond_1
    const-string v1, "SceneLocalError"

    const-string v2, "[HTCAlbum][SceneLocalError][onBroadcastMediaConnected]"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 233
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 242
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v3

    .line 245
    :cond_1
    const-string v1, "SceneLocalError"

    const-string v2, "[HTCAlbum][SceneLocalError][onBroadcastMediaDisconnected]"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 247
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    return-void
.end method

.method public onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 3

    .prologue
    .line 62
    const-string v0, "SceneLocalError"

    const-string v1, "[HTCAlbum][SceneLocalError][onCreateScene]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/htc/album/helper/ErrorViewManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/helper/ErrorViewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    .line 68
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ErrorViewManager;->initialize(Landroid/app/Activity;)V

    .line 70
    new-instance v0, Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    return-object v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onLeaveScene()V
    .locals 3

    .prologue
    .line 186
    const-string v1, "SceneLocalError"

    const-string v2, "[HTCAlbum][SceneLocalError][onLeaveScene]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v1}, Lcom/htc/album/helper/ErrorViewManager;->onDestroy()V

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    .line 189
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 190
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onLeaveScene()V

    .line 193
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 129
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 143
    :goto_0
    return v1

    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, bResult:Z
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v2, hideShowAlbum:Landroid/content/Intent;
    const-class v3, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    const/16 v3, 0x1234

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00ac
        :pswitch_0
    .end packed-switch
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 262
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 268
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onMessage(Landroid/os/Message;)Z

    .line 270
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 265
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onRefreshAdapter()V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x138f
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 81
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 83
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->getAdapterMediaType()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 87
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->enableObserverNotify()V

    .line 88
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v1, p0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 89
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareAnimation(I)Z

    .line 214
    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ErrorViewManager;->setVisibility(I)V

    .line 220
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f0b00ac

    const/4 v4, 0x0

    .line 103
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v0

    .line 107
    .local v0, bIsStorageReady:Z
    if-nez v0, :cond_0

    move v4, v1

    .line 123
    :goto_0
    return v4

    .line 110
    :cond_0
    const-string v5, "SceneLocalError"

    const-string v6, "[HTCAlbum][SceneLocalError][onPrepareOptionsMenu]... "

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 113
    .local v2, intent:Landroid/content/Intent;
    const/4 v5, 0x1

    const-string v6, "in_pickermode"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v5, v6, :cond_1

    .line 115
    const-string v5, "SceneLocalError"

    const-string v6, "[HTCAlbum][SceneLocalError][onPrepareOptionsMenu]: picker mode skip..."

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {p1, v4, v7, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 120
    .local v3, item:Landroid/view/MenuItem;
    const v4, 0x208031f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 122
    const/4 v1, 0x1

    move v4, v1

    .line 123
    goto :goto_0
.end method

.method protected onRefreshAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 274
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    .line 280
    const/16 v3, 0x138f

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onRemoveMessage(I)V

    .line 281
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->unregisterObserver()V

    .line 283
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 284
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 285
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v6, v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(ZLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, szState:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v4, 0x0

    const-string v5, "SceneLocalFolder"

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 287
    const-string v3, "SceneLocalError"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalError][onRefreshAdapter]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 177
    const-string v0, "SceneLocalError"

    const-string v1, "[HTCAlbum][SceneLocalError][onSendToBackground]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 179
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ErrorViewManager;->detach()V

    .line 181
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->unregisterObserver()V

    .line 182
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 147
    const-string v2, "SceneLocalError"

    const-string v3, "[HTCAlbum][SceneLocalError][onSendToForeground]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 149
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/ErrorViewManager;->attachTo(Landroid/view/ViewGroup;)V

    .line 150
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 152
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 154
    const/16 v1, 0xff

    .line 155
    .local v1, mediaType:I
    const-string v2, "com.htc.album.action.ALL_VIDEOS"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/16 v1, 0x10

    .line 158
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onUpdateErrorView(I)V

    .line 160
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_1

    .line 161
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->registerObserver()V

    .line 164
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "SceneLocalError"

    const-string v1, "[HTCAlbum][SceneLocalError][onUnbindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onUnbindAdapter()V

    .line 174
    return-void
.end method

.method public onUpdateErrorView(I)V
    .locals 3
    .parameter "nMediaType"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorState(Landroid/content/Context;IZ)Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;

    move-result-object v0

    .line 257
    .local v0, errMsg:Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->getIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->setErrorImage(I)V

    .line 258
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->getMsg()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->setErrorText(I)V

    .line 259
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "SceneLocalError"

    return-object v0
.end method
