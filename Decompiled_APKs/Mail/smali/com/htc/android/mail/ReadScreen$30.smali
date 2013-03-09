.class Lcom/htc/android/mail/ReadScreen$30;
.super Landroid/content/BroadcastReceiver;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 3668
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x4

    .line 3671
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3672
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3673
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v3}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/htc/android/mail/ReadScreen;->mIsAirPlaneMode:I
    invoke-static {v2, v3}, Lcom/htc/android/mail/ReadScreen;->access$4602(Lcom/htc/android/mail/ReadScreen;I)I

    .line 3710
    :cond_0
    :goto_0
    return-void

    .line 3675
    :cond_1
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3682
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ReadScreen"

    const-string v3, "SD card mount/unmount event!"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->reloadAttachment()V
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$4700(Lcom/htc/android/mail/ReadScreen;)V

    goto :goto_0

    .line 3684
    :cond_4
    const-string v2, "com.htc.mail.eas.intent.delete_exchg_account"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3685
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ReadScreen"

    const-string v3, "!!!Attention!!! onReceive() delete exchange account"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3686
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-eq v2, v5, :cond_6

    .line 3687
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account.protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

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

    .line 3690
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v2}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto :goto_0

    .line 3691
    :cond_7
    const-string v2, "intent.eas.mail.mailbox.empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3692
    const-string v2, "Mailbox.Empty.ServerId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3693
    .local v1, collId:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailbox empty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    :cond_8
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3695
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3697
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3701
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$4800(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$4800(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$4800(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3702
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "ReadScreen"

    const-string v3, "mailbox empty leave"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    :cond_9
    invoke-static {}, Lcom/htc/android/mail/ReadScreen$MessageIds;->destroy()V

    .line 3704
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v2}, Lcom/htc/android/mail/ReadScreen;->finish()V

    goto/16 :goto_0

    .line 3707
    .end local v1           #collId:Ljava/lang/String;
    :cond_a
    const-string v2, "com.htc.android.mail.contact_status_changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3708
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$30;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v3, 0x1

    #setter for: Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z
    invoke-static {v2, v3}, Lcom/htc/android/mail/ReadScreen;->access$1602(Lcom/htc/android/mail/ReadScreen;Z)Z

    goto/16 :goto_0
.end method
