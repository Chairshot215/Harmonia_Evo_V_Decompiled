.class Lcom/htc/store/activity/list/ListItem$CheckContentTask;
.super Landroid/os/AsyncTask;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/list/ListItem;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/list/ListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/list/ListItem;Lcom/htc/store/activity/list/ListItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;-><init>(Lcom/htc/store/activity/list/ListItem;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v3, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 762
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v9, v11, [Ljava/lang/Object;

    const-string v10, "doInBackground: CheckContentTask"

    aput-object v10, v9, v12

    invoke-static {v0, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    invoke-static {}, Lcom/htc/store/util/ImageUtils;->clearCache()V

    .line 764
    const/4 v6, 0x0

    .line 765
    .local v6, action:I
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v0}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v1

    .line 766
    .local v1, categoryId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 768
    .local v4, current:J
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->updateItemStatus()V
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$400(Lcom/htc/store/activity/list/ListItem;)V

    .line 770
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v9, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v9, v9, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v9, v11}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItems(I)Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    .line 774
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->getItemItemsByCategory(J)Ljava/util/ArrayList;

    move-result-object v7

    .line 779
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 780
    :cond_2
    const/4 v6, 0x5

    .line 792
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 782
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->isHtcAccountExisted()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$1900(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 783
    new-instance v8, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct {v8, v0, v7}, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;-><init>(Lcom/htc/store/activity/list/ListItem;Ljava/util/ArrayList;)V

    .line 784
    .local v8, task:Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;
    new-array v0, v11, [Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;

    aput-object v8, v0, v12

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->publishProgress([Ljava/lang/Object;)V

    .line 786
    .end local v8           #task:Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;
    :cond_4
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    if-nez v0, :cond_5

    .line 787
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    new-instance v9, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    iget-object v10, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct {v9, v10, v3}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;-><init>(Lcom/htc/store/activity/list/ListItem;I)V

    iput-object v9, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    .line 789
    :cond_5
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v0, v7}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->insertItems(Ljava/util/ArrayList;)V

    .line 790
    const/4 v6, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 804
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: CheckContentTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$2000(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$2100(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$2200(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/list/ListItem;->access$2300(Lcom/htc/store/activity/list/ListItem;Z)V

    .line 808
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->hasToDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->hasIdleTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->start()V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/list/ListItem;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/list/ListItem;->access$2400(Lcom/htc/store/activity/list/ListItem;I)V

    .line 813
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListItem;->mCheckContentTask:Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    .line 819
    :cond_1
    :goto_0
    return-void

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListItem;->mCheckContentTask:Lcom/htc/store/activity/list/ListItem$CheckContentTask;

    .line 816
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/htc/store/activity/list/ListItem;->mActionOnResume:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 758
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 796
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget v1, v0, Lcom/htc/store/activity/list/ListItem;->mDownloadCommentLikeInfoTaskCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/store/activity/list/ListItem;->mDownloadCommentLikeInfoTaskCount:I

    .line 798
    aget-object v0, p1, v2

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 800
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 758
    check-cast p1, [Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$CheckContentTask;->onProgressUpdate([Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;)V

    return-void
.end method
