.class public Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;
.super Ljava/lang/Object;
.source "ResetSyncAlarmRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field account:Lcom/htc/android/mail/Account;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "c"
    .parameter "account"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->account:Lcom/htc/android/mail/Account;

    .line 17
    iput-object p1, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->context:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->account:Lcom/htc/android/mail/Account;

    if-nez v0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ResetSyncAlarmRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reschedule account :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->account:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->account:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->account:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->account:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->account:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->account:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;->account:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->resetSyncAlarm()V

    goto :goto_0
.end method
