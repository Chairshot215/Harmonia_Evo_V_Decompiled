.class public Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService;
.super Landroid/app/Service;
.source "MailAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;
    }
.end annotation


# instance fields
.field private mMailAuthenticator:Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService;->mMailAuthenticator:Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;

    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    new-instance v0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService;->mMailAuthenticator:Lcom/htc/android/mail/mailservice/mailAuthenticator/MailAuthenticatorService$MailAuthenticator;

    .line 34
    return-void
.end method
