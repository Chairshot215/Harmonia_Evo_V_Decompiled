.class Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;
.super Landroid/os/AsyncTask;
.source "DetailSimilar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailSimilar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSimilarTask"
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
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailSimilar;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 631
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 632
    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z
    invoke-static {p1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 633
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 637
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "GetSimilarTask : doInBackground"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    const/4 v0, -0x1

    .line 640
    .local v0, action:I
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3000(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 641
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v5, Lcom/htc/store/module/rest/RestHelper;

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3100(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3002(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 644
    :cond_0
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3000(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/store/module/rest/RestHelper;->getSimilarItem(Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v3

    .line 646
    .local v3, result:Lcom/htc/store/module/rest/RestResult;
    iget v4, v3, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    .line 647
    iget-object v4, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 650
    :try_start_0
    iget-object v2, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 651
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "there are "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, " similar items of "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/htc/store/provider/AccessHelper;->syncSimilarityItems(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/store/provider/AccessHelper;->syncItemItemsOnlyAddAndUpdate(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 654
    const/4 v0, 0x2

    .line 655
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/store/provider/AccessHelper;->getSimilarItemsByOnlineId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1702(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 656
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "after insertion, there are "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1700(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, " similar items of "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1800(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-result-object v4

    if-nez v4, :cond_1

    .line 658
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v5, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;I)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1802(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    .line 660
    :cond_1
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1800(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1700(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->insertItems(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 663
    .restart local v2       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :cond_2
    const/4 v0, 0x0

    .line 664
    :try_start_1
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "sync similar items failed"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 666
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :catch_0
    move-exception v1

    .line 667
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 668
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 671
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "similar call result is empty"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    const/4 v0, 0x0

    goto :goto_0

    .line 675
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "similar call failed"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 708
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "GetSimilarTask : onCancelled"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z

    move-result-object v0

    aput-boolean v3, v0, v4

    .line 710
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 711
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2700(Lcom/htc/store/activity/detail/DetailSimilar;)V

    .line 712
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 713
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "action"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 684
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "GetSimilarTask : onPostExecute, action is "

    aput-object v2, v1, v5

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z

    move-result-object v0

    aput-boolean v5, v0, v4

    .line 686
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3200(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3300(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3400(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 688
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->isOkToDownloadIcon()Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2300(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1800(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->start()V

    .line 690
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 691
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->isHtcAccountExisted()Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3500(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->isOkToDownloadCommentLikeInfo()Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2500(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v1, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1700(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/ArrayList;)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2602(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;)Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    .line 695
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2600(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 696
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 697
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 703
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2700(Lcom/htc/store/activity/detail/DetailSimilar;)V

    .line 704
    return-void

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 629
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
