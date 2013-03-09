.class public Lcom/htc/android/mail/AolSpamActivity;
.super Landroid/app/Activity;
.source "AolSpamActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/htc/android/mail/AolSpamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 15
    .local v4, it:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 16
    .local v6, uri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 18
    .local v0, accountId:J
    new-instance v5, Lcom/htc/android/mail/SendErrorNotification;

    invoke-virtual {p0}, Lcom/htc/android/mail/AolSpamActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 19
    .local v5, sendnotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {v5, v0, v1}, Lcom/htc/android/mail/SendErrorNotification;->clearNotification(J)I

    .line 21
    const-string v7, "http://challenge.aol.com/spam.html"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 22
    .local v2, browserUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/AolSpamActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Lcom/htc/android/mail/AolSpamActivity;->finish()V

    .line 25
    return-void
.end method
