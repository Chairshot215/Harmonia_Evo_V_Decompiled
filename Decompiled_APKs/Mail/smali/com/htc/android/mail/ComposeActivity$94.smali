.class Lcom/htc/android/mail/ComposeActivity$94;
.super Landroid/os/Handler;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 11675
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 11678
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 11701
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 11680
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 11681
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 11682
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 11686
    .end local v0           #text:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getUseSignature()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSignature:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$11900(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11687
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->bodyText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$7600(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->bodyText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$7600(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 11688
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->bodyText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$7600(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->bodyText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$7600(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSignature:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$11900(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSignature:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$11900(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11690
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->bodyText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$7600(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSignature:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$11900(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 11695
    :pswitch_3
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/mail/ComposeActivity;->doUpdateContactInfo(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$12300(Lcom/htc/android/mail/ComposeActivity;I)V

    goto/16 :goto_0

    .line 11698
    :pswitch_4
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$94;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/mail/ComposeActivity;->doUpdateSingleContact(Ljava/lang/Object;I)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$12400(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 11678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
