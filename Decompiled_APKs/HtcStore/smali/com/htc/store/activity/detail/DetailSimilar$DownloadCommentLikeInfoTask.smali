.class Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;
.super Landroid/os/AsyncTask;
.source "DetailSimilar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailSimilar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadCommentLikeInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemsToDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailSimilar;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
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
    .line 952
    .local p2, itemsToDownload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->mItemsToDownload:Ljava/util/ArrayList;

    .line 954
    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z
    invoke-static {p1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 955
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 959
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "DownloadCommentLikeInfoTask : doInBackground"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    const/4 v0, -0x1

    .line 961
    .local v0, action:I
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3000(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v5

    if-nez v5, :cond_0

    .line 962
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v6, Lcom/htc/store/module/rest/RestHelper;

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailSimilar;->access$4600(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v5, v6}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3002(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 964
    :cond_0
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->mItemsToDownload:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->mItemsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 965
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$3000(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->mItemsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/htc/store/module/rest/RestHelper;->getCommentLikeInfo(Ljava/util/ArrayList;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v3

    .line 966
    .local v3, result:Lcom/htc/store/module/rest/RestResult;
    iget v5, v3, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    .line 967
    iget-object v5, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 969
    iget-object v2, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 970
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "result count (DownloadCommentLikeCountTask): "

    aput-object v7, v6, v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/store/provider/AccessHelper;->updateItemItemsCommentLikeInfoOnly(Ljava/util/ArrayList;)I

    move-result v1

    .line 972
    .local v1, count:I
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "update count (DownloadCommentLikeCountTask): "

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    .line 979
    .local v4, similarItemOnlineId:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/htc/store/module/vo/SimilarityStructureItem;

    invoke-direct {v7}, Lcom/htc/store/module/vo/SimilarityStructureItem;-><init>()V

    invoke-virtual {v7, v4}, Lcom/htc/store/module/vo/SimilarityStructureItem;->toContentValuesForUIUpdate(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v5, v6, v4, v7}, Lcom/htc/store/provider/AccessHelper;->updateSimilarItem(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 987
    .end local v1           #count:I
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .end local v3           #result:Lcom/htc/store/module/rest/RestResult;
    .end local v4           #similarItemOnlineId:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 982
    .restart local v3       #result:Lcom/htc/store/module/rest/RestResult;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 985
    .end local v3           #result:Lcom/htc/store/module/rest/RestResult;
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "mItemsToDownload is null/empty."

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 948
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1005
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DownloadCommentLikeInfoTask : onCancelled"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 1007
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1008
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2700(Lcom/htc/store/activity/detail/DetailSimilar;)V

    .line 1009
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 1010
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 992
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DownloadCommentLikeInfoTask : onPostExecute"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 994
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2700(Lcom/htc/store/activity/detail/DetailSimilar;)V

    .line 995
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 948
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Boolean;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 999
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DownloadCommentLikeInfoTask : onProgressUpdate"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    const/16 v1, 0xa

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->doShowAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$4700(Lcom/htc/store/activity/detail/DetailSimilar;I)V

    .line 1001
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 948
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->onProgressUpdate([Ljava/lang/Boolean;)V

    return-void
.end method
