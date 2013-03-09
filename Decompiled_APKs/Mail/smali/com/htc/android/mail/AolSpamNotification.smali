.class public Lcom/htc/android/mail/AolSpamNotification;
.super Lcom/htc/android/mail/SendErrorNotification;
.source "AolSpamNotification.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public createTarget(Lcom/htc/android/mail/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/accounts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 15
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const-class v4, Lcom/htc/android/mail/AolSpamActivity;

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    .line 16
    return-void
.end method
