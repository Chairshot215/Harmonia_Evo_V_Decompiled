.class Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;
.super Landroid/os/AsyncTask;
.source "AccountRecentLabelSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/AccountRecentLabelSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLabelListsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/google/android/gm/UiHandler;

.field private final mTaskAccount:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/AccountRecentLabelSpinner;Ljava/lang/String;Lcom/google/android/gm/UiHandler;)V
    .locals 0
    .parameter
    .parameter "account"
    .parameter "handler"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 323
    iput-object p2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->mTaskAccount:Ljava/lang/String;

    .line 324
    iput-object p3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->mHandler:Lcom/google/android/gm/UiHandler;

    .line 325
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;
    .locals 8
    .parameter "params"

    .prologue
    .line 334
    iget-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v4}, Lcom/google/android/gm/AccountRecentLabelSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->mTaskAccount:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v1

    .line 337
    .local v1, ll:Lcom/google/android/gm/provider/LabelList;
    iget-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v4}, Lcom/google/android/gm/AccountRecentLabelSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/RecentLabelsCache;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/RecentLabelsCache;

    move-result-object v2

    .line 341
    .local v2, recentLabelCache:Lcom/google/android/gm/RecentLabelsCache;
    iget-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->mTaskAccount:Ljava/lang/String;

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->mHandler:Lcom/google/android/gm/UiHandler;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gm/RecentLabelsCache;->getRecentLabelNames(Ljava/lang/String;ILcom/google/android/gm/UiHandler;)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    move-result-object v3

    .line 344
    .local v3, rl:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    iget-object v4, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v4}, Lcom/google/android/gm/AccountRecentLabelSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->mTaskAccount:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, defaultInbox:Ljava/lang/String;
    new-instance v4, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;

    invoke-direct {v4, v1, v3, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;-><init>(Lcom/google/android/gm/provider/LabelList;Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;Ljava/lang/String;)V

    return-object v4
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 318
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->mTaskAccount:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->mTaskAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$900(Lcom/google/android/gm/AccountRecentLabelSpinner;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    iget-object v1, p1, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    #setter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$402(Lcom/google/android/gm/AccountRecentLabelSpinner;Lcom/google/android/gm/provider/LabelList;)Lcom/google/android/gm/provider/LabelList;

    .line 357
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    iget-object v1, p1, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    #setter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    invoke-static {v0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$1002(Lcom/google/android/gm/AccountRecentLabelSpinner;Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    .line 358
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    iget-object v1, p1, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;->mDefaultInbox:Ljava/lang/String;

    #setter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mDefaultInbox:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$1102(Lcom/google/android/gm/AccountRecentLabelSpinner;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelList:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    invoke-static {v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$1000(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListObserver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$1200(Lcom/google/android/gm/AccountRecentLabelSpinner;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$400(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListObserver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$1200(Lcom/google/android/gm/AccountRecentLabelSpinner;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$400(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/LabelList;->registerForLabelChanges()V

    .line 364
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListObserver:Landroid/database/DataSetObserver;
    invoke-static {v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$1200(Lcom/google/android/gm/AccountRecentLabelSpinner;)Landroid/database/DataSetObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 366
    iget-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelListsUpdateTask:Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;
    invoke-static {v0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$1302(Lcom/google/android/gm/AccountRecentLabelSpinner;Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;)Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 318
    check-cast p1, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelListsTask;->onPostExecute(Lcom/google/android/gm/AccountRecentLabelSpinner$GetLabelsTaskResult;)V

    return-void
.end method
