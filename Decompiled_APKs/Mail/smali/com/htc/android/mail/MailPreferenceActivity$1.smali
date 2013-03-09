.class Lcom/htc/android/mail/MailPreferenceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MailPreferenceActivity.java"


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
    .line 77
    iput-object p1, p0, Lcom/htc/android/mail/MailPreferenceActivity$1;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.mail.eas.intent.delete_exchg_account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {}, Lcom/htc/android/mail/MailPreferenceActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!!!Attention!!! onReceive() delete exchange account"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-boolean v1, Lcom/htc/android/mail/MailPreferenceActivity;->isExchange:Z

    if-nez v1, :cond_1

    .line 84
    invoke-static {}, Lcom/htc/android/mail/MailPreferenceActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not in Exchange. need not finish this view"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$1;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailPreferenceActivity;->finish()V

    goto :goto_0
.end method
