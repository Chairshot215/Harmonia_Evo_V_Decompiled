.class Lcom/android/mms/ui/ComposeMessageActivity$76;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$address_for_thread:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13976
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$address_for_thread:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 13980
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$address_for_thread:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/ui/RecipientList;->getRecipientList(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/ui/RecipientList;

    move-result-object v0

    .line 13986
    .local v0, tmp:Lcom/android/mms/ui/RecipientList;
    if-eqz v0, :cond_0

    .line 13987
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v2

    monitor-enter v2

    .line 13988
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->release()V

    .line 13989
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2202(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList;)Lcom/android/mms/ui/RecipientList;

    .line 13990
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13993
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13994
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/mms/ui/StateWatcher;->updateHasRecipients(Z)V

    .line 13999
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailTitleEnhance()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAddressName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAddressName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->countInvalidRecipients()I

    move-result v1

    if-lez v1, :cond_2

    .line 14002
    :cond_1
    const-string v1, "ComposeMessageActivity"

    const-string v2, "MSG_UPDATE_RECIPIENT_UI again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14003
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->refreshHeaderRecipientList()Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    .line 14004
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14012
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mContactId:J
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13600(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 14013
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$address_for_thread:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14016
    :cond_3
    return-void

    .line 13990
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 13994
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
