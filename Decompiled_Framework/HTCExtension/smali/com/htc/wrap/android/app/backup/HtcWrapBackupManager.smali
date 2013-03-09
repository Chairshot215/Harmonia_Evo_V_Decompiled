.class public Lcom/htc/wrap/android/app/backup/HtcWrapBackupManager;
.super Landroid/app/backup/BackupManager;
.source "HtcWrapBackupManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/app/backup/BackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRestore(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->setAutoRestore(Z)V

    return-void
.end method

.method public setBackupEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->setBackupEnabled(Z)V

    return-void
.end method

.method public setBackupProvisioned(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->setBackupProvisioned(Z)V

    return-void
.end method
