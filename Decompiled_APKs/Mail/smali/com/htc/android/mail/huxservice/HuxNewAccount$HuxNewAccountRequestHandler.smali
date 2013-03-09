.class public Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;
.super Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;
.source "HuxNewAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxNewAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HuxNewAccountRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxNewAccount;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "target"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 68
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HuxNewAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    .line 71
    .local v1, target:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    :cond_1
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HuxNewAccount"

    const-string v4, "target is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_2
    :goto_0
    return-void

    .line 75
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 104
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 77
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 78
    .local v0, key:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .local v2, val:Ljava/lang/Object;
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 82
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    invoke-virtual {v3}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->updateNewUserEndPointInfo()V

    .line 86
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/android/mail/huxservice/HuxProvController;->huxAccountChangeNotify(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setCurrentScreen(I)V

    goto :goto_0

    .line 90
    :cond_5
    const/16 v3, 0x10

    if-eq v0, v3, :cond_6

    const/16 v3, 0x13

    if-eq v0, v3, :cond_6

    const/16 v3, 0x12

    if-ne v0, v3, :cond_4

    .line 92
    :cond_6
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 93
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountEmailAddr:Ljava/lang/String;

    .line 96
    :cond_7
    new-instance v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    invoke-direct {v3, v4}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget-object v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/htc/android/mail/Account;->setNeedSyncHUXAccount(Landroid/content/Context;Z)V

    goto :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
