.class Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
.super Ljava/lang/Object;
.source "DetailSimilar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailSimilar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemIconDownloader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    }
.end annotation


# static fields
.field private static final THRESHOLD_TO_INVALIDATE:I = 0x5


# instance fields
.field private mDownloadItemIconTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadedCount:I

.field private mFinishedCount:I

.field private mIconWidthHeight:I

.field private mImageTTL:J

.field private mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
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

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailSimilar;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar;I)V
    .locals 3
    .parameter
    .parameter "taskCount"

    .prologue
    const/4 v1, 0x0

    .line 729
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-boolean v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOverwrite:Z

    .line 726
    iput v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadedCount:I

    .line 727
    iput v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mFinishedCount:I

    .line 730
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    .line 731
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 732
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    .line 735
    invoke-virtual {p1}, Lcom/htc/store/activity/detail/DetailSimilar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mIconWidthHeight:I

    .line 736
    iput p2, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mTaskCount:I

    .line 737
    #getter for: Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static {p1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3600(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->getImageTTL()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mImageTTL:J

    .line 738
    return-void
.end method

.method static synthetic access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOverwrite:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 716
    iget v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mIconWidthHeight:I

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 716
    iget-wide v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mImageTTL:J

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->invalidateList()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->onDownloadTaskFinish()V

    return-void
.end method

.method private declared-synchronized invalidateList()V
    .locals 2

    .prologue
    .line 813
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadedCount:I

    .line 814
    iget v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadedCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 815
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->updateSimilarItemToInvalidate()V

    .line 816
    iget v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadedCount:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    :cond_0
    monitor-exit p0

    return-void

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onDownloadTaskFinish()V
    .locals 2

    .prologue
    .line 821
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mFinishedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mFinishedCount:I

    .line 822
    iget v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mFinishedCount:I

    iget v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mTaskCount:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadedCount:I

    if-lez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->updateSimilarItemToInvalidate()V

    .line 824
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    :cond_0
    monitor-exit p0

    return-void

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public hasIdleTask()Z
    .locals 5

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, hasIdle:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mTaskCount:I

    if-ge v1, v3, :cond_1

    .line 794
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;

    .line 795
    .local v2, task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_2

    .line 796
    :cond_0
    const/4 v0, 0x1

    .line 800
    .end local v2           #task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    :cond_1
    return v0

    .line 793
    .restart local v2       #task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasToDownload()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertItems(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    monitor-enter v4

    .line 742
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 743
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 744
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 745
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 749
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 752
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    monitor-exit v4

    .line 753
    return-void

    .line 752
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
    .line 780
    const/4 v1, 0x1

    .line 781
    .local v1, isIdle:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mTaskCount:I

    if-ge v0, v3, :cond_0

    .line 782
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;

    .line 783
    .local v2, task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    .line 784
    const/4 v1, 0x0

    .line 788
    .end local v2           #task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    :cond_0
    return v1

    .line 781
    .restart local v2       #task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOverwriteMode(Z)V
    .locals 0
    .parameter "overwrite"

    .prologue
    .line 809
    iput-boolean p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOverwrite:Z

    .line 810
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 756
    iput v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadedCount:I

    .line 757
    iput v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mFinishedCount:I

    .line 758
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mTaskCount:I

    if-ge v0, v2, :cond_1

    .line 759
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;

    .line 760
    .local v1, task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 758
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    :cond_0
    new-instance v1, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;

    .end local v1           #task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;-><init>(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;Lcom/htc/store/activity/detail/DetailSimilar$1;)V

    .line 764
    .restart local v1       #task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 767
    .end local v1           #task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 771
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mTaskCount:I

    if-ge v0, v2, :cond_1

    .line 772
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;

    .line 773
    .local v1, task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 774
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->cancel(Z)Z

    .line 771
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    .end local v1           #task:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
    :cond_1
    return-void
.end method
