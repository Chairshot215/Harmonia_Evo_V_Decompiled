.class Lcom/htc/android/mail/MailList$33;
.super Landroid/content/BroadcastReceiver;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 4638
    iput-object p1, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, 0x1388

    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4641
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4642
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4643
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v5, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v5}, Lcom/htc/android/mail/MailList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/htc/android/mail/MailList;->airPlane:I

    .line 4746
    :cond_0
    :goto_0
    return-void

    .line 4645
    :cond_1
    const-string v4, "com.htc.mail.eas.intent.delete_exchg_account"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4646
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "MailList"

    const-string v5, "!!!Attention!!! onReceive() delete exchange account"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4647
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 4648
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MailList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account.protocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v6, v6, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". need not finish this view"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4665
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4666
    .local v3, mailListIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    const-class v5, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4667
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4668
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 4670
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailList;->finish()V

    goto :goto_0

    .line 4671
    .end local v3           #mailListIntent:Landroid/content/Intent;
    :cond_4
    const-string v4, "android.mail.notification.NotifyNewMail"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4672
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "MailList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOTIFY_NEW_MAIL_ACTION, mIsInForeground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v6}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4673
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4674
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/MailList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 4675
    .local v2, km:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->keyguardIsShowing()Z

    move-result v1

    .line 4676
    .local v1, keyguardIsShowing:Z
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "MailList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyguardIsShowing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4677
    :cond_6
    if-nez v1, :cond_0

    .line 4678
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "MailList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive new mail coming notification accid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;
    invoke-static {v6}, Lcom/htc/android/mail/MailList;->access$4500(Lcom/htc/android/mail/MailList;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    :cond_7
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4700(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$RequestHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4680
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4700(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$RequestHandler;

    move-result-object v4

    new-instance v5, Lcom/htc/android/mail/MailList$33$1;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/MailList$33$1;-><init>(Lcom/htc/android/mail/MailList$33;)V

    invoke-virtual {v4, v5, v9, v10}, Lcom/htc/android/mail/MailList$RequestHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4687
    .end local v1           #keyguardIsShowing:Z
    .end local v2           #km:Landroid/app/KeyguardManager;
    :cond_8
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4688
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "MailList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_USER_PRESENT, mIsInForeground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v6}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4689
    :cond_9
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4690
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4700(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$RequestHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4691
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4700(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$RequestHandler;

    move-result-object v4

    new-instance v5, Lcom/htc/android/mail/MailList$33$2;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/MailList$33$2;-><init>(Lcom/htc/android/mail/MailList$33;)V

    invoke-virtual {v4, v5, v9, v10}, Lcom/htc/android/mail/MailList$RequestHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4698
    :cond_a
    const-string v4, "com.htc.android.mail.SYNCHUXACCOUNT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4700
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/Account;->getNeedSyncHUXAccount(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4704
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    .line 4705
    new-instance v4, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;

    invoke-direct {v4}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    invoke-static {v6}, Lcom/htc/android/mail/MailList;->access$4800(Lcom/htc/android/mail/MailList;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 4708
    :cond_b
    const-string v4, "com.android.server.status.StatusBarView.STATUS_BAR_TAP_EVENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4710
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v4

    if-ne v4, v8, :cond_0

    .line 4711
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "MailList"

    const-string v5, "Tapped status bar, go to position 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    :cond_c
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto/16 :goto_0

    .line 4717
    :cond_d
    const-string v4, "HTC_IME_CURRENT_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4718
    if-eqz p2, :cond_0

    .line 4722
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4725
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "MailList"

    const-string v5, "HTC_IME_CURRENT_STATE>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4726
    :cond_e
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const-string v5, "SIP_VISIBLE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/htc/android/mail/MailListTab;->mIsIMEup:Z

    .line 4729
    const-string v4, "SIP_VISIBLE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4730
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "MailList"

    const-string v5, "SIP_VISIBLE true>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4731
    :cond_f
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v4, v4, Lcom/htc/android/mail/MailListTab;->mTab:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 4733
    :cond_10
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "MailList"

    const-string v5, "SIP_VISIBLE false>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4734
    :cond_11
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v4, v4, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-ne v4, v6, :cond_12

    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailListTab;->getTabCount()I

    move-result v4

    if-le v4, v8, :cond_12

    .line 4735
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v4, v4, Lcom/htc/android/mail/MailListTab;->mTab:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 4736
    :cond_12
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v4, v4, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 4737
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v4, v4, Lcom/htc/android/mail/MailListTab;->mTab:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 4740
    :cond_13
    const-string v4, "com.htc.eas.intent.updateFolderName"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4741
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    if-nez v4, :cond_0

    .line 4742
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v5, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v5, v5, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v6}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    iget-wide v6, v6, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    #setter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v4, v5}, Lcom/htc/android/mail/MailList;->access$502(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailbox;

    .line 4743
    iget-object v4, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v5, p0, Lcom/htc/android/mail/MailList$33;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v5

    #calls: Lcom/htc/android/mail/MailList;->updateTabTitle(Lcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v4, v5}, Lcom/htc/android/mail/MailList;->access$4900(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    goto/16 :goto_0
.end method
