.class Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;
.super Ljava/lang/Object;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemIconDownloader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    }
.end annotation


# instance fields
.field private mDownloadItemIconTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic this$0:Lcom/htc/store/activity/list/ListItem;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListItem;I)V
    .locals 3
    .parameter
    .parameter "taskCount"

    .prologue
    .line 963
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 961
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOverwrite:Z

    .line 964
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    .line 965
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 966
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    .line 969
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mIconWidthHeight:I

    .line 970
    iput p2, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mTaskCount:I

    .line 971
    #getter for: Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static {p1}, Lcom/htc/store/activity/list/ListItem;->access$3200(Lcom/htc/store/activity/list/ListItem;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->getImageTTL()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mImageTTL:J

    .line 972
    return-void
.end method

.method static synthetic access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 954
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOverwrite:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 954
    iget v0, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mIconWidthHeight:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 954
    iget-wide v0, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mImageTTL:J

    return-wide v0
.end method


# virtual methods
.method public hasIdleTask()Z
    .locals 5

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, hasIdle:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mTaskCount:I

    if-ge v1, v3, :cond_1

    .line 1041
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;

    .line 1042
    .local v2, task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_2

    .line 1043
    :cond_0
    const/4 v0, 0x1

    .line 1047
    .end local v2           #task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    :cond_1
    return v0

    .line 1040
    .restart local v2       #task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasToDownload()Z
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

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
    .line 975
    .local p1, onlineItemIconURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    monitor-enter v4

    .line 976
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 977
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 978
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 979
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 980
    .local v1, iconURL:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 981
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 983
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 978
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 986
    .end local v0           #i:I
    .end local v1           #iconURL:Ljava/lang/String;
    .end local v2           #size:I
    :cond_1
    monitor-exit v4

    .line 987
    return-void

    .line 986
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
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
    .line 990
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    iget-object v4, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    monitor-enter v4

    .line 991
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 992
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 993
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 994
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v2

    .line 995
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 996
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 998
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 993
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1001
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    monitor-exit v4

    .line 1002
    return-void

    .line 1001
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
    .line 1027
    const/4 v1, 0x1

    .line 1028
    .local v1, isIdle:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mTaskCount:I

    if-ge v0, v3, :cond_0

    .line 1029
    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;

    .line 1030
    .local v2, task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    .line 1031
    const/4 v1, 0x0

    .line 1035
    .end local v2           #task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    :cond_0
    return v1

    .line 1028
    .restart local v2       #task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOverwriteMode(Z)V
    .locals 0
    .parameter "overwrite"

    .prologue
    .line 1055
    iput-boolean p1, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOverwrite:Z

    .line 1056
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 1005
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mTaskCount:I

    if-ge v0, v2, :cond_1

    .line 1006
    iget-object v2, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;

    .line 1007
    .local v1, task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 1005
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    new-instance v1, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;

    .end local v1           #task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;-><init>(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;Lcom/htc/store/activity/list/ListItem$1;)V

    .line 1011
    .restart local v1       #task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1014
    .end local v1           #task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 1018
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mTaskCount:I

    if-ge v0, v2, :cond_1

    .line 1019
    iget-object v2, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mDownloadItemIconTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;

    .line 1020
    .local v1, task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 1021
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->cancel(Z)Z

    .line 1018
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1024
    .end local v1           #task:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
    :cond_1
    return-void
.end method
