.class public Lcom/htc/android/mail/huxservice/HuxAddAccount$HuxAddAccountRequestHandler;
.super Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;
.source "HuxAddAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxAddAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HuxAddAccountRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxAddAccount;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "target"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$HuxAddAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    .line 47
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 51
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HuxAddAccount"

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

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    .line 54
    .local v1, target:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    :cond_1
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HuxAddAccount"

    const-string v4, "target is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_2
    :goto_0
    return-void

    .line 59
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 70
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 61
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 62
    .local v0, key:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .local v2, val:Ljava/lang/Object;
    const/16 v3, 0xb

    if-ne v0, v3, :cond_4

    .line 65
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$HuxAddAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    invoke-virtual {v3}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->updateNewUserEndPointInfo()V

    .line 66
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$HuxAddAccountRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setCurrentScreen(I)V

    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
