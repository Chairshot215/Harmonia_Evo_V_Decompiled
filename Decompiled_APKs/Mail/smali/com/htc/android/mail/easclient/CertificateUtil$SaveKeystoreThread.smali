.class Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;
.super Ljava/lang/Thread;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/CertificateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveKeystoreThread"
.end annotation


# instance fields
.field accountId:J

.field accountName:Ljava/lang/String;

.field endMessage:Landroid/os/Message;

.field svc:Lcom/htc/android/mail/eassvc/pim/IEASService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 145
    invoke-static {}, Lcom/htc/android/mail/easclient/CertificateUtil;->access$100()Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 147
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->accountId:J

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->accountName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/easclient/CertificateUtil$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 157
    invoke-static {}, Lcom/htc/android/mail/easclient/CertificateUtil;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CertificateUtil"

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->accountId:J

    const-string v4, " - SaveKeystoreThread"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 159
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->accountId:J

    iget-object v4, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->accountName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->applySSLCertificate(JLjava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->endMessage:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->endMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 174
    return-void

    .line 165
    :cond_2
    :try_start_1
    const-string v1, "CertificateUtil"

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->accountId:J

    const-string v4, "save keystore failed: service is null"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->endMessage:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->endMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method setAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->accountId:J

    .line 151
    return-void
.end method

.method setAccountName(Ljava/lang/String;)V
    .locals 0
    .parameter "accountName"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->accountName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setEndMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;->endMessage:Landroid/os/Message;

    .line 178
    return-void
.end method
