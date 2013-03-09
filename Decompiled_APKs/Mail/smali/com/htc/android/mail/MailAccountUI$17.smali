.class Lcom/htc/android/mail/MailAccountUI$17;
.super Ljava/lang/Thread;
.source "MailAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI;->checkAccountWithPop3(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
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
    .line 1403
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object p2, p0, Lcom/htc/android/mail/MailAccountUI$17;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/android/mail/MailAccountUI$17;->val$weakHandler:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1406
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$17;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$17;->val$weakHandler:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/android/mail/MailAccountUI;->checkIncoming(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0, v1, v3, v2}, Lcom/htc/android/mail/MailAccountUI;->access$800(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1407
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-nez v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->screen2name:Ljava/lang/String;

    .line 1409
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->screen2pwd:Ljava/lang/String;

    .line 1410
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->screen2pop:Ljava/lang/String;

    .line 1411
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->screen2port:Ljava/lang/String;

    .line 1412
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput v4, v0, Lcom/htc/android/mail/MailAccountUI;->screen2protocol:I

    .line 1413
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput v4, v0, Lcom/htc/android/mail/MailAccountUI;->screen2sslin:I

    .line 1415
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailAccountUI"

    const-string v1, "verify pop3 exception>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 1417
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #calls: Lcom/htc/android/mail/MailAccountUI;->DismissAuthDialog()V
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$900(Lcom/htc/android/mail/MailAccountUI;)V

    .line 1418
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    if-eqz v0, :cond_2

    .line 1419
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-boolean v5, v0, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 1420
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "JerryDebug"

    const-string v1, "cancelCheck is false1"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :cond_2
    :goto_0
    return-void

    .line 1424
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2name:Ljava/lang/String;

    .line 1425
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2pwd:Ljava/lang/String;

    .line 1426
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2pop:Ljava/lang/String;

    .line 1427
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2port:Ljava/lang/String;

    .line 1428
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2protocol:I

    .line 1429
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2sslin:I

    .line 1430
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MailAccountUI"

    const-string v1, "verify pop3 ok>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MailAccountUI"

    const-string v1, "[ATS][com.htc.android.mail][verify_IMAP_setting][successful]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #calls: Lcom/htc/android/mail/MailAccountUI;->DismissAuthDialog()V
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$900(Lcom/htc/android/mail/MailAccountUI;)V

    .line 1433
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-boolean v5, v0, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 1435
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 1436
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-nez v0, :cond_6

    .line 1437
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->setScreen3()V

    .line 1439
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1000(Lcom/htc/android/mail/MailAccountUI;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1440
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 1443
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen3()V

    .line 1444
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto/16 :goto_0

    .line 1442
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$17;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    goto :goto_1
.end method
