.class public Lcom/htc/android/mail/mailservice/mailAuthenticator/YahooAuthenticatorService;
.super Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService;
.source "YahooAuthenticatorService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService;->onCreate()V

    .line 11
    return-void
.end method
