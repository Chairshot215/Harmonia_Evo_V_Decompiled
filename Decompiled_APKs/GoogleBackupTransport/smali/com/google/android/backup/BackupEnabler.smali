.class public Lcom/google/android/backup/BackupEnabler;
.super Landroid/app/Service;
.source "BackupEnabler.java"


# instance fields
.field private binder:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/backup/BackupEnabler;->binder:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method protected enableBackup(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 37
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 39
    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 42
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V

    .line 44
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/google/android/backup/BackupEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 46
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const-string v3, "com.google.android.backup.notification.tag"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 49
    const-string v3, "BackupTransportService"

    const-string v4, "enableBackup() succeeded"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "BackupTransportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableBackup() exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BackupTransportService"

    const-string v4, "enableBackup() bm is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/backup/BackupEnabler;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 27
    const-string v0, "BACKUP_ENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "BACKUP_ENABLE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/backup/BackupEnabler;->enableBackup(Z)V

    .line 30
    :cond_0
    const/4 v0, 0x2

    return v0
.end method
