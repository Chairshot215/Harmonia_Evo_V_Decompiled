.class Lcom/android/mms/ui/ComposeMessageActivity$88;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/ComposeMessageActivity$SendMsgResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 15615
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSentResult(Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 15617
    iget-boolean v2, p1, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->success:Z

    .line 15618
    .local v2, success:Z
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInSendMessageUri:Landroid/net/Uri;
    invoke-static {v3, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14702(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 15620
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15621
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean v6, v3, Lcom/android/mms/ui/ComposeMessageActivity;->m_bAfterSent:Z

    .line 15623
    :cond_0
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendMsgResultCallback.onSentResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15624
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15625
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->hideIME(Landroid/widget/EditText;)V

    .line 15626
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v3, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 15628
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isDiscard:Z
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 15630
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 15660
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15661
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 15662
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->resetCounter()V

    .line 15664
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v1

    .line 15666
    .local v1, dests:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_3

    .line 15667
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getLongestEmailFromArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15668
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 15669
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MessageTextEditor;->updateEmailString(Ljava/lang/String;)V

    .line 15674
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #dests:[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 15675
    return-void

    .line 15631
    :cond_4
    if-eqz v2, :cond_1

    .line 15633
    invoke-static {}, Lcom/android/mms/MmsApp;->isFineTuneSaveDraft()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->isThreadMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 15634
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isDiscard:Z
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 15645
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->postSendingMessage(Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;)V
    invoke-static {v3, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;)V

    .line 15648
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendMessageDirect:Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15649
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->hideIME(Landroid/widget/EditText;)V

    .line 15651
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isDiscard:Z
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 15653
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_0
.end method
