.class Lcom/htc/android/mail/ecNewAccount$4;
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
    .line 470
    iput-object p1, p0, Lcom/htc/android/mail/ecNewAccount$4;->this$0:Lcom/htc/android/mail/ecNewAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$4;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAccountUI;->mDiffDomain:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$4;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 475
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$4;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->setScreen2()V

    .line 476
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$4;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    .line 477
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$4;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/mail/MailAccountUI;->mDiffDomain:Z

    .line 479
    :cond_0
    return-void
.end method
