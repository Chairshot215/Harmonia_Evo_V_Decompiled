.class Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;
.super Ljava/lang/Object;
.source "ListCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryIconDownloader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    }
.end annotation


# instance fields
.field private mDownloadCategoryIconTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;",
            ">;"
        }
    .end annotation
.end field

.field private mIconWidthHeight:I

.field private mImageTTL:J

.field private mOnlineCategoryIconURLsToDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverwrite:Z

.field private mTaskCount:I

.field final synthetic this$0:Lcom/htc/store/activity/list/ListCategory;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListCategory;I)V
    .locals 3
    .parameter
    .parameter "taskCount"

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1565
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOverwrite:Z

    .line 1568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mDownloadCategoryIconTasks:Ljava/util/ArrayList;

    .line 1569
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1570
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mDownloadCategoryIconTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1572
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOnlineCategoryIconURLsToDownload:Ljava/util/ArrayList;

    .line 1573
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mIconWidthHeight:I

    .line 1574
    iput p2, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mTaskCount:I

    .line 1575
    #getter for: Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static {p1}, Lcom/htc/store/activity/list/ListCategory;->access$5300(Lcom/htc/store/activity/list/ListCategory;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->getImageTTL()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mImageTTL:J

    .line 1576
    return-void
.end method

.method static synthetic access$5500(Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOnlineCategoryIconURLsToDownload:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1558
    iget-boolean v0, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOverwrite:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1558
    iget v0, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mIconWidthHeight:I

    return v0
.end method

.method static synthetic access$5800(Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1558
    iget-wide v0, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mImageTTL:J

    return-wide v0
.end method


# virtual methods
.method public hasIdleTask()Z
    .locals 5

    .prologue
    .line 1628
    const/4 v0, 0x0

    .line 1629
    .local v0, hasIdle:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mTaskCount:I

    if-ge v1, v3, :cond_1

    .line 1630
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mDownloadCategoryIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;

    .line 1631
    .local v2, task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_2

    .line 1632
    :cond_0
    const/4 v0, 0x1

    .line 1636
    .end local v2           #task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    :cond_1
    return v0

    .line 1629
    .restart local v2       #task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasToDownload()Z
    .locals 3

    .prologue
    .line 1641
    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mDownloadCategoryIconTasks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1642
    :try_start_0
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mDownloadCategoryIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1643
    .local v0, remainedCount:I
    monitor-exit v2

    .line 1644
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1643
    .end local v0           #remainedCount:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1644
    .restart local v0       #remainedCount:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insert(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1579
    .local p1, onlineItemIconURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOnlineCategoryIconURLsToDownload:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1580
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOnlineCategoryIconURLsToDownload:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1581
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1582
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1583
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1584
    .local v1, iconURL:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOnlineCategoryIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1585
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOnlineCategoryIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1587
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOnlineCategoryIconURLsToDownload:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1582
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1590
    .end local v0           #i:I
    .end local v1           #iconURL:Ljava/lang/String;
    .end local v2           #size:I
    :cond_1
    monitor-exit v4

    .line 1591
    return-void

    .line 1590
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isIdle()Z
    .locals 5

    .prologue
    .line 1616
    const/4 v1, 0x1

    .line 1617
    .local v1, isIdle:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mTaskCount:I

    if-ge v0, v3, :cond_0

    .line 1618
    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mDownloadCategoryIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;

    .line 1619
    .local v2, task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    .line 1620
    const/4 v1, 0x0

    .line 1624
    .end local v2           #task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    :cond_0
    return v1

    .line 1617
    .restart local v2       #task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOverwriteMode(Z)V
    .locals 0
    .parameter "overwrite"

    .prologue
    .line 1648
    iput-boolean p1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mOverwrite:Z

    .line 1649
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 1594
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mTaskCount:I

    if-ge v0, v2, :cond_1

    .line 1595
    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mDownloadCategoryIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;

    .line 1596
    .local v1, task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 1594
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1599
    :cond_0
    new-instance v1, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;

    .end local v1           #task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;-><init>(Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;Lcom/htc/store/activity/list/ListCategory$1;)V

    .line 1600
    .restart local v1       #task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1603
    .end local v1           #task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 1607
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mTaskCount:I

    if-ge v0, v2, :cond_1

    .line 1608
    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->mDownloadCategoryIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;

    .line 1609
    .local v1, task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 1610
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;->cancel(Z)Z

    .line 1607
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1613
    .end local v1           #task:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader$DownloadCategoryIconTask;
    :cond_1
    return-void
.end method
