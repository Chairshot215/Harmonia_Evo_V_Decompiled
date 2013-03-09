.class Lcom/android/mms/ui/ComposeMessageActivity$105;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->sendSMSViaYTL()V
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
    .line 17585
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v6, 0x1e

    const/4 v7, 0x1

    .line 17587
    packed-switch p2, :pswitch_data_0

    .line 17616
    :goto_0
    return-void

    .line 17589
    :pswitch_0
    const-string v2, "YTL"

    const-string v3, "choose use HtcMobile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17590
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->confirmNetworkBeforeSend()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 17593
    :pswitch_1
    const-string v2, "YTL"

    const-string v3, "shoose use YTL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17594
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 17595
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v4, 0x7f0903cf

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 17601
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HTC_SMS_SEND_VIA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17602
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientList;->getRecipientString()Ljava/lang/String;

    move-result-object v1

    .line 17603
    .local v1, recipientstr:Ljava/lang/String;
    const-string v2, "YTL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recipientstr to YTL is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17604
    const-string v2, "YTL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content to YTL is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17606
    const-string v2, "recipient"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17607
    const-string v2, "content"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17608
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 17610
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->discardTemporaryMessage()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 17611
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isDiscard:Z
    invoke-static {v2, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 17612
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$105;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto/16 :goto_0

    .line 17587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
