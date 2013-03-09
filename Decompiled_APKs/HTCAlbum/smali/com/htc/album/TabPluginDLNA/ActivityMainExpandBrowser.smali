.class public Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;
.super Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;
.source "ActivityMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExpandListView"


# instance fields
.field private mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

.field protected mChildAlreadyAppend:Z

.field protected mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

.field protected mCurStartIdx:J

.field protected mErrorReason:Ljava/lang/String;

.field protected mErrorTitle:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemRequested:Ljava/lang/Object;

.field private mLayoutEmptyView:Landroid/widget/RelativeLayout;

.field private mLayoutTitle:Landroid/widget/RelativeLayout;

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field protected mLoadingText:Ljava/lang/String;

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field protected mbDestroy:Z

.field protected timerSearchDeviceCode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutTitle:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 51
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 52
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    .line 53
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 55
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLoadingText:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurStartIdx:J

    .line 60
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 62
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemRequested:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->timerSearchDeviceCode:I

    .line 65
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mbDestroy:Z

    .line 66
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 320
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$2;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 332
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$3;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$3;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    .line 350
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$4;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$4;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 959
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->onLaunchMediaListPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->onLaunchSettings_Wireless()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    return-object v0
.end method

.method private expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 284
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->getChildrenCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 285
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 287
    :cond_0
    if-nez p1, :cond_2

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, serverID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, containerID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->IsContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->cancelBrowse(J)V

    .line 297
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurServerID:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurContainerID:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurContainerName:Ljava/lang/String;

    .line 300
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 301
    invoke-virtual {p0, v4, v5, v4, v5}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->initBrowse(JJ)V

    .line 302
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 304
    :cond_3
    if-eqz v1, :cond_1

    .line 307
    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->cancelBrowse(J)V

    .line 309
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurServerID:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurServerName:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurServerImg:Ljava/lang/String;

    .line 312
    const-string v2, "0"

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurContainerID:Ljava/lang/String;

    .line 313
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurContainerName:Ljava/lang/String;

    .line 314
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 315
    invoke-virtual {p0, v4, v5, v4, v5}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->initBrowse(JJ)V

    .line 316
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0
.end method

.method private onLaunchMediaListPage()V
    .locals 10

    .prologue
    .line 375
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v6, :cond_0

    .line 417
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServiceDirectory()Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    move-result-object v5

    .line 379
    .local v5, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerInfo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 381
    .local v4, serverInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->addCurrentPageInfo()V

    .line 383
    const-string v6, "ExpandListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLaunchMediaListPage : top:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bottom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 388
    .local v0, bunBrowse:Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 390
    const-string v6, "server_id"

    iget-object v7, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v6, "server_name"

    iget-object v7, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_1
    if-eqz v5, :cond_2

    .line 396
    const-string v6, "directory_info"

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 401
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_3

    instance-of v6, v2, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    if-eqz v6, :cond_3

    .line 403
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 404
    .local v3, parentIntent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 406
    const-string v6, "directmode"

    const-string v7, "directmode"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    .end local v3           #parentIntent:Landroid/content/Intent;
    :cond_3
    const-string v6, "browse_info"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 411
    const-class v6, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 412
    const/high16 v6, 0x400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->startActivity(Landroid/content/Intent;)V

    .line 416
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->finish()V

    goto/16 :goto_0
.end method

.method private onLaunchSettings_Wireless()V
    .locals 2

    .prologue
    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 630
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 631
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 632
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 633
    return-void
.end method

.method private setBrowseDirectory(Ljava/util/LinkedList;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p1, serverList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-nez v18, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getParent()Landroid/app/Activity;

    move-result-object v16

    .line 984
    .local v16, parentActivity:Landroid/app/Activity;
    if-eqz v16, :cond_0

    .line 987
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 989
    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 990
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_0

    .line 993
    const-string v18, "com.htc.album.action.DLNA_BROWSE_DMS_RECOVERY"

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 996
    const-string v18, "browse_info"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 998
    .local v3, bunBrowse:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 1001
    const-string v18, "server_id"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurServerID:Ljava/lang/String;

    .line 1002
    const-string v18, "server_name"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurServerName:Ljava/lang/String;

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1007
    const-string v18, "directory_info"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1009
    .local v10, directoryInfo:Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1011
    .local v9, dirInfoSize:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-lt v9, v0, :cond_0

    .line 1014
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v17

    .line 1016
    .local v17, serverCount:I
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1018
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 1020
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1022
    .local v15, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1024
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1029
    .end local v15           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1032
    const/4 v4, 0x0

    .line 1033
    .local v4, childSelectedID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1034
    .local v6, childSelectedName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1036
    .local v5, childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const/4 v13, 0x1

    .line 1037
    .local v13, index:I
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurContainerID:Ljava/lang/String;

    .line 1038
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurContainerName:Ljava/lang/String;

    .line 1040
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mbVirtualFolderAdd:Z

    .line 1042
    :goto_2
    if-ge v13, v9, :cond_3

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurContainerID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 1046
    const-string v18, "ExpandListView"

    const-string v19, "setBrowseDirectory: current container id invalid"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mbVirtualFolderAdd:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1096
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getCurrentPageInfo()V

    .line 1099
    :cond_4
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1018
    .end local v4           #childSelectedID:Ljava/lang/String;
    .end local v5           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v6           #childSelectedName:Ljava/lang/String;
    .end local v13           #index:I
    .restart local v15       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1050
    .end local v15           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v4       #childSelectedID:Ljava/lang/String;
    .restart local v5       #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v6       #childSelectedName:Ljava/lang/String;
    .restart local v13       #index:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 1052
    const-string v18, "ExpandListView"

    const-string v19, "setBrowseDirectory: current item invalid"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1056
    :cond_7
    move v8, v13

    .line 1058
    .local v8, curBrowseCacheIndex:I
    add-int/lit8 v13, v13, 0x4

    .line 1059
    if-ge v13, v9, :cond_8

    .line 1061
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #childSelectedID:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1062
    .restart local v4       #childSelectedID:Ljava/lang/String;
    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #childSelectedName:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1065
    .restart local v6       #childSelectedName:Ljava/lang/String;
    :cond_8
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1066
    .local v7, childrenList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->queryRecoveryContentList(Ljava/lang/String;Ljava/util/LinkedList;)Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-result-object v5

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-lez v18, :cond_9

    .line 1071
    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/htc/widget/MoreExpandableHtcListView;->expandAndSetChildrenWithOutAnimation(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 1073
    const-string v18, "ExpandListView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[setBrowseDirecotry]ExpandChild : Container: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->addDirectoryInfo()V

    .line 1075
    add-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v18, v8, 0x3

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->addPagesInfo(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :cond_9
    :goto_4
    if-eqz v4, :cond_3

    .line 1087
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurContainerID:Ljava/lang/String;

    .line 1088
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurContainerName:Ljava/lang/String;

    .line 1089
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1091
    const/4 v4, 0x0

    .line 1093
    goto/16 :goto_2

    .line 1076
    :catch_0
    move-exception v11

    .line 1077
    .local v11, e:Ljava/lang/Exception;
    const-string v18, "ExpandListView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setBrowseDirectory error:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private startSearchingTimer()V
    .locals 4

    .prologue
    .line 948
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->timerSearchDeviceCode:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 949
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->timerSearchDeviceCode:I

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 950
    const-string v0, "ExpandListView"

    const-string v1, "startSearchingTimer"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method private stopSearchingTimer()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->timerSearchDeviceCode:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 956
    const-string v0, "ExpandListView"

    const-string v1, "stopSearchingTimer"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void
.end method


# virtual methods
.method protected addChildrenToListView(Ljava/util/LinkedList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v0, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 856
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mChildAlreadyAppend:Z

    if-nez v0, :cond_2

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 859
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 860
    const-string v0, "ExpandListView"

    const-string v1, "ListView: append chidlren"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method public addMenu(Landroid/view/Menu;III)V
    .locals 2
    .parameter "menu"
    .parameter "menuItemId"
    .parameter "menuItemTextId"
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 421
    if-nez p1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 425
    .local v0, item:Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 427
    invoke-interface {p1, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 428
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public collapseAll()V
    .locals 2

    .prologue
    .line 923
    const-string v0, "ExpandListView"

    const-string v1, "Collpase to root"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->cancelBrowse(J)V

    .line 926
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->collapseAll()V

    .line 930
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    .line 931
    return-void
.end method

.method public enableAccessCamera(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 76
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public enableSourceContentPadding(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 2
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    .line 86
    :cond_0
    return-void
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 108
    .local v1, view:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_0

    .line 110
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->getSourceSwitchView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 112
    :cond_0
    return-object v1
.end method

.method public goParentFolder()V
    .locals 3

    .prologue
    .line 935
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v1, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    const-string v1, "ExpandListView"

    const-string v2, "Move to parent folder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v0

    .line 942
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 943
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public initPageComponents()V
    .locals 3

    .prologue
    .line 256
    const v1, 0x7f0a0054

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 258
    const v1, 0x7f0a005a

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 259
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 260
    new-instance v1, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-direct {v1, p0, v2}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    .line 262
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 263
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    .line 264
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V

    .line 265
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    .line 266
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-static {v1, v2}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V

    .line 268
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showEmptyView(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->startSearchingTimer()V

    .line 270
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "browse_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 274
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 276
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemRequested:Ljava/lang/Object;

    .line 279
    :cond_0
    const-string v1, "ExpandListView"

    const-string v2, "initPageComponents..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onConnectionCancel()V
    .locals 2

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showEmptyView(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 120
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->enableDLNAControl(Z)V

    .line 121
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v1, 0x7f030023

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->setContentView(I)V

    .line 123
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->initPageComponents()V

    .line 125
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    .end local v0           #parent:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$1;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->setDropDownButtonClickListener(Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "nID"

    .prologue
    const/4 v1, 0x0

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, dialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 538
    :goto_0
    :sswitch_0
    return-object v0

    .line 528
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showDialogErrorCommunication()Landroid/app/Dialog;

    move-result-object v0

    .line 530
    goto :goto_0

    .line 532
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    .line 533
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showDialogNoConnection()Landroid/app/Dialog;

    move-result-object v0

    .line 534
    goto :goto_0

    .line 536
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showDialogNoAuthorization()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x40a -> :sswitch_3
        0x2724 -> :sswitch_0
        0x272b -> :sswitch_1
        0x272c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mbDestroy:Z

    .line 201
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->onDestroy()V

    .line 203
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    .line 204
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 205
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 207
    const-string v0, "ExpandListView"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method protected onErrorCommunication(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 879
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 880
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 909
    :goto_0
    return-void

    .line 883
    :cond_0
    const/4 v1, 0x0

    .line 884
    .local v1, nErrorID:I
    const-string v2, "error_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 886
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainFolderBrowser][onErrorCommunication]: Error Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    packed-switch v1, :pswitch_data_0

    .line 899
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 900
    const/16 v2, 0x272c

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showDialog(I)V

    goto :goto_0

    .line 892
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    .line 893
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    .line 894
    const/16 v2, 0x40a

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showDialog(I)V

    goto :goto_0

    .line 903
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    .line 904
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    .line 905
    const/16 v2, 0x272b

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showDialog(I)V

    goto :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 457
    const-string v1, "ExpandListView"

    const-string v2, "[HTCAlbum][ExapandBrowser]onMenuItemSelected"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, bResult:Z
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 482
    :goto_0
    return v0

    .line 465
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->onRefresh()V

    .line 466
    const/4 v0, 0x1

    .line 468
    goto :goto_0

    .line 471
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->goParentFolder()V

    .line 472
    const/4 v0, 0x1

    .line 474
    goto :goto_0

    .line 477
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->collapseAll()V

    .line 478
    const/4 v0, 0x1

    goto :goto_0

    .line 461
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00a2 -> :sswitch_0
        0x7f0b00bb -> :sswitch_2
        0x7f0b00bc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 638
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mbDestroy:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    const/16 v20, 0x0

    .line 642
    .local v20, size:I
    const/16 v21, 0x0

    .line 646
    .local v21, tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 673
    :sswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->onErrorCommunication(Landroid/os/Message;)V

    .line 674
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 649
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->onContentUpdate(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;

    move-result-object v21

    .line 650
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    goto :goto_0

    .line 656
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v14

    check-cast v14, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 661
    .local v14, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-eqz v14, :cond_0

    .line 664
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->getChildrenCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->onContentUpdateComplete(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;I)Ljava/util/LinkedList;

    move-result-object v21

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    .line 667
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mbBrowseComplete:Z

    if-eqz v2, :cond_0

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 679
    .end local v14           #itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showListView()V

    .line 684
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 685
    .local v13, itemAdd:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    if-nez v13, :cond_2

    .line 687
    const-string v2, "ExpandListView"

    const-string v3, "SYNC_SERVER_ADD: null!!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 692
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v11, v0, :cond_3

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    .line 695
    .local v19, serverID:Ljava/lang/String;
    iget-object v2, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 692
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 699
    .end local v19           #serverID:Ljava/lang/String;
    :cond_3
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_ADD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v21, Ljava/util/LinkedList;

    .end local v21           #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 702
    .restart local v21       #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    iget-object v3, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v0, v20

    int-to-long v6, v0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->appendRoot(Ljava/util/LinkedList;)V

    .line 706
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    goto/16 :goto_0

    .line 712
    .end local v11           #i:I
    .end local v13           #itemAdd:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v2, :cond_4

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showEmptyView(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    .line 719
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerList()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 720
    .local v18, listServer:Ljava/util/List;
    if-nez v18, :cond_5

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showEmptyView(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    .line 727
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    .line 729
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_ADD_LIST: size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    if-nez v20, :cond_6

    .line 734
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 737
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->BlockingChangeRoot(Ljava/util/LinkedList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    .line 739
    :catch_0
    move-exception v10

    .line 741
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking change root : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_2

    .line 750
    .end local v10           #e:Ljava/lang/Exception;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showListView()V

    .line 752
    new-instance v21, Ljava/util/LinkedList;

    .end local v21           #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 754
    .restart local v21       #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 756
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 757
    .local v16, listItem:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    int-to-long v6, v11

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 754
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 760
    .end local v16           #listItem:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 762
    const/4 v9, 0x1

    .line 766
    .local v9, bRecovery:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->BlockingChangeRoot(Ljava/util/LinkedList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    :goto_4
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adapter count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->removePagesInfo()V

    .line 778
    if-eqz v9, :cond_8

    .line 779
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->setBrowseDirectory(Ljava/util/LinkedList;)V

    .line 781
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    goto/16 :goto_0

    .line 768
    :catch_1
    move-exception v10

    .line 770
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking change root : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v9, 0x0

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_4

    .line 787
    .end local v9           #bRecovery:Z
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #i:I
    .end local v18           #listServer:Ljava/util/List;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showListView()V

    .line 792
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 793
    .local v15, itemRemove:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    if-nez v15, :cond_9

    .line 795
    const-string v2, "ExpandListView"

    const-string v3, "SYNC_SERVER_REMOVE: null!!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 799
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 801
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    move/from16 v0, v20

    if-ge v11, v0, :cond_a

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    .line 804
    .restart local v19       #serverID:Ljava/lang/String;
    iget-object v2, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v11}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 811
    .end local v19           #serverID:Ljava/lang/String;
    :cond_a
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_REMOVE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    .restart local v19       #serverID:Ljava/lang/String;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 816
    .end local v11           #i:I
    .end local v15           #itemRemove:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    .end local v19           #serverID:Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 817
    .local v12, item:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    if-eqz v12, :cond_0

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 820
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_6
    move/from16 v0, v20

    if-ge v11, v0, :cond_0

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 823
    .local v16, listItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-nez v16, :cond_d

    .line 825
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER: index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 828
    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    .line 829
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER server_id : index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 833
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v17

    .line 834
    .local v17, listItemId:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestServerThumbnail(Ljava/lang/String;)V

    .line 837
    :cond_f
    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 839
    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->SetImgPath(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->refreshUI()V

    .line 841
    const-string v2, "ExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 646
    :sswitch_data_0
    .sparse-switch
        0x2767 -> :sswitch_0
        0x4e98 -> :sswitch_3
        0x4e99 -> :sswitch_4
        0x4e9a -> :sswitch_5
        0x4e9b -> :sswitch_1
        0x4e9c -> :sswitch_2
        0x4e9d -> :sswitch_6
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 212
    const-string v0, "ExpandListView"

    const-string v1, "[HTCAlbum][ActivityExpandableListView][onNewIntent]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->onNewIntent(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->setIntent(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->onPause()V

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    .line 182
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->cancelBrowse(J)V

    .line 183
    const-string v0, "ExpandListView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const v7, 0x7f0b00bc

    const v6, 0x7f0b00bb

    const/4 v2, 0x1

    .line 434
    const v1, 0x7f020034

    invoke-virtual {p0, p1, v7, v7, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    .line 435
    const v1, 0x2080329

    invoke-virtual {p0, p1, v6, v6, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    .line 436
    const v1, 0x7f0a00a2

    const v4, 0x20c0202

    const v5, 0x208033b

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    .line 438
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v1, :cond_2

    .line 441
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 442
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 443
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 445
    :cond_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_2

    .line 447
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 450
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_2
    const-string v1, "ExpandListView"

    const-string v3, "[HTCAlbum][ExapandBrowser]onPrepareOptionsMenu"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return v2

    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_3
    move v1, v3

    .line 443
    goto :goto_0
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 228
    const-string v2, "ExpandListView"

    const-string v3, "onRefresh"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showEmptyView(Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->refreshServers()V

    .line 237
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v2, :cond_2

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v1

    .line 244
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 247
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 249
    .local v0, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->removeChildrenDirectoryInfo(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const v6, 0x7f0b00fa

    const v5, 0x7f0b00b3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 137
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->onResume()V

    .line 138
    const-string v1, "ExpandListView"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showEmptyView(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->stopSearchingTimer()V

    .line 144
    const/16 v1, 0x272c

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showDialog(I)V

    .line 172
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->enableSourceSwitch(ZZ)V

    .line 173
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->enableSourceContentPadding(Z)V

    .line 174
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->enableAccessCamera(Z)V

    .line 176
    :cond_1
    return-void

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showListView()V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showEmptyView(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->startSearchingTimer()V

    .line 156
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    .local v0, viewText:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->startSearchingTimer()V

    .line 168
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->onStart()V

    .line 189
    const-string v0, "ExpandListView"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->onStop()V

    .line 195
    const-string v0, "ExpandListView"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public refreshServers()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->refreshServers()V

    .line 222
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->startSearchingTimer()V

    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    .line 224
    return-void
.end method

.method protected refreshUI()V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->notifyDataSetChanged()V

    .line 875
    :cond_0
    return-void
.end method

.method protected showDialogErrorCommunication()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 560
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 565
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c015f

    new-instance v2, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$6;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$6;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 572
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected showDialogNoAuthorization()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 543
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 548
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c015f

    new-instance v2, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$5;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$5;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 555
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected showDialogNoConnection()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 599
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00be

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00f9

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 604
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c0200

    new-instance v2, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$7;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$7;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 611
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$8;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$8;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 618
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public showEmptyView(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 491
    .local v0, viewText_1:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 495
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    .line 498
    :cond_1
    const-string v1, "ExpandListView"

    const-string v2, "show empty view"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showListView()V
    .locals 2

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->stopSearchingTimer()V

    .line 505
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    .line 511
    :cond_1
    const-string v0, "ExpandListView"

    const-string v1, "show listview"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public showTitleProgression(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 916
    const-string v1, "ExpandListView"

    const-string v2, "[HTCAlbum][ActivityMainFolderBrowser][notifyTitleProgressBar]:..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 919
    :cond_0
    return-void
.end method
