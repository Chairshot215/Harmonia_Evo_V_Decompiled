.class final Lcom/htc/android/mail/easclient/CertificateUtil$1;
.super Ljava/lang/Object;
.source "CertificateUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/CertificateUtil;->handleCreateDialog(Landroid/app/Activity;IJLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:J

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;JLjava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$args:Landroid/os/Bundle;

    iput-wide p2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$accountId:J

    iput-object p4, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$accountName:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 84
    iget-object v2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$args:Landroid/os/Bundle;

    const-string v3, "extra.message.continue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 85
    .local v0, mContinueMsg:Landroid/os/Message;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    new-instance v1, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;-><init>(Lcom/htc/android/mail/easclient/CertificateUtil$1;)V

    .line 89
    .local v1, saveKeystoreThread:Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;
    iget-wide v2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->setAccountId(J)V

    .line 90
    iget-object v2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->setAccountName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->setEndMessage(Landroid/os/Message;)V

    .line 92
    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->start()V

    .line 93
    iget-object v2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$activity:Landroid/app/Activity;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 97
    .end local v1           #saveKeystoreThread:Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$activity:Landroid/app/Activity;

    const/16 v3, 0x136

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 98
    iget-object v2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$1;->val$activity:Landroid/app/Activity;

    const/16 v3, 0x137

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 99
    return-void

    .line 95
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CertificateUtil"

    const-string v3, "continue message invalid"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
