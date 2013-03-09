.class Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;
.super Landroid/os/AsyncTask;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadFeaturedIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsClearCache:Z

.field private mItem:Lcom/htc/store/module/vo/FeaturedItem;

.field private mPosition:I

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/module/vo/FeaturedItem;IZ)V
    .locals 1
    .parameter
    .parameter "item"
    .parameter "position"
    .parameter "isClearCache"

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1856
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mPosition:I

    .line 1857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mIsClearCache:Z

    .line 1859
    iput-object p2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mItem:Lcom/htc/store/module/vo/FeaturedItem;

    .line 1860
    iput p3, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mPosition:I

    .line 1861
    iput-boolean p4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mIsClearCache:Z

    .line 1862
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 12
    .parameter "params"

    .prologue
    .line 1866
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "doInBackground: DownloadFeaturedIconTask"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1867
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1868
    .local v2, needRetry:Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mItem:Lcom/htc/store/module/vo/FeaturedItem;

    invoke-virtual {v7}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v3

    .line 1869
    .local v3, onlineId:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v7, v7, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/htc/store/util/StorageUtils;->getTemporaryFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1870
    .local v5, swapPath:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v7, v7, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-static {v7, v8, v3}, Lcom/htc/store/util/StorageUtils;->getFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1872
    .local v6, targetPath:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mIsClearCache:Z

    if-eqz v7, :cond_2

    .line 1873
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mItem:Lcom/htc/store/module/vo/FeaturedItem;

    invoke-virtual {v7}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mItem:Lcom/htc/store/module/vo/FeaturedItem;

    invoke-virtual {v7}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1875
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v7, v7, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v8, v8, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    const/4 v10, 0x5

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 1919
    :cond_0
    :goto_0
    return-object v2

    .line 1878
    :cond_1
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v8, v8, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v9, v9, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-virtual {v8, v9, v10}, Lcom/htc/store/provider/AccessHelper;->getFeaturedOnlineIdsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v9, v9, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    const/4 v11, 0x5

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->clearCache(Ljava/util/ArrayList;JI)V
    invoke-static {v7, v8, v9, v10, v11}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4500(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;JI)V

    .line 1879
    invoke-static {v5, v6}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1880
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v7, v7, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v8, v8, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-virtual {v7, v8, v9}, Lcom/htc/store/provider/AccessHelper;->removeFeaturedByCategoryId(J)I

    .line 1882
    :try_start_0
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v7, v7, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v8, v8, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/htc/store/provider/AccessHelper;->addFeaturedItems(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1883
    :catch_0
    move-exception v0

    .line 1884
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1885
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "update featured failed, reset next time"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1886
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v7, v7, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v8, v8, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    const/4 v10, 0x5

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    goto :goto_0

    .line 1898
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v4, -0x1

    .line 1900
    .local v4, retrieveResult:I
    invoke-static {v6}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1901
    const/4 v4, 0x1

    .line 1905
    :goto_1
    if-nez v4, :cond_4

    .line 1906
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 1903
    :cond_3
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mItem:Lcom/htc/store/module/vo/FeaturedItem;

    invoke-virtual {v7}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 1908
    :cond_4
    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    .line 1909
    invoke-static {v5, v6}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1910
    .local v1, isMoveFileSuccessfully:Z
    if-eqz v1, :cond_5

    .line 1911
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "move "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    const-string v10, " to "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v6, v8, v9

    const/4 v9, 0x4

    const-string v10, " successfully"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1913
    :cond_5
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1914
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "move "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    const-string v10, " to "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v6, v8, v9

    const/4 v9, 0x4

    const-string v10, " failed"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1853
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    .line 1948
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onCancelled: DownloadFeaturedIconTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1949
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1950
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7
    .parameter "needRetry"

    .prologue
    const/4 v6, 0x4

    .line 1924
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onPostExecute: DownloadFeaturedIconTask"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1925
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5100(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5200(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5300(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1926
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1929
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1930
    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mPosition:I

    const/16 v4, 0x8

    iget-boolean v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mIsClearCache:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;IIZ)V

    .line 1935
    .local v1, status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :goto_0
    iput v6, v0, Landroid/os/Message;->what:I

    .line 1936
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1937
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v6}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1938
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v6}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1940
    :cond_0
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->isOkToSendMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1941
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1944
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :cond_1
    return-void

    .line 1932
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mPosition:I

    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->mIsClearCache:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;IIZ)V

    .restart local v1       #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1853
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadFeaturedIconTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
