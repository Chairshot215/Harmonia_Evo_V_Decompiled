.class Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;
.super Ljava/lang/Thread;
.source "MailPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAccountThread"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/htc/android/mail/MailPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailPreferenceActivity;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 465
    iput p2, p0, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;->mType:I

    .line 466
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 469
    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mAccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/MailPreferenceActivity;->access$200(Lcom/htc/android/mail/MailPreferenceActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 470
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->delete()Z

    .line 471
    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mDelAccountHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/mail/MailPreferenceActivity;->access$1400(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 472
    .local v1, msg:Landroid/os/Message;
    iget v2, p0, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;->mType:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 473
    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity$DeleteAccountThread;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mDelAccountHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/mail/MailPreferenceActivity;->access$1400(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    return-void
.end method
