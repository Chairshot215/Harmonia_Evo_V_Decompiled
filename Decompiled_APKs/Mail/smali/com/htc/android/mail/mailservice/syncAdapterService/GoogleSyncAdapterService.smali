.class public Lcom/htc/android/mail/mailservice/syncAdapterService/GoogleSyncAdapterService;
.super Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;
.source "GoogleSyncAdapterService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->onCreate()V

    .line 17
    return-void
.end method
