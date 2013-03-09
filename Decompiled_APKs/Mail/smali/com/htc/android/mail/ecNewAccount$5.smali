.class Lcom/htc/android/mail/ecNewAccount$5;
.super Ljava/lang/Object;
.source "ecNewAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ecNewAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ecNewAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ecNewAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/htc/android/mail/ecNewAccount$5;->this$0:Lcom/htc/android/mail/ecNewAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 486
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 487
    iget-object v2, p0, Lcom/htc/android/mail/ecNewAccount$5;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v2}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    if-nez v2, :cond_1

    .line 489
    iget-object v2, p0, Lcom/htc/android/mail/ecNewAccount$5;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v2}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v2

    iput-boolean v0, v2, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 490
    invoke-static {}, Lcom/htc/android/mail/ecNewAccount;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "JerryDebug"

    const-string v3, "cancelCheck is true"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/ecNewAccount$5;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v2}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/MailAccountUI;->CancelCheckAccount()V

    .line 493
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/ecNewAccount$5;->this$0:Lcom/htc/android/mail/ecNewAccount;

    iget-object v3, p0, Lcom/htc/android/mail/ecNewAccount$5;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v3}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/ecNewAccount;->dismissDialog(I)V

    .line 496
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
