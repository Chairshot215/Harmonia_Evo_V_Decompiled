.class public Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;
.super Lcom/htc/opensense2/widget/ActivityMainBase;
.source "ActivityMainMediaList.java"


# instance fields
.field private final DLNA_DMC_PHOTO:I

.field private final DLNA_DMC_VIDEO:I

.field private final DLNA_FULLSCREENVIEW:I

.field private final DLNA_GRIDVIEW:I

.field private final LOG_TAG:Ljava/lang/String;

.field private bUpdateDMR:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;-><init>()V

    .line 16
    const-string v0, "ActivityMainMediaList"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->LOG_TAG:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->DLNA_GRIDVIEW:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->DLNA_FULLSCREENVIEW:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->DLNA_DMC_PHOTO:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->DLNA_DMC_VIDEO:I

    .line 22
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->bUpdateDMR:Z

    return-void
.end method

.method private launchDMC(I)Z
    .locals 8
    .parameter "sceneId"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 178
    const/4 v6, 0x0

    .line 179
    .local v6, bRet:Z
    invoke-static {p0, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, dmr:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMS(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, dms:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 184
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 186
    const-string v3, ""

    const-string v4, "invalid"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 187
    const/4 v6, 0x1

    .line 188
    const-string v0, "ActivityMainMediaList"

    const-string v3, "[HTCAlbum][ActivityMainMediaList][launchDMC]: DMC Photo"

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 199
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_1

    .line 201
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_1
    return v6

    .line 190
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 192
    const-string v3, ""

    const-string v4, "invalid"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 193
    const/4 v6, 0x1

    .line 194
    const-string v0, "ActivityMainMediaList"

    const-string v3, "[HTCAlbum][ActivityMainMediaList][launchDMC]: DMC Video"

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDMRSelected()V
    .locals 3

    .prologue
    .line 163
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->bUpdateDMR:Z

    if-nez v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->bUpdateDMR:Z

    .line 167
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 172
    const-string v2, "Render"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, selectDMR:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f030029

    return v0
.end method

.method protected getIntentBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 147
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 149
    const-string v2, "browse_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 150
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 152
    const-string v2, "DLNA_CONTENT"

    const-string v3, "DLNA_CONTENT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getSceneIdentity()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, sceneId:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    move v3, v2

    .line 141
    .end local v2           #sceneId:I
    .local v3, sceneId:I
    :goto_0
    return v3

    .line 117
    .end local v3           #sceneId:I
    .restart local v2       #sceneId:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    move v3, v2

    .line 119
    .end local v2           #sceneId:I
    .restart local v3       #sceneId:I
    goto :goto_0

    .line 121
    .end local v3           #sceneId:I
    .restart local v2       #sceneId:I
    :cond_1
    const-string v4, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    const/4 v2, 0x0

    .line 124
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->bUpdateDMR:Z

    :cond_2
    :goto_1
    move v3, v2

    .line 141
    .end local v2           #sceneId:I
    .restart local v3       #sceneId:I
    goto :goto_0

    .line 126
    .end local v3           #sceneId:I
    .restart local v2       #sceneId:I
    :cond_3
    const-string v4, "com.htc.album.action.DLNA_VIEW_SERVER_PHOTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    const/4 v2, 0x1

    .line 129
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->bUpdateDMR:Z

    goto :goto_1

    .line 131
    :cond_4
    const-string v4, "com.htc.album.action.LAUNCH_DMC_PHOTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 133
    const/4 v2, 0x2

    goto :goto_1

    .line 135
    :cond_5
    const-string v4, "com.htc.album.action.LAUNCH_DMC_VIDEO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    const/4 v2, 0x3

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const-string v0, "ActivityMainMediaList"

    const-string v1, "[HTCAlbum][ActivityMainMediaList][onCreate]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onCreateScene()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 65
    const-string v3, "ActivityMainMediaList"

    const-string v4, "[HTCAlbum][ActivityMainMediaList][onCreateScene]..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->getSceneIdentity()I

    move-result v1

    .line 69
    .local v1, sceneId:I
    const-string v3, "ActivityMainMediaList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ActivityMainMediaList][onCreateScene]sceneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->updateDMRSelected()V

    .line 73
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 75
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->launchDMC(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->finish()V

    .line 94
    :goto_0
    return v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->getIntentBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->finish()V

    .line 86
    const/4 v2, 0x0

    goto :goto_0

    .line 89
    :cond_2
    if-ne v1, v2, :cond_3

    .line 90
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneDlnaFullscreen"

    invoke-virtual {v3, v0, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneDlnaGridview"

    invoke-virtual {v3, v0, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 32
    const-string v0, "ActivityMainMediaList"

    const-string v1, "[HTCAlbum][ActivityMainMediaList][onNewIntent]: re-CreateScene"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onNewIntent(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->setIntent(Landroid/content/Intent;)V

    .line 36
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 37
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->onCreateScene()Z

    .line 38
    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szSceneIdentity"

    .prologue
    .line 45
    const-string v1, "ActivityMainMediaList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainMediaList][sceneFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneDlnaGridview"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;-><init>()V

    .line 59
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-string v1, "SceneDlnaFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "ActivityMainMediaList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainMediaList][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
