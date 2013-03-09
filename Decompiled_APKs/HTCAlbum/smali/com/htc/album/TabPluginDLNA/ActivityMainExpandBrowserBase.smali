.class public Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;
.super Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;
.source "ActivityMainExpandBrowserBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl",
        "<",
        "Lcom/htc/widget/MoreExpandableBaseAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field protected mActivityPause:Z

.field protected mCurContainerID:Ljava/lang/String;

.field protected mCurContainerName:Ljava/lang/String;

.field protected mCurServerID:Ljava/lang/String;

.field protected mCurServerImg:Ljava/lang/String;

.field protected mCurServerName:Ljava/lang/String;

.field protected mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

.field protected mDirectoryStack:Ljava/util/Stack;

.field protected mFileCount:J

.field protected mHandlerData:Landroid/os/Handler;

.field protected mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

.field protected mbBrowseComplete:Z

.field protected mbVirtualFolderAdd:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;-><init>()V

    .line 19
    const-string v0, "ExpandListView"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 23
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerImg:Ljava/lang/String;

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 30
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 31
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbBrowseComplete:Z

    .line 33
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mDirectoryStack:Ljava/util/Stack;

    .line 34
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    .line 36
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mActivityPause:Z

    .line 48
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase$1;-><init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method private getNoPhotoVideoItem()Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    .line 478
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, "UNKNOWN"

    const/4 v10, 0x0

    move-wide v8, v6

    invoke-direct/range {v0 .. v10}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 479
    .local v0, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    return-object v0
.end method

.method private reSetValueState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 114
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbBrowseComplete:Z

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    .line 116
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 117
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 118
    return-void
.end method


# virtual methods
.method public addCurrentPageInfo()V
    .locals 6

    .prologue
    .line 499
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-nez v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 505
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 508
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCurrentPageInfo: dirName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    if-nez v2, :cond_3

    .line 512
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->addFilePage(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Z

    .line 526
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCurrentPageInfo: topIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottomIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_3
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v1

    .line 517
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-eqz v1, :cond_2

    .line 519
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 520
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 521
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 522
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    goto :goto_1
.end method

.method protected addDirectoryInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, bunBrowse:Landroid/os/Bundle;
    const-string v3, "0"

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->createEmtpyDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v1

    .line 165
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->createEmtpyPage()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, exportDirectory:Ljava/util/ArrayList;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->exportPages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v3, "album_update"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const-string v3, "server_id"

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "server_name"

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "directory_info"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 180
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->initServerInfo(Ljava/lang/Object;)Z

    .line 192
    .end local v0           #bunBrowse:Landroid/os/Bundle;
    .end local v2           #exportDirectory:Ljava/util/ArrayList;
    :goto_0
    return-void

    .line 185
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    const/4 v1, 0x0

    .line 186
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;-><init>()V

    .line 187
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setID(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setName(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v3, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->addLatestBrowseFolder(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addPagesInfo(ILjava/util/ArrayList;)V
    .locals 4
    .parameter "currentPageIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p2, importPages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPagesInfo: pageSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 556
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->removeAllPages()V

    .line 560
    invoke-virtual {v0, p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->importPages(Ljava/util/ArrayList;)V

    .line 561
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setCurrentPageIndex(I)V

    .line 563
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPagesInfo: currentIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelBrowse(J)V
    .locals 3
    .parameter "curStartIdx"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelBrowse"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->browseCancel(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected continueBrowse(JJ)V
    .locals 8
    .parameter "index"
    .parameter "boundary"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mActivityPause:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    const/16 v5, 0x1e

    move-wide v3, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    goto :goto_0
.end method

.method public getCurrentPageInfo()V
    .locals 6

    .prologue
    .line 531
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v2, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 535
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 538
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPageInfo: dirName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v1

    .line 541
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-eqz v1, :cond_0

    .line 543
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPageInfo: topIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottomIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    goto :goto_0
.end method

.method protected initBrowse(JJ)V
    .locals 8
    .parameter "index"
    .parameter "boundary"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->reSetValueState()V

    .line 135
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init browse"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->addDirectoryInfo()V

    .line 142
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    const/16 v5, 0x1e

    move-wide v3, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    goto :goto_0
.end method

.method protected onContentUpdate(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;
    .locals 5
    .parameter "pageInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]:onContentUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->queryContentList(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;

    move-result-object v0

    .line 203
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    goto :goto_0
.end method

.method protected onContentUpdateComplete(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;I)Ljava/util/LinkedList;
    .locals 5
    .parameter "pageInfo"
    .parameter "childCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            "I)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbBrowseComplete:Z

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum]:[onContentUpdateComplete] browse is already completed"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 240
    :goto_0
    return-object v0

    .line 215
    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum]: onContnetUpdateComplete"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->queryContentList(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;

    move-result-object v0

    .line 222
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    if-nez v0, :cond_2

    move-object v0, v1

    .line 223
    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->getNoPhotoVideoItem()Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    .line 233
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbBrowseComplete:Z

    goto :goto_0

    .line 237
    :cond_5
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->continueBrowse(JJ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 43
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->enableSyncServerListOnServiceConnected()V

    .line 44
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setRegisterID(I)V

    .line 45
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->onDestroy()V

    .line 105
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDestroy()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 109
    return-void
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mActivityPause:Z

    .line 77
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onPause()V

    .line 81
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mActivityPause:Z

    .line 66
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onResume()V

    .line 72
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->onStart()V

    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStart()V

    .line 91
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->onStop()V

    .line 97
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStop()V

    .line 99
    :cond_0
    return-void
.end method

.method protected queryContentList(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;
    .locals 34
    .parameter "pageInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    if-nez p1, :cond_1

    .line 246
    const/16 v29, 0x0

    .line 372
    :cond_0
    :goto_0
    return-object v29

    .line 248
    :cond_1
    new-instance v29, Ljava/util/LinkedList;

    invoke-direct/range {v29 .. v29}, Ljava/util/LinkedList;-><init>()V

    .line 250
    .local v29, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    const-wide/16 v32, 0x0

    .line 251
    .local v32, topIndex:J
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v24

    .line 253
    .local v24, bottomIndex:J
    const-string v5, ""

    .line 255
    .local v5, szWhere:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(serve_id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v32

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][queryContentList]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/16 v26, 0x0

    .line 269
    .local v26, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "index_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    if-nez v26, :cond_3

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][queryContentList]: failed to get cursor"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    if-eqz v26, :cond_2

    .line 360
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 361
    const/16 v26, 0x0

    .line 364
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v2, v2, v13

    if-gtz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v2, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    goto/16 :goto_0

    .line 280
    :cond_3
    const/16 v31, 0x0

    .line 281
    .local v31, nCount:I
    const/16 v30, 0x0

    .line 283
    .local v30, listCount:I
    :try_start_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v31

    if-gtz v31, :cond_6

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][queryContentList]: empty cursor"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    :cond_4
    if-eqz v26, :cond_5

    .line 360
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 361
    const/16 v26, 0x0

    .line 364
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v2, v2, v13

    if-gtz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v2, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    goto/16 :goto_0

    .line 289
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][queryContentList]: count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v9, 0x0

    .line 292
    .local v9, contentID:Ljava/lang/String;
    const/4 v10, 0x0

    .line 293
    .local v10, contentName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 294
    .local v12, fileType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 295
    .local v7, serverID:Ljava/lang/String;
    const/4 v8, 0x0

    .line 296
    .local v8, containerID:Ljava/lang/String;
    const-wide/16 v19, -0x1

    .line 298
    .local v19, index:J
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 300
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 302
    const/16 v28, 0x0

    .local v28, i:I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 304
    const-string v2, "content_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 305
    const-string v2, "content_name"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 306
    const-string v2, "file_type"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 307
    const-string v2, "index_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 308
    const-string v2, "serve_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 309
    const-string v2, "container"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 311
    const-string v2, "0"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 313
    new-instance v6, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    const/4 v11, 0x0

    move/from16 v0, v30

    int-to-long v13, v0

    const/4 v15, 0x1

    invoke-direct/range {v6 .. v15}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 314
    .local v6, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v30, v30, 0x1

    .line 348
    .end local v6           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_7
    :goto_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    .line 302
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 321
    :cond_8
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v2, v2, v13

    if-gez v2, :cond_9

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v2, :cond_9

    .line 325
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0x0

    cmp-long v2, v2, v13

    if-nez v2, :cond_b

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 329
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    .line 339
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    if-nez v2, :cond_7

    .line 341
    new-instance v6, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const/16 v23, 0x0

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v23}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 342
    .restart local v6       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v30, v30, 0x1

    .line 344
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbVirtualFolderAdd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 352
    .end local v6           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v7           #serverID:Ljava/lang/String;
    .end local v8           #containerID:Ljava/lang/String;
    .end local v9           #contentID:Ljava/lang/String;
    .end local v10           #contentName:Ljava/lang/String;
    .end local v12           #fileType:Ljava/lang/String;
    .end local v19           #index:J
    .end local v28           #i:I
    .end local v30           #listCount:I
    .end local v31           #nCount:I
    :catch_0
    move-exception v27

    .line 354
    .local v27, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    if-eqz v26, :cond_a

    .line 360
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 361
    const/16 v26, 0x0

    .line 364
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v2, v2, v13

    if-gtz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v2, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    goto/16 :goto_0

    .line 331
    .end local v27           #e:Ljava/lang/Exception;
    .restart local v7       #serverID:Ljava/lang/String;
    .restart local v8       #containerID:Ljava/lang/String;
    .restart local v9       #contentID:Ljava/lang/String;
    .restart local v10       #contentName:Ljava/lang/String;
    .restart local v12       #fileType:Ljava/lang/String;
    .restart local v19       #index:J
    .restart local v28       #i:I
    .restart local v30       #listCount:I
    .restart local v31       #nCount:I
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v2

    cmp-long v2, v2, v19

    if-gez v2, :cond_9

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 334
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 358
    .end local v7           #serverID:Ljava/lang/String;
    .end local v8           #containerID:Ljava/lang/String;
    .end local v9           #contentID:Ljava/lang/String;
    .end local v10           #contentName:Ljava/lang/String;
    .end local v12           #fileType:Ljava/lang/String;
    .end local v19           #index:J
    .end local v28           #i:I
    .end local v30           #listCount:I
    .end local v31           #nCount:I
    :catchall_0
    move-exception v2

    if-eqz v26, :cond_c

    .line 360
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 361
    const/16 v26, 0x0

    .line 364
    :cond_c
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v3, v3, v13

    if-gtz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v3, :cond_d

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    :cond_d
    throw v2
.end method

.method protected queryRecoveryContentList(Ljava/lang/String;Ljava/util/LinkedList;)Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .locals 31
    .parameter "childSelectedID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    const-string v5, ""

    .line 381
    .local v5, szWhere:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(serve_id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 387
    const/16 v26, 0x0

    .line 388
    .local v26, cursor:Landroid/database/Cursor;
    const/16 v24, 0x0

    .line 392
    .local v24, childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "index_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    if-nez v26, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][queryContentList][selectedID]: failed to get cursor"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    if-eqz v26, :cond_0

    .line 468
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 469
    const/16 v26, 0x0

    :cond_0
    move-object/from16 v25, v24

    .line 473
    .end local v24           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .local v25, childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :goto_0
    return-object v25

    .line 403
    .end local v25           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v24       #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_1
    const/16 v30, 0x0

    .line 404
    .local v30, nCount:I
    const/16 v29, 0x0

    .line 406
    .local v29, listCount:I
    :try_start_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v30

    if-gtz v30, :cond_4

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][queryContentList][selectedID]: empty cursor"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    :cond_2
    if-eqz v26, :cond_3

    .line 468
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 469
    const/16 v26, 0x0

    .end local v29           #listCount:I
    .end local v30           #nCount:I
    :cond_3
    :goto_1
    move-object/from16 v25, v24

    .line 473
    .end local v24           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v25       #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    goto :goto_0

    .line 412
    .end local v25           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v24       #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v29       #listCount:I
    .restart local v30       #nCount:I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][queryContentList][selectedID]: count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v9, 0x0

    .line 415
    .local v9, contentID:Ljava/lang/String;
    const/4 v10, 0x0

    .line 416
    .local v10, contentName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 417
    .local v12, fileType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 418
    .local v7, serverID:Ljava/lang/String;
    const/4 v8, 0x0

    .line 419
    .local v8, containerID:Ljava/lang/String;
    const-wide/16 v19, -0x1

    .line 421
    .local v19, index:J
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 423
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 425
    const/16 v28, 0x0

    .local v28, i:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 427
    const-string v2, "content_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 428
    const-string v2, "content_name"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 429
    const-string v2, "file_type"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 430
    const-string v2, "index_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 431
    const-string v2, "serve_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 432
    const-string v2, "container"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 434
    const-string v2, "0"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 436
    new-instance v6, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    const/4 v11, 0x0

    move/from16 v0, v29

    int-to-long v13, v0

    const/4 v15, 0x1

    invoke-direct/range {v6 .. v15}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 437
    .local v6, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 439
    move-object/from16 v24, v6

    .line 441
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v29, v29, 0x1

    .line 456
    .end local v6           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_6
    :goto_3
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    .line 425
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 447
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    if-nez v2, :cond_6

    .line 449
    new-instance v6, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const/16 v23, 0x0

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v23}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 450
    .restart local v6       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 451
    add-int/lit8 v29, v29, 0x1

    .line 452
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mbVirtualFolderAdd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 460
    .end local v6           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v7           #serverID:Ljava/lang/String;
    .end local v8           #containerID:Ljava/lang/String;
    .end local v9           #contentID:Ljava/lang/String;
    .end local v10           #contentName:Ljava/lang/String;
    .end local v12           #fileType:Ljava/lang/String;
    .end local v19           #index:J
    .end local v28           #i:I
    .end local v29           #listCount:I
    .end local v30           #nCount:I
    :catch_0
    move-exception v27

    .line 462
    .local v27, e:Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][queryContentList][selectedID]Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 466
    if-eqz v26, :cond_3

    .line 468
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 469
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 466
    .end local v27           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v26, :cond_8

    .line 468
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 469
    const/16 v26, 0x0

    :cond_8
    throw v2
.end method

.method public refreshServers()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->reSearchDevices()V

    .line 486
    :cond_0
    return-void
.end method

.method public removeChildrenDirectoryInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "containerID"

    .prologue
    .line 490
    if-nez p1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->removeChildrenBrowseFolder(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected removePagesInfo()V
    .locals 2

    .prologue
    .line 568
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 569
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->removeAllPages()V

    goto :goto_0
.end method
