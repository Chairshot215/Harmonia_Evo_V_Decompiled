.class Lcom/htc/store/activity/list/ListCategory$CheckContentTask;
.super Landroid/os/AsyncTask;
.source "ListCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory;
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
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/list/ListCategory;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/list/ListCategory;Lcom/htc/store/activity/list/ListCategory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 885
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 889
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    const-string v7, "doInBackground: CheckContentTask"

    aput-object v7, v3, v9

    invoke-static {v0, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    invoke-static {}, Lcom/htc/store/util/ImageUtils;->clearCache()V

    .line 891
    const/4 v6, 0x0

    .line 893
    .local v6, action:I
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v0}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v1

    .line 894
    .local v1, categoryId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 895
    .local v4, current:J
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    if-nez v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    new-instance v3, Lcom/htc/store/provider/AccessHelper;

    iget-object v7, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v7}, Lcom/htc/store/activity/list/ListCategory;->access$2100(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mImageCacheMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v3, v3, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v3, v9}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItems(I)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/store/activity/list/ListCategory;->mImageCacheMapping:Ljava/util/HashMap;

    .line 902
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mImageCacheMapping:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/htc/store/activity/list/ListCategory;->mImageCacheMapping:Ljava/util/HashMap;

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget v0, v0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v0, v8, :cond_9

    .line 908
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v3, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->hasPromoItem(J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 910
    :cond_3
    const/4 v6, 0x4

    .line 935
    :goto_0
    if-ne v6, v8, :cond_4

    .line 936
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->prepareDownloadCategoryIconTask(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/store/activity/list/ListCategory;->access$2200(Lcom/htc/store/activity/list/ListCategory;J)V

    .line 938
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 912
    :cond_5
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v3, v3, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v3, v1, v2}, Lcom/htc/store/provider/AccessHelper;->getPromoItemsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;

    .line 914
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v3, 0x5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->hasFeaturedItem(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 916
    :cond_6
    const/4 v6, 0x5

    goto :goto_0

    .line 918
    :cond_7
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v3, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v3, v3, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v3, v1, v2}, Lcom/htc/store/provider/AccessHelper;->getFeaturedItemsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    .line 920
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 921
    const/4 v6, 0x6

    goto :goto_0

    .line 923
    :cond_8
    const/4 v6, 0x1

    goto :goto_0

    .line 928
    :cond_9
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->hasCategoryItem(J)Z

    move-result v0

    if-nez v0, :cond_b

    .line 930
    :cond_a
    const/4 v6, 0x6

    goto :goto_0

    .line 932
    :cond_b
    const/4 v6, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 885
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 944
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "onPostExecute: CheckContentTask"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$2300(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$2400(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 946
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    .line 947
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget v0, v0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v0, v3, :cond_0

    .line 948
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget v1, v1, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    #calls: Lcom/htc/store/activity/list/ListCategory;->initPromoFeaturedViews(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/list/ListCategory;->access$2500(Lcom/htc/store/activity/list/ListCategory;I)V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$2600(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 951
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/list/ListCategory;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/list/ListCategory;->access$2700(Lcom/htc/store/activity/list/ListCategory;I)V

    .line 952
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasIdleTask()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasToDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->start()V

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget v0, v0, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    if-ne v0, v3, :cond_2

    .line 957
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 958
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    new-instance v1, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {v1, v2}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    iput-object v1, v0, Lcom/htc/store/activity/list/ListCategory;->mDownloadPromoImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    .line 959
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mDownloadPromoImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 961
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 962
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    new-instance v1, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {v1, v2}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    iput-object v1, v0, Lcom/htc/store/activity/list/ListCategory;->mDownloadFeaturedImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    .line 963
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mDownloadFeaturedImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListCategory;->mCheckContentTask:Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    .line 968
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$2800(Lcom/htc/store/activity/list/ListCategory;)Z

    .line 974
    :cond_3
    :goto_0
    return-void

    .line 970
    :cond_4
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListCategory;->mCheckContentTask:Lcom/htc/store/activity/list/ListCategory$CheckContentTask;

    .line 971
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 885
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListCategory$CheckContentTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
