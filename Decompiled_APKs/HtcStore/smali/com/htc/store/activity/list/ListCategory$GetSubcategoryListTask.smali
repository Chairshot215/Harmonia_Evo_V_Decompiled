.class Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;
.super Landroid/os/AsyncTask;
.source "ListCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSubcategoryListTask"
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
    .line 1480
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/list/ListCategory;Lcom/htc/store/activity/list/ListCategory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1480
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 14
    .parameter "params"

    .prologue
    .line 1484
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "doInBackground: GetSubcategoryListTask"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1485
    const/4 v0, 0x0

    .line 1486
    .local v0, action:I
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-nez v10, :cond_0

    .line 1487
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    new-instance v11, Lcom/htc/store/module/rest/RestHelper;

    iget-object v12, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v12}, Lcom/htc/store/activity/list/ListCategory;->access$4700(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v11, v10, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 1489
    :cond_0
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v1

    .line 1491
    .local v1, categoryId:J
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget v10, v10, Lcom/htc/store/activity/list/ListCategory;->mPageType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 1492
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    iget-object v11, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v11, v11, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v11}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v12, v12, Lcom/htc/store/activity/list/ListCategory;->mIsOperator:Z

    invoke-virtual {v10, v1, v2, v11, v12}, Lcom/htc/store/module/rest/RestHelper;->getNavList(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v9

    .line 1496
    .local v9, result:Lcom/htc/store/module/rest/RestResult;
    :goto_0
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v10, v10, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-eqz v10, :cond_2

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1532
    :goto_1
    return-object v10

    .line 1494
    .end local v9           #result:Lcom/htc/store/module/rest/RestResult;
    :cond_1
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    iget-object v11, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v11, v11, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v11}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v12, v12, Lcom/htc/store/activity/list/ListCategory;->mIsOperator:Z

    invoke-virtual {v10, v1, v2, v11, v12}, Lcom/htc/store/module/rest/RestHelper;->getSubcategoryList(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v9

    .restart local v9       #result:Lcom/htc/store/module/rest/RestResult;
    goto :goto_0

    .line 1497
    :cond_2
    iget v10, v9, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_7

    .line 1498
    iget-object v10, v9, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, v9, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1499
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Has category items."

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1502
    :try_start_0
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v10, v1, v2}, Lcom/htc/store/provider/AccessHelper;->getCategoryOnlineIdsByParentId(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 1503
    .local v3, dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1504
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1505
    .local v7, onlineId:Ljava/lang/String;
    invoke-static {v1, v2, v7}, Lcom/htc/store/util/StorageUtils;->getCategoryIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1506
    .local v8, path:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/store/util/StorageUtils;->removeFile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1507
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Remove "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    const/4 v12, 0x2

    const-string v13, "successfully"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1517
    .end local v3           #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #onlineId:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1518
    .local v4, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1519
    const/4 v0, 0x3

    .line 1529
    .end local v4           #e:Ljava/lang/Exception;
    :goto_3
    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    .line 1530
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    const/4 v11, 0x1

    #calls: Lcom/htc/store/activity/list/ListCategory;->prepareDownloadCategoryIconTask(JZ)V
    invoke-static {v10, v1, v2, v11}, Lcom/htc/store/activity/list/ListCategory;->access$4800(Lcom/htc/store/activity/list/ListCategory;JZ)V

    .line 1532
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_1

    .line 1513
    .restart local v3       #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    iget-object v6, v9, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 1514
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v10, v10, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v10, v1, v2, v6}, Lcom/htc/store/provider/AccessHelper;->syncCategoryItems(JLjava/util/ArrayList;)Z

    .line 1515
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1516
    const/4 v0, 0x1

    goto :goto_3

    .line 1522
    .end local v3           #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :cond_6
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "No category items."

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1523
    const/4 v0, 0x2

    goto :goto_3

    .line 1526
    :cond_7
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "result.mResultCode: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v9, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1527
    const/4 v0, 0x3

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1480
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1537
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: GetSubcategoryListTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$4900(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$5000(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$5100(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1540
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/list/ListCategory;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/list/ListCategory;->access$2700(Lcom/htc/store/activity/list/ListCategory;I)V

    .line 1541
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListCategory;->mGetSubcategoryListTask:Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;

    .line 1543
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasIdleTask()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasToDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1545
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/list/ListCategory;->access$5200(Lcom/htc/store/activity/list/ListCategory;Z)V

    .line 1546
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->start()V

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$2800(Lcom/htc/store/activity/list/ListCategory;)Z

    goto :goto_0

    .line 1551
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListCategory;->mGetSubcategoryListTask:Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;

    .line 1552
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1480
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListCategory$GetSubcategoryListTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
