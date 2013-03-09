.class public Lcom/htc/server/HtcDeviceInfoAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcDeviceInfoAmsListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->appDied(I)V

    :cond_0
    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->gmsApp:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    return-void
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDashboardBuild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->addCrash(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinishBooting()V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->isDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/HtcWrapProcessRecord;->setIsDirty(Z)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onGoingToSleep()V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->update(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHibernate()V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->update(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->flush()V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->stop()V

    return-void
.end method

.method public onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHtcDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDebuggerAttached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDashboardBuild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->addANR(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    return-void
.end method

.method public onResumeFromHibernate()V
    .locals 3

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v1}, Lcom/htc/server/HtcDeviceInfoManager;->reset()V

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShutdown()V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->update(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->flush()V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->stop()V

    return-void
.end method

.method public onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Landroid/content/pm/ApplicationInfo;->isDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/HtcWrapProcessRecord;->setIsDirty(Z)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    goto :goto_0
.end method
