.class Lcom/htc/android/mail/ComposeActivity$38;
.super Landroid/content/BroadcastReceiver;
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
    .line 5056
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5059
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5060
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5061
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/htc/android/mail/ComposeActivity;->airplane_mode:I

    .line 5064
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ComposeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_AIRPLANE_MODE_CHANGED>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v4, v4, Lcom/htc/android/mail/ComposeActivity;->airplane_mode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5065
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v2, v2, Lcom/htc/android/mail/ComposeActivity;->sending:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v2, v2, Lcom/htc/android/mail/ComposeActivity;->airplane_mode:I

    if-ne v2, v6, :cond_1

    .line 5067
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput-boolean v5, v2, Lcom/htc/android/mail/ComposeActivity;->sending:Z

    .line 5132
    :cond_1
    :goto_0
    return-void

    .line 5073
    :cond_2
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5081
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ComposeActivity"

    const-string v3, "SD card mount/unmount event!"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5082
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->refreshAttachList()V
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$6600(Lcom/htc/android/mail/ComposeActivity;)V

    goto :goto_0

    .line 5083
    :cond_5
    const-string v2, "com.htc.mail.eas.intent.delete_exchg_account"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5084
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "ComposeActivity"

    const-string v3, "!!!Attention!!! onReceive() delete exchange account"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5085
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    .line 5086
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ComposeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account.protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". need not finish this view"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5092
    :cond_7
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->doLeaveGetContactThread:Z
    invoke-static {v2, v6}, Lcom/htc/android/mail/ComposeActivity;->access$6702(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 5095
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2}, Lcom/htc/android/mail/ComposeActivity;->finish()V

    goto/16 :goto_0

    .line 5096
    :cond_8
    const-string v2, "HTC_IME_CURRENT_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5097
    if-eqz p2, :cond_1

    .line 5098
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "ComposeActivity"

    const-string v3, "HTC_IME_CURRENT_STATE>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5100
    :cond_9
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mRes:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$6800(Lcom/htc/android/mail/ComposeActivity;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 5102
    .local v1, config:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v4, :cond_b

    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v6, :cond_b

    .line 5103
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "ComposeActivity"

    const-string v3, "KEYBOARD_QWERTY  HARDKEYBOARDHIDDEN_NO>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5104
    :cond_a
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFooterBar:Lcom/htc/android/mail/widget/MailFooterBar4Btn;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$6900(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/widget/MailFooterBar4Btn;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/widget/MailFooterBar4Btn;->setVisibility(I)V

    goto/16 :goto_0

    .line 5108
    :cond_b
    const-string v2, "SIP_VISIBLE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5109
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "ComposeActivity"

    const-string v3, "SIP_VISIBLE true>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5110
    :cond_c
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mSipShow:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$7002(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 5116
    :goto_1
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_10

    .line 5117
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSipShow:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$7000(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #calls: Lcom/htc/android/mail/ComposeActivity;->setLandComposeBar(Z)V
    invoke-static {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$7100(Lcom/htc/android/mail/ComposeActivity;Z)V

    .line 5118
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSipShow:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$7000(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5119
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFooterBar:Lcom/htc/android/mail/widget/MailFooterBar4Btn;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$6900(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/widget/MailFooterBar4Btn;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/widget/MailFooterBar4Btn;->setVisibility(I)V

    goto/16 :goto_0

    .line 5112
    :cond_d
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "ComposeActivity"

    const-string v3, "SIP_VISIBLE false>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5113
    :cond_e
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mSipShow:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$7002(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_1

    .line 5121
    :cond_f
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFooterBar:Lcom/htc/android/mail/widget/MailFooterBar4Btn;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$6900(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/widget/MailFooterBar4Btn;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/widget/MailFooterBar4Btn;->setVisibility(I)V

    goto/16 :goto_0

    .line 5124
    :cond_10
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setLandComposeBar(Z)V
    invoke-static {v2, v5}, Lcom/htc/android/mail/ComposeActivity;->access$7100(Lcom/htc/android/mail/ComposeActivity;Z)V

    .line 5125
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFooterBar:Lcom/htc/android/mail/widget/MailFooterBar4Btn;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$6900(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/widget/MailFooterBar4Btn;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/widget/MailFooterBar4Btn;->setVisibility(I)V

    goto/16 :goto_0

    .line 5127
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_11
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5128
    :cond_12
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "ComposeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device will be shutdown, try save as draft if need. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5130
    :cond_13
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$38;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2}, Lcom/htc/android/mail/ComposeActivity;->finish()V

    goto/16 :goto_0
.end method
