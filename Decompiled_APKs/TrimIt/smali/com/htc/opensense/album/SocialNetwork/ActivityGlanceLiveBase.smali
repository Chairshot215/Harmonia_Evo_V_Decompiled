.class public abstract Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;
.super Lcom/htc/opensense/album/PresentationActivityBase;
.source "ActivityGlanceLiveBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/album/PresentationActivityBase",
        "<",
        "Lcom/htc/opensense/album/AdapterBase;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

.field private mLiveFullscreenTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

.field private mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/htc/opensense/album/PresentationActivityBase;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    .line 23
    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    .line 24
    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFullscreenTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    return-void
.end method


# virtual methods
.method protected abstract createFilmstripview()Lcom/htc/opensense/album/ViewTemplateBase;
.end method

.method protected abstract createFullScreen()Lcom/htc/opensense/album/ViewTemplateBase;
.end method

.method protected abstract createGridView()Lcom/htc/opensense/album/ViewTemplateBase;
.end method

.method protected abstract createViewAdapter()Lcom/htc/opensense/album/AdapterBase;
.end method

.method public initViewAdapter()Z
    .locals 4

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->createViewAdapter()Lcom/htc/opensense/album/AdapterBase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_0

    move v1, v0

    .line 179
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 176
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setDataRequest(Ljava/lang/Object;)V

    .line 178
    const/4 v0, 0x1

    move v1, v0

    .line 179
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/album/PresentationActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    const/16 v1, 0x1390

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "com.htc.album"

    const-string v2, "com.htc.album.TabPluginDevice.ActivityGlance"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "goFinish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->startActivity(Landroid/content/Intent;)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->finish()V

    .line 124
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 28
    sget-object v4, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ActivityGlanceLiveBase][onCreate]: "

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1}, Lcom/htc/opensense/album/PresentationActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v4, 0x209003a

    invoke-virtual {p0, v4}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->initViewAdapter()Z

    move-result v4

    if-ne v2, v4, :cond_6

    .line 35
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 36
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onCreate()V

    .line 43
    .end local v0           #adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    const v5, 0x20200dd

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/DisplayManager;->setMainViewContainerId(I)V

    .line 44
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    const v5, 0x20200de

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/DisplayManager;->setControlBarViewContainerId(I)V

    .line 45
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    const v5, 0x20200df

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/DisplayManager;->setControlBarViewContainerId(I)V

    .line 46
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    const v5, 0x20200dc

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/DisplayManager;->setControlBarViewContainerId(I)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->createGridView()Lcom/htc/opensense/album/ViewTemplateBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_0

    .line 49
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/DisplayManager;->addTemplate(Lcom/htc/opensense/album/ViewTemplateBase;)Z

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->createFilmstripview()Lcom/htc/opensense/album/ViewTemplateBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_1

    .line 52
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/DisplayManager;->addTemplate(Lcom/htc/opensense/album/ViewTemplateBase;)Z

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->createFullScreen()Lcom/htc/opensense/album/ViewTemplateBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFullscreenTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_2

    .line 55
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFullscreenTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/DisplayManager;->addTemplate(Lcom/htc/opensense/album/ViewTemplateBase;)Z

    .line 57
    :cond_2
    const/4 v1, 0x0

    .line 58
    .local v1, szPhotoId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "photo_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    .line 63
    :cond_4
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_7

    .line 64
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v2}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->enablePresentation(II)V

    .line 81
    :cond_5
    :goto_1
    return-void

    .line 40
    .end local v1           #szPhotoId:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->finish()V

    goto/16 :goto_0

    .line 65
    .restart local v1       #szPhotoId:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_9

    .line 66
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mStartBundle:Landroid/os/Bundle;

    const-string v7, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :goto_2
    invoke-virtual {v4, v5, v6, v2}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_2

    .line 67
    :cond_9
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_b

    .line 68
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mStartBundle:Landroid/os/Bundle;

    const-string v7, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    :goto_3
    invoke-virtual {v4, v5, v6, v2}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_3

    .line 69
    :cond_b
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFullscreenTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_5

    .line 70
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFullscreenTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mStartBundle:Landroid/os/Bundle;

    const-string v7, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    :goto_4
    invoke-virtual {v4, v5, v6, v2}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    goto :goto_1

    :cond_c
    move v2, v3

    goto :goto_4

    .line 74
    :cond_d
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFullscreenTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_e

    .line 75
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFullscreenTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mStartBundle:Landroid/os/Bundle;

    const-string v7, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    :goto_5
    invoke-virtual {v4, v5, v6, v2}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 78
    :cond_e
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v2, :cond_5

    .line 79
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFilmstripTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v2}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveGridviewTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->enablePresentation(II)V

    goto/16 :goto_1

    :cond_f
    move v2, v3

    .line 75
    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 143
    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityGlanceLiveBase][onDestroy]: "

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-super {p0}, Lcom/htc/opensense/album/PresentationActivityBase;->onDestroy()V

    .line 147
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 150
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onDestroy()V

    .line 152
    .end local v0           #adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 187
    const-string v1, "from_outside"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 188
    .local v0, fromOutside:Z
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_outside"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 127
    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityGlanceLiveBase][onPause]: "

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-super {p0}, Lcom/htc/opensense/album/PresentationActivityBase;->onPause()V

    .line 131
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 134
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onPause()V

    .line 136
    .end local v0           #adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 91
    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityGlanceLiveBase][onResume]: "

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Lcom/htc/opensense/album/PresentationActivityBase;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const/16 v1, 0x272c

    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->showDialog(I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 102
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onResume()V

    goto :goto_0
.end method

.method public setFullscreen(Z)V
    .locals 4
    .parameter "bFullscreen"

    .prologue
    const/16 v1, 0x400

    .line 160
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 161
    .local v0, win:Landroid/view/Window;
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 166
    :goto_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityGlanceLiveBase][setFullscreen]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 164
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public shouldFilterOut(I)Z
    .locals 1
    .parameter "nFocusId"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ActivityGlanceLiveBase;->mLiveFullscreenTemplate:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
