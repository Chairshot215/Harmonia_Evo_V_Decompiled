.class public Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;
.source "ActivityMainFriendsPicker.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;


# static fields
.field private static final FOOTER_BAR_LIVE_FRIEND_PICKER_VIEW:I = 0x14

.field private static final HEADER_BAR_LIVE_FRIEND_PICKER_VIEW:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-void
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 3
    .parameter "nLayoutType"

    .prologue
    .line 146
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainFriendsPicker][RelayoutPageView]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public initPageComponents()V
    .locals 6

    .prologue
    .line 114
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_0

    .line 116
    new-instance v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setDataRequest(Ljava/lang/Object;)V

    .line 124
    new-instance v3, Lcom/htc/album/SocialNetwork/ListViewFriends;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/AdapterBase;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v2, v4, p0, v5}, Lcom/htc/album/SocialNetwork/ListViewFriends;-><init>(Lcom/htc/opensense2/album/AdapterBase;Lcom/htc/opensense2/album/DisplayManagerInterface;Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    if-eqz v3, :cond_1

    .line 126
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/DisplayManager;->setMainViewContainerId(I)V

    .line 127
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/DisplayManager;->addTemplate(Lcom/htc/opensense2/album/ViewTemplateBase;)Z

    .line 128
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/ViewTemplateBase;->getId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/opensense2/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v2, :cond_2

    .line 134
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 136
    :cond_2
    const v2, 0x7f0a0060

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 137
    .local v1, viewRoot:Landroid/view/ViewGroup;
    const v2, 0x7f0a0052

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    .local v0, contentView:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v2, v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 139
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 140
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v3, 0x2

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 141
    return-void
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 70
    return-void
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
    .line 330
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 333
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onConfirm()V

    goto :goto_0

    .line 336
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onCancel()V

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onCreate]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->requestWindowFeature(I)Z

    .line 59
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->setContentView(I)V

    .line 60
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 63
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 65
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onCreate]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 315
    sget-object v3, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][ActivityMainFriendsPicker][onCreateFooterBar]  "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 319
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 320
    const/4 v3, 0x5

    const v5, 0x20c01d6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 321
    const/4 v3, 0x4

    const v5, 0x7f0b0001

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 323
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 305
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HtcAlbum][ActivityMainFriendsPicker][onCreateHeaderBar]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 310
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 85
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 87
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onMenuDeSelectAll()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e2c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 186
    return-void
.end method

.method public onMenuRefresh()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e28

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 190
    return-void
.end method

.method public onMenuSelectAll()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e2b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 182
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x2738

    const/4 v3, 0x0

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 243
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onMessageHandler(Landroid/os/Message;)V

    .line 246
    :goto_0
    :sswitch_0
    return-void

    .line 233
    :sswitch_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 236
    :sswitch_2
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 239
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mLoadingText:Ljava/lang/String;

    .line 240
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_3
        0x274f -> :sswitch_1
        0x2750 -> :sswitch_2
        0x2761 -> :sswitch_0
        0x4e84 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 218
    :goto_0
    return v0

    .line 200
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onMenuSelectAll()V

    .line 201
    const/4 v0, 0x1

    .line 203
    goto :goto_0

    .line 206
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onMenuDeSelectAll()V

    .line 207
    const/4 v0, 0x1

    .line 209
    goto :goto_0

    .line 212
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onMenuRefresh()V

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x20c013a -> :sswitch_0
        0x20c01dc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 80
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v4, 0x20c01dc

    const v3, 0x20c013a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 155
    invoke-interface {p1, v5, v3, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 156
    .local v2, itemSelectAll:Landroid/view/MenuItem;
    invoke-interface {p1, v5, v4, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 157
    .local v0, itemDeSelectAll:Landroid/view/MenuItem;
    const/4 v3, 0x5

    const v4, 0x20c0202

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 159
    .local v1, itemRefresh:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 161
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    const v3, 0x2080334

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 165
    :cond_0
    if-eqz v0, :cond_1

    .line 167
    const v3, 0x208033c

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 168
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 171
    :cond_1
    if-eqz v1, :cond_2

    .line 173
    const v3, 0x208033b

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 174
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    :cond_2
    return v6
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 414
    return-void
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 378
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 75
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method protected showDialogErrorCommunication()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 254
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 259
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$1;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 266
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected showDialogNoConnection()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 270
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c0162

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0156

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 275
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c0200

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 293
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$3;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$3;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 300
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public syncExternalRequest()V
    .locals 4

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    const-string v2, "service_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mUserID:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 106
    :cond_1
    :goto_0
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainFriendsPicker][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainFriendsPicker][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2
    return-void

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method
