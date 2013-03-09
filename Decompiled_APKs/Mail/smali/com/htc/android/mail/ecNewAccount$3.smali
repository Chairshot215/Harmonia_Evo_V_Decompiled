.class Lcom/htc/android/mail/ecNewAccount$3;
.super Ljava/lang/Object;
.source "ecNewAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 457
    iput-object p1, p0, Lcom/htc/android/mail/ecNewAccount$3;->this$0:Lcom/htc/android/mail/ecNewAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 460
    invoke-static {}, Lcom/htc/android/mail/ecNewAccount;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ecNewAccount"

    const-string v1, "goClick"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$3;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 463
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$3;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 464
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$3;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen4()V

    .line 465
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$3;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    .line 466
    return-void
.end method
