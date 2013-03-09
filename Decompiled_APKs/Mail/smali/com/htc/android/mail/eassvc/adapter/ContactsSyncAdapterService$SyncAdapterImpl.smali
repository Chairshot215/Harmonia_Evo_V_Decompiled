.class Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncAdapterImpl"
.end annotation


# instance fields
.field mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    .line 52
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 61
    const-string v6, "fromService"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 65
    .local v4, fromService:Z
    const-string v7, "htc_EAS_ContactsSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "> performSync "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_2

    const-string v6, " From service"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    .line 68
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->getEASService()Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v5

    .line 69
    .local v5, mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    if-nez v5, :cond_0

    .line 70
    const-string v6, "htc_EAS_ContactsSyncAdapterService"

    const-string v7, " service is null!!"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;

    #getter for: Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->access$000(Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->bindService(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->getEASService()Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v5

    .line 75
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "htc_EAS_ContactsSyncAdapterService"

    const-string v7, "performSync: service ready"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    :try_start_0
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAccountId(Ljava/lang/String;)J

    move-result-wide v0

    .line 79
    .local v0, accountId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    .line 80
    const-string v6, "htc_EAS_ContactsSyncAdapterService"

    const-string v7, "performSync error! accountId < 0"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0           #accountId:J
    :goto_1
    return-void

    .line 65
    .end local v5           #mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    :cond_2
    const-string v6, ""

    goto :goto_0

    .line 84
    .restart local v0       #accountId:J
    .restart local v5       #mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    :cond_3
    if-eqz v4, :cond_6

    .line 85
    :try_start_1
    invoke-interface {v5, v0, v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->waitForSyncComplete(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .end local v0           #accountId:J
    :cond_4
    :goto_2
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "htc_EAS_ContactsSyncAdapterService"

    const-string v7, "< performSync "

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    goto :goto_1

    .line 87
    .restart local v0       #accountId:J
    :cond_6
    :try_start_2
    const-string v6, "force"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 88
    .local v3, force:Z
    invoke-interface {v5, v0, v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-nez v6, :cond_7

    if-nez v3, :cond_7

    .line 89
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "htc_EAS_ContactsSyncAdapterService"

    const-string v7, "performSync schedule=maunally && !force, skip"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 96
    .end local v0           #accountId:J
    .end local v3           #force:Z
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 91
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #accountId:J
    .restart local v3       #force:Z
    :cond_7
    :try_start_3
    invoke-interface {v5, v0, v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->startSync(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public onSyncCanceled()V
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "htc_EAS_ContactsSyncAdapterService"

    const-string v2, "> cancelSync"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.cancelSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, service:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;

    #getter for: Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->access$000(Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    .line 118
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/ContactsSyncAdapterService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "htc_EAS_ContactsSyncAdapterService"

    const-string v2, "< cancelSync"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    return-void
.end method
