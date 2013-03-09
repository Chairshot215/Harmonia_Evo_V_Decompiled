.class Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;
.super Landroid/os/AsyncTask;
.source "DetailSimilar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailSimilar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializeAdapterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mIsForceUpdate:Z

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailSimilar;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar;Z)V
    .locals 1
    .parameter
    .parameter "isForceUpdate"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->mIsForceUpdate:Z

    .line 470
    iput-boolean p2, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->mIsForceUpdate:Z

    .line 471
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 5
    .parameter "params"

    .prologue
    .line 475
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "InitializeAdapterTask : doInBackground"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v2, Lcom/htc/store/provider/AccessHelper;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$600(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$502(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/provider/AccessHelper;)Lcom/htc/store/provider/AccessHelper;

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$700(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailSimilar;->access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/provider/AccessHelper;->findSimilarItemsByOnlineId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 481
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->doInBackground([Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    .line 501
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "InitializeAdapterTask : onCancelled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 486
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "InitializeAdapterTask : onPostExecute"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$700(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v1, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$900(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f030014

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;Landroid/content/Context;ILandroid/database/Cursor;)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$702(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;)Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    .line 489
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1000(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$700(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 490
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "adapter is set"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1000(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$700(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    new-instance v1, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    iget-boolean v3, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->mIsForceUpdate:Z

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    #setter for: Lcom/htc/store/activity/detail/DetailSimilar;->mCheckContentTask:Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1102(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;)Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

    .line 494
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mCheckContentTask:Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1100(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 495
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V
    invoke-static {v0, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 496
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 497
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 465
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
