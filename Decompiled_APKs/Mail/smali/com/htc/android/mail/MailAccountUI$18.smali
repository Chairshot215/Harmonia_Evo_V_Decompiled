.class Lcom/htc/android/mail/MailAccountUI$18;
.super Ljava/lang/Thread;
.source "MailAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI;->checkAccountWithSmtp(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailAccountUI;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$weakHandler:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object p2, p0, Lcom/htc/android/mail/MailAccountUI$18;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/android/mail/MailAccountUI$18;->val$weakHandler:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1455
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #setter for: Lcom/htc/android/mail/MailAccountUI;->m_bInvalidMailAddr:Z
    invoke-static {v0, v4}, Lcom/htc/android/mail/MailAccountUI;->access$1102(Lcom/htc/android/mail/MailAccountUI;Z)Z

    .line 1456
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$18;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$18;->val$weakHandler:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/android/mail/MailAccountUI;->checkOutgoing(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0, v1, v3, v2}, Lcom/htc/android/mail/MailAccountUI;->access$1200(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1457
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailAccountUI"

    const-string v1, "smtp1>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->m_bInvalidMailAddr:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1100(Lcom/htc/android/mail/MailAccountUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1460
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$18$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$18$1;-><init>(Lcom/htc/android/mail/MailAccountUI$18;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1507
    :cond_1
    :goto_0
    return-void

    .line 1471
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->screen3name:Ljava/lang/String;

    .line 1472
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->screen3pwd:Ljava/lang/String;

    .line 1473
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->screen3srv:Ljava/lang/String;

    .line 1474
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->screen3port:Ljava/lang/String;

    .line 1475
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3sslout:I

    .line 1476
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    and-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 1477
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    if-eqz v0, :cond_3

    .line 1478
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-boolean v4, v0, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 1479
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "JerryDebug"

    const-string v1, "cancelCheck is false2"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #calls: Lcom/htc/android/mail/MailAccountUI;->DismissAuthDialog()V
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$900(Lcom/htc/android/mail/MailAccountUI;)V

    goto :goto_0

    .line 1487
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MailAccountUI"

    const-string v1, "smtp2>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3name:Ljava/lang/String;

    .line 1489
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3pwd:Ljava/lang/String;

    .line 1490
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3srv:Ljava/lang/String;

    .line 1491
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3port:Ljava/lang/String;

    .line 1492
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3sslout:I

    .line 1493
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #calls: Lcom/htc/android/mail/MailAccountUI;->DismissAuthDialog()V
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$900(Lcom/htc/android/mail/MailAccountUI;)V

    .line 1494
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-boolean v4, v0, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 1496
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1000(Lcom/htc/android/mail/MailAccountUI;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1497
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    and-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 1500
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 1501
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen4()V

    .line 1502
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    .line 1503
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailAccountUI"

    const-string v1, "[ATS][com.htc.android.mail][verify_SMTP_setting][successful]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1499
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    goto :goto_1
.end method
