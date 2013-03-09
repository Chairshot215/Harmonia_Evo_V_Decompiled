.class public Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RlzPingBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManager;,
        Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManagerInterface;
    }
.end annotation


# instance fields
.field private findAppsInNewThread:Z

.field private mAccountManager:Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManagerInterface;

.field private mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

.field private mScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->findAppsInNewThread:Z

    .line 51
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/google/android/partnersetup/RlzPreferences;

    invoke-direct {v0, p1}, Lcom/google/android/partnersetup/RlzPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-direct {v0, p1, v1}, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;-><init>(Landroid/content/Context;Lcom/google/android/partnersetup/RlzPreferencesInterface;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    .line 92
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 102
    const-string v2, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    sget-object v2, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v9

    .line 107
    sget-object v1, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    if-lez v1, :cond_3

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/partnersetup/RlzPingService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 179
    :cond_2
    :goto_0
    return-void

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    invoke-interface {v0}, Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;->reschedulePing()V

    goto :goto_0

    .line 121
    :cond_4
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 130
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.google.android.partnersetup.RLZ_ACCESS_POINT"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.google.android.partnersetup.RLZ_ACCESS_POINT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    new-array v6, v8, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v6, v9

    .line 139
    sget-object v5, Lcom/google/android/partnersetup/RlzProtocol$Apps;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "app_name=?"

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v9

    move-object v4, v0

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 142
    invoke-static {v0, v1}, Lcom/google/android/partnersetup/RlzPingService;->addApplicationInstallEvent(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    invoke-interface {v0}, Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;->scheduleEventPing()V

    .line 145
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 147
    :cond_6
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mAccountManager:Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManagerInterface;

    if-nez v0, :cond_7

    .line 154
    new-instance v0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManager;

    invoke-direct {v0, p1}, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mAccountManager:Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManagerInterface;

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mAccountManager:Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManagerInterface;

    invoke-interface {v0}, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManagerInterface;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v0}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->isActivationPingPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$1;-><init>(Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;Landroid/content/Context;)V

    .line 170
    iget-boolean v1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->findAppsInNewThread:Z

    if-eqz v1, :cond_8

    .line 171
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    :goto_1
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    invoke-interface {v0}, Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;->scheduleEventPing()V

    .line 176
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v0, v8}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->setActivationPingPrepared(Z)V

    goto/16 :goto_0

    .line 173
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method setAccountManager(Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManagerInterface;)V
    .locals 0
    .parameter "am"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mAccountManager:Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$RlzAccountManagerInterface;

    .line 77
    return-void
.end method

.method setFindAppsInNewThreadFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->findAppsInNewThread:Z

    .line 82
    return-void
.end method

.method setPingScheduler(Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;)V
    .locals 0
    .parameter "sched"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    .line 72
    return-void
.end method

.method setPreferences(Lcom/google/android/partnersetup/RlzPreferencesInterface;)V
    .locals 0
    .parameter "prefs"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    .line 67
    return-void
.end method
