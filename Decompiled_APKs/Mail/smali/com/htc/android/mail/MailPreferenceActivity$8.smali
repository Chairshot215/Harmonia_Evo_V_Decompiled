.class Lcom/htc/android/mail/MailPreferenceActivity$8;
.super Ljava/lang/Object;
.source "MailPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/android/mail/MailPreferenceActivity$8;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$8;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mbDeletingAccount:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailPreferenceActivity;->access$300(Lcom/htc/android/mail/MailPreferenceActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 376
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$8;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/MailPreferenceActivity;->access$400(Lcom/htc/android/mail/MailPreferenceActivity;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$8;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailPreferenceActivity;->showDialog(I)V

    .line 378
    new-instance v0, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;

    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$8;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;-><init>(Lcom/htc/android/mail/MailPreferenceActivity;Lcom/htc/android/mail/MailPreferenceActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/mail/MailPreferenceActivity$8;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/MailPreferenceActivity;->access$200(Lcom/htc/android/mail/MailPreferenceActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailPreferenceActivity$deleteAccountOnServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$8;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #calls: Lcom/htc/android/mail/MailPreferenceActivity;->deleteAcctOnDevice()V
    invoke-static {v0}, Lcom/htc/android/mail/MailPreferenceActivity;->access$600(Lcom/htc/android/mail/MailPreferenceActivity;)V

    goto :goto_0
.end method
