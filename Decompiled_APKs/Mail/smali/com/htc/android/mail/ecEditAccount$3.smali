.class Lcom/htc/android/mail/ecEditAccount$3;
.super Ljava/lang/Object;
.source "ecEditAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ecEditAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ecEditAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ecEditAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 622
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #setter for: Lcom/htc/android/mail/ecEditAccount;->mDelCurrentAccount:Z
    invoke-static {v0, v2}, Lcom/htc/android/mail/ecEditAccount;->access$302(Lcom/htc/android/mail/ecEditAccount;Z)Z

    .line 624
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v1}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    #setter for: Lcom/htc/android/mail/ecEditAccount;->orgProtocol:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/ecEditAccount;->access$402(Lcom/htc/android/mail/ecEditAccount;I)I

    .line 626
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->ifVerifyScreen2()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 627
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    iget-object v2, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->mWeakHandler:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/htc/android/mail/ecEditAccount;->access$600(Lcom/htc/android/mail/ecEditAccount;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailAccountUI;->checkAccountWithPop3(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    .line 634
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 631
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen3()V

    .line 632
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$3;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v0}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0
.end method
