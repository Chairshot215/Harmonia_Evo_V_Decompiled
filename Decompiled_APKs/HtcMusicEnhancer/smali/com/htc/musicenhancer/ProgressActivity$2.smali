.class Lcom/htc/musicenhancer/ProgressActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/ProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/musicenhancer/ProgressActivity$2;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, action:Ljava/lang/String;
    const-string v1, "action_complete_one_download"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    const-string v1, "[ProgressActivity]"

    const-string v2, "Receive ACTION_COMPLETE_ONE_DOWNLOAD"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity$2;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    const-string v2, "total_download_count"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I
    invoke-static {v1, v2}, Lcom/htc/musicenhancer/ProgressActivity;->access$202(Lcom/htc/musicenhancer/ProgressActivity;I)I

    .line 244
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity$2;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    const-string v2, "current_download_count"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I
    invoke-static {v1, v2}, Lcom/htc/musicenhancer/ProgressActivity;->access$302(Lcom/htc/musicenhancer/ProgressActivity;I)I

    .line 245
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity$2;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    iget-object v2, p0, Lcom/htc/musicenhancer/ProgressActivity$2;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    #getter for: Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I
    invoke-static {v2}, Lcom/htc/musicenhancer/ProgressActivity;->access$200(Lcom/htc/musicenhancer/ProgressActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/musicenhancer/ProgressActivity$2;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    #getter for: Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I
    invoke-static {v3}, Lcom/htc/musicenhancer/ProgressActivity;->access$300(Lcom/htc/musicenhancer/ProgressActivity;)I

    move-result v3

    #calls: Lcom/htc/musicenhancer/ProgressActivity;->refreshProgress(II)V
    invoke-static {v1, v2, v3}, Lcom/htc/musicenhancer/ProgressActivity;->access$400(Lcom/htc/musicenhancer/ProgressActivity;II)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v1, "action_download_finish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity$2;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/ProgressActivity;->finish()V

    goto :goto_0
.end method
