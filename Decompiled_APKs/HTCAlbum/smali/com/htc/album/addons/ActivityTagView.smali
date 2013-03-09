.class public Lcom/htc/album/addons/ActivityTagView;
.super Lcom/htc/opensense2/album/TemplateActivityBase;
.source "ActivityTagView.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/ActivityTagView$1;,
        Lcom/htc/album/addons/ActivityTagView$Ball;,
        Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/TemplateActivityBase",
        "<",
        "Lcom/htc/opensense2/album/AdapterBase;",
        ">;",
        "Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;"
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBall:Landroid/view/View;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurMode:I

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;-><init>()V

    .line 26
    const-class v0, Lcom/htc/album/addons/ActivityTagView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->LOG_TAG:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBall:Landroid/view/View;

    .line 29
    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/ActivityTagView;->mCurMode:I

    .line 186
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/ActivityTagView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 0
    .parameter "nLayout"

    .prologue
    .line 137
    return-void
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/ActivityTagView;Lcom/htc/album/addons/ActivityTagView$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/ActivityTagView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public initPageComponents()V
    .locals 7

    .prologue
    .line 96
    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    const v4, 0x7f0a0053

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/DisplayManager;->setMainViewContainerId(I)V

    .line 97
    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    const v4, 0x7f0a0052

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/DisplayManager;->setControlBarViewContainerId(I)V

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, template:Lcom/htc/opensense2/album/ViewTemplateBase;
    const/4 v1, 0x0

    .line 101
    .local v1, szService:Ljava/lang/String;
    const/4 v0, 0x0

    .line 102
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    const-string v3, "service"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_0
    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    :goto_0
    new-instance v2, Lcom/htc/album/addons/LocalTagView;

    .end local v2           #template:Lcom/htc/opensense2/album/ViewTemplateBase;
    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v4, p0, Lcom/htc/album/addons/ActivityTagView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-direct {v2, v3, v4}, Lcom/htc/album/addons/LocalTagView;-><init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense2/album/DisplayManagerInterface;)V

    .line 128
    .restart local v2       #template:Lcom/htc/opensense2/album/ViewTemplateBase;
    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v3, v2}, Lcom/htc/opensense2/album/DisplayManager;->addTemplate(Lcom/htc/opensense2/album/ViewTemplateBase;)Z

    .line 129
    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/ViewTemplateBase;->getId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/opensense2/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 132
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->enableBroadcastReceiver()V

    .line 133
    return-void

    .line 116
    :cond_1
    new-instance v3, Lcom/htc/album/addons/AdaterTagPhotos;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/AdaterTagPhotos;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 117
    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/album/addons/AdaterTagPhotos;

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/album/addons/AdaterTagPhotos;->setForwardIntent(Landroid/content/Intent;)V

    .line 118
    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/album/addons/AdaterTagPhotos;

    iget-object v4, p0, Lcom/htc/album/addons/ActivityTagView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/htc/album/addons/AdaterTagPhotos;->setUIHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/ActivityTagView;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->syncExternalRequest()V

    .line 43
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->initPageComponents()V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onDestroy()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onResume()V

    .line 69
    iget v0, p0, Lcom/htc/album/addons/ActivityTagView;->mCurMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->finish()V

    .line 73
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][AcitityTagView][onResume]: ExternalStorage is not exist !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->enableBroadcastReceiver()V

    .line 53
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onStart()V

    .line 54
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/ActivityTagView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onStop()V

    .line 63
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 0
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 230
    return-void
.end method

.method public resetMainViewContainerId()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/DisplayManager;->setMainViewContainerId(I)V

    .line 93
    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 220
    return-void
.end method

.method public syncExternalRequest()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    const-string v1, "upload_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/album/addons/ActivityTagView;->mCurMode:I

    .line 89
    return-void
.end method
