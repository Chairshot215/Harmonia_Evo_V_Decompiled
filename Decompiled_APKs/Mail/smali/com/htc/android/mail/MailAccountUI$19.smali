.class Lcom/htc/android/mail/MailAccountUI$19;
.super Ljava/lang/Thread;
.source "MailAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI;->checkeAccountWithServer(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
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
    .line 1515
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object p2, p0, Lcom/htc/android/mail/MailAccountUI$19;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/android/mail/MailAccountUI$19;->val$weakHandler:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1518
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->curAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$19;->val$weakHandler:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/android/mail/MailAccountUI;->checkIncoming(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailAccountUI;->access$800(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1519
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v4, v0, Lcom/htc/android/mail/MailAccountUI;->okAddr:Ljava/lang/String;

    .line 1520
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v4, v0, Lcom/htc/android/mail/MailAccountUI;->okPwd:Ljava/lang/String;

    .line 1521
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailAccountUI"

    const-string v1, "checkeAccountWithServer pop3 fail"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 1523
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1400(Lcom/htc/android/mail/MailAccountUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$19$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$19$1;-><init>(Lcom/htc/android/mail/MailAccountUI$19;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1591
    :goto_0
    return-void

    .line 1547
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 1548
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->curAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$19;->val$weakHandler:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/android/mail/MailAccountUI;->checkOutgoing(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailAccountUI;->access$1200(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1549
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MailAccountUI"

    const-string v1, "checkeAccountWithServer smtp fail"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v4, v0, Lcom/htc/android/mail/MailAccountUI;->okAddr:Ljava/lang/String;

    .line 1551
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object v4, v0, Lcom/htc/android/mail/MailAccountUI;->okPwd:Ljava/lang/String;

    .line 1552
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    and-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 1553
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1400(Lcom/htc/android/mail/MailAccountUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$19$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$19$2;-><init>(Lcom/htc/android/mail/MailAccountUI$19;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1576
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MailAccountUI"

    const-string v1, "smart loing ok>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 1578
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1400(Lcom/htc/android/mail/MailAccountUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$19$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$19$3;-><init>(Lcom/htc/android/mail/MailAccountUI$19;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
