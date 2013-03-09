.class Lcom/htc/android/mail/MailPreferenceActivity$9;
.super Landroid/os/Handler;
.source "MailPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 431
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 458
    :goto_0
    return-void

    .line 433
    :sswitch_0
    invoke-static {}, Lcom/htc/android/mail/MailPreferenceActivity;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/android/mail/MailPreferenceActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ATS][com.htc.android.mail][delete_account][successful]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailPreferenceActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>>mDelAccountHandler:  MSG_DELETE_ACCOUNT_END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #setter for: Lcom/htc/android/mail/MailPreferenceActivity;->mbDeletingAccount:Z
    invoke-static {v1, v3}, Lcom/htc/android/mail/MailPreferenceActivity;->access$302(Lcom/htc/android/mail/MailPreferenceActivity;Z)Z

    .line 436
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-static {v1, v4}, Lcom/htc/android/mail/MailPreferenceActivity;->access$1276(Lcom/htc/android/mail/MailPreferenceActivity;I)I

    .line 437
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailPreferenceActivity;->setResult(I)V

    .line 438
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailPreferenceActivity;->finish()V

    goto :goto_0

    .line 444
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #setter for: Lcom/htc/android/mail/MailPreferenceActivity;->mbDeletingAccount:Z
    invoke-static {v1, v4}, Lcom/htc/android/mail/MailPreferenceActivity;->access$302(Lcom/htc/android/mail/MailPreferenceActivity;Z)Z

    .line 445
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailPreferenceActivity;->showDialog(I)V

    .line 446
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mShowAccountInfoPerference:Z
    invoke-static {v1}, Lcom/htc/android/mail/MailPreferenceActivity;->access$1300(Lcom/htc/android/mail/MailPreferenceActivity;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 447
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    iget-object v1, v1, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_info"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    iget-object v1, v1, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "receive_send"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 450
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    iget-object v1, v1, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "display_setting"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 451
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    iget-object v1, v1, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "account_detail_delete_account"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 452
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    iget-object v1, v1, Lcom/htc/android/mail/MailPreferenceActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "misc"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 453
    new-instance v0, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;

    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$9;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;I)V

    .line 454
    .local v0, deleteThread:Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;
    invoke-virtual {v0}, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;->start()V

    goto/16 :goto_0

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method
