.class Lcom/htc/android/mail/ecEditAccount$6;
.super Ljava/lang/Object;
.source "ecEditAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 684
    iput-object p1, p0, Lcom/htc/android/mail/ecEditAccount$6;->this$0:Lcom/htc/android/mail/ecEditAccount;

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

    .line 686
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 687
    iget-object v2, p0, Lcom/htc/android/mail/ecEditAccount$6;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v2}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    if-nez v2, :cond_0

    .line 689
    iget-object v2, p0, Lcom/htc/android/mail/ecEditAccount$6;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v2}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v2

    iput-boolean v0, v2, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 690
    const-string v2, "JerryDebug"

    const-string v3, "cancelCheck is true"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/htc/android/mail/ecEditAccount$6;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v2}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/MailAccountUI;->CancelCheckAccount()V

    .line 693
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/ecEditAccount$6;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/ecEditAccount;->dismissDialog(I)V

    .line 696
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
