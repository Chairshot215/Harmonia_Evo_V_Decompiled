.class public Lcom/htc/service/DeviceManager3LM;
.super Ljava/lang/Object;
.source "DeviceManager3LM.java"


# static fields
.field public static final SETTINGS_SECURE_ADB_BLOCKED:Ljava/lang/String; = "adb_blocked"

.field public static final SETTINGS_SECURE_EMERGENCY_LOCK_TEXT:Ljava/lang/String; = "emergency_lock"

.field private static final TAG:Ljava/lang/String; = "DeviceManager3LM"


# instance fields
.field private mService:Landroid/os/IDeviceManager3LM;


# direct methods
.method public constructor <init>(Landroid/os/IDeviceManager3LM;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    return-void
.end method

.method public static getNoEncryptionList(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x1070032

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public blockAdb(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->blockAdb(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "blockAdb: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IDeviceManager3LM;->checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "checkAppInstallPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkAppUninstallPolicies(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->checkAppUninstallPolicies(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "checkAppUninstallPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "checkPackagePermission: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkUidPermission(Ljava/lang/String;I)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->checkUidPermission(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "checkUidPermission: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkVpnDns(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->checkVpnDns(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "checkVpnDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "clear: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearApplicationUserData(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->clearApplicationUserData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "clearApplicationUserData: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "connectToVpn: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->deletePackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "deletePackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disablePackage(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->disablePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "disablePackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnectFromVpn(Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->disconnectFromVpn(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "restoreOriginalDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enablePackage(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->enablePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "enablePackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public encryptPackage(Ljava/lang/String;ZZ)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IDeviceManager3LM;->encryptPackage(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "encryptPackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBluetoothEnabled()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getBluetoothEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "getBluetoothEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNfcState()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getNfcState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "getNfcState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "getPackageGids: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "getVersion: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getWifiState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "getWifiState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installPackage(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->installPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "installPackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAdbBlocked()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isAdbBlocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isAdbBlocked: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataEncrypted()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isDataEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isDataEncrypted: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataEncryptionRequired()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isDataEncryptionRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isDataEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isPackageDisabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isPackageDisabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageEncrypted(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isPackageEncrypted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isPackageEncrypted: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageEncryptionRequired(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isPackageEncryptionRequired(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isPackageEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSdEncrypted()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isSdEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isSdEncrypted: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSdEncryptionRequired()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isSdEncryptionRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isSdEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSsidAllowed(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isSsidAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isSsidAllowed: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreChangePassword: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreContains(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreContains(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreContains: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreDeleteKey(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreDeleteKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreDeleteKey: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreGetKey: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreGetLastError()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreGetLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreGetLastError: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreLock()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreLock()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreLock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStorePutKey: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreReset()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreReset()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreReset: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreSetPassword(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreSetPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreSetPassword: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public keyStoreTest()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreTest()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreTest: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreUnlock(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreUnlock(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "keyStoreUnlock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putSettingsSecureInt(Ljava/lang/String;I)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->putSettingsSecureInt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "putSettingsSecureInt: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "putSettingsSecureString: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public restoreOriginalDns(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->restoreOriginalDns(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "restoreOriginalDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAllowedPackages(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAllowedPackages: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAppInstallPermissionPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAppInstallPkgNamePolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAppInstallPubkeyPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setAppUninstallPkgNamePolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setBluetoothEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setBluetoothEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootLock(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setBootLock(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setBootLock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataEncryptionRequired(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setDataEncryptionRequired(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setDataEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNfcState(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setNfcState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setNotificationText(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setNotificationText: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IDeviceManager3LM;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setPackagePermission: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSdEncryptionRequired(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setSdEncryptionRequired(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setSdEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSsidFilter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setSsidFilter(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setSsidFilter: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWifiState(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setWifiState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setWifiState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setupVpnDns(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setupVpnDns(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "setupVpnDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unlock()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->unlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "unlock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
