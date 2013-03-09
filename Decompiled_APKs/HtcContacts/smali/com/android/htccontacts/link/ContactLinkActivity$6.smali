.class Lcom/android/htccontacts/link/ContactLinkActivity$6;
.super Ljava/lang/Thread;
.source "ContactLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;->showAsyncProgressBeforeFinish(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iput-object p2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x64

    const/4 v4, 0x2

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->processSuggestionAfterPressOk()V
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$500(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 613
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->applyBatchOperations()V
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$600(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 614
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->updateSelfBeforeFinish()V
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$700(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 615
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->notifyContactCard()V
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$800(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 616
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteLinkChangeIntent(Landroid/content/Context;)V

    .line 618
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$900(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveSuggestContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1000(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastSuggestionChangeIntent(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1100(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 627
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1200(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/os/Handler;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 629
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ContactLinkActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove photo may crash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1100(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 627
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1200(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/os/Handler;

    move-result-object v1

    goto :goto_0

    .line 626
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1100(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 627
    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$6;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1200(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 626
    throw v1
.end method
