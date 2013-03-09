.class public Lcom/htc/android/mail/dialog/MailProcessDialog;
.super Lcom/htc/app/HtcProgressDialog;
.source "MailProcessDialog.java"


# static fields
.field private static DEBUG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mSearchCancelable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/dialog/MailProcessDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 9
    const-string v0, "MailProcessDialog"

    iput-object v0, p0, Lcom/htc/android/mail/dialog/MailProcessDialog;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/dialog/MailProcessDialog;->mSearchCancelable:Z

    .line 17
    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/android/mail/dialog/MailProcessDialog;->mSearchCancelable:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-super {p0}, Lcom/htc/app/HtcProgressDialog;->onSearchRequested()Z

    move-result v0

    .line 30
    :goto_0
    return v0

    .line 29
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/dialog/MailProcessDialog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailProcessDialog"

    const-string v1, "mSearchCancelable false>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSearchCancelable(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 20
    sget-boolean v0, Lcom/htc/android/mail/dialog/MailProcessDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailProcessDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSearchCancelable>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    iput-boolean p1, p0, Lcom/htc/android/mail/dialog/MailProcessDialog;->mSearchCancelable:Z

    .line 22
    return-void
.end method
