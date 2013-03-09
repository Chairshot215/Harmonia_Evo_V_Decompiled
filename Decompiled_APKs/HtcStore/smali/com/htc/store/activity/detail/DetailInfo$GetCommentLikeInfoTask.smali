.class Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;
.super Landroid/os/AsyncTask;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCommentLikeInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/htc/store/module/vo/ItemItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 2156
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2156
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/vo/ItemItem;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2159
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "doInBackground: GetCommentLikeInfoTask"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2160
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2161
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    new-instance v5, Lcom/htc/store/module/rest/RestHelper;

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$8500(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$6902(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 2162
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2163
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/store/module/rest/RestHelper;->getCommentLikeInfo(Ljava/util/ArrayList;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v2

    .line 2165
    .local v2, result:Lcom/htc/store/module/rest/RestResult;
    iget v4, v2, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_5

    .line 2166
    iget-object v4, v2, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2167
    :cond_1
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GetCommentLikeInfoTask - result is empty"

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    :cond_2
    :goto_0
    return-object v0

    .line 2170
    :cond_3
    iget-object v4, v2, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/module/vo/ItemItem;

    .line 2171
    .local v0, item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v0, :cond_2

    .line 2172
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v4

    if-nez v4, :cond_4

    .line 2173
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    new-instance v5, Lcom/htc/store/provider/AccessHelper;

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$8600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$5502(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/provider/AccessHelper;)Lcom/htc/store/provider/AccessHelper;

    .line 2174
    :cond_4
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->toContentValuesCommentLikeInfoOnly()Landroid/content/ContentValues;

    move-result-object v3

    .line 2175
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "category_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2176
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/htc/store/provider/AccessHelper;->updateItemItemByOnlineId(Ljava/lang/String;Landroid/content/ContentValues;)Z

    goto :goto_0

    .line 2181
    .end local v0           #item:Lcom/htc/store/module/vo/ItemItem;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_5
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GetCommentLikeInfoTask - result is not success"

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2156
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 2188
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: GetCommentLikeInfoTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2189
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$8700(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2190
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->showCommonErrorDialog()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$8800(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->updateCommentLikeInfoUI(Lcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v0, p1}, Lcom/htc/store/activity/detail/DetailInfo;->access$8900(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)V

    .line 2192
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1300(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/widget/HeaderBarImage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 2193
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$4800(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 2194
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2156
    check-cast p1, Lcom/htc/store/module/vo/ItemItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->onPostExecute(Lcom/htc/store/module/vo/ItemItem;)V

    return-void
.end method
