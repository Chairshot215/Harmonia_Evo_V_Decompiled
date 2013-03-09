.class public Lcom/htc/lmw/steps/Uninstall;
.super Lcom/htc/lmw/WizardListActivity;
.source "Uninstall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/steps/Uninstall$WorkerThread;,
        Lcom/htc/lmw/steps/Uninstall$PhoneActivity;
    }
.end annotation


# instance fields
.field private mIsBroatToBackground:Z

.field private worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/lmw/WizardListActivity;-><init>(Landroid/app/Activity;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lmw/steps/Uninstall;->mIsBroatToBackground:Z

    .line 30
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.lmw"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lmw/steps/Uninstall;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/htc/lmw/steps/Uninstall;->selectedAppsSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/htc/lmw/steps/Uninstall;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/htc/lmw/steps/Uninstall;->isNotEnoughMemory(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/lmw/steps/Uninstall;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/htc/lmw/steps/Uninstall;->setNextButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/lmw/steps/Uninstall;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/htc/lmw/steps/Uninstall;->setNextButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/lmw/steps/Uninstall;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/lmw/steps/Uninstall;->updateProgressDialog(IIII)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/lmw/steps/Uninstall;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/lmw/steps/Uninstall;->updateProgressDialog(IIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/lmw/steps/Uninstall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/htc/lmw/steps/Uninstall;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/lmw/steps/Uninstall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/htc/lmw/steps/Uninstall;->finishActivity()V

    return-void
.end method

.method static synthetic access$902(Lcom/htc/lmw/steps/Uninstall;Lcom/htc/lmw/steps/Uninstall$WorkerThread;)Lcom/htc/lmw/steps/Uninstall$WorkerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    return-object p1
.end method

.method private startUninstallThread()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/lmw/steps/Uninstall$WorkerThread;-><init>(Lcom/htc/lmw/steps/Uninstall$1;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    .line 152
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    iput-object p0, v0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->owner:Lcom/htc/lmw/steps/Uninstall;

    .line 153
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    invoke-virtual {p0}, Lcom/htc/lmw/steps/Uninstall;->getSelectedApps()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->apps:Ljava/util/List;

    .line 154
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->start()V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCheckBoxDrawableId()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x2080014

    return v0
.end method

.method public handleBackPressed()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/Uninstall;->mIsBroatToBackground:Z

    .line 117
    invoke-super {p0}, Lcom/htc/lmw/WizardListActivity;->handleBackPressed()V

    .line 118
    return-void
.end method

.method public handleNextPressed()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/htc/lmw/steps/Uninstall;->getSelectedAppsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/htc/lmw/steps/Uninstall;->startUninstallThread()V

    .line 103
    :goto_0
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lmw/steps/Uninstall;->mIsBroatToBackground:Z

    .line 111
    :goto_1
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lmw/steps/Uninstall;->finishActivity()V

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/Uninstall;->mIsBroatToBackground:Z

    goto :goto_1
.end method

.method protected declared-synchronized loadApplications()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lmw/AppManager;->getUninstallableApplications(Ljava/util/List;Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v1, 0x7f030011

    invoke-static {v0, p0, v1}, Lcom/htc/lmw/Customize;->activityOnCreate(Landroid/app/Activity;Landroid/app/Activity;I)V

    .line 57
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    iput-object v0, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    .line 58
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    iput-object p0, v0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->owner:Lcom/htc/lmw/steps/Uninstall;

    .line 60
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/htc/lmw/WizardListActivity;->onPause()V

    .line 66
    invoke-static {}, Lcom/htc/lmw/InstalledAppsObserver;->unregister()V

    .line 67
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->unregister()V

    .line 72
    :cond_0
    sget-boolean v0, Lcom/htc/lmw/MainActivity;->isLowMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lmw/steps/Uninstall;->mIsBroatToBackground:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/lmw/steps/Uninstall;->mIsBroatToBackground:Z

    if-eqz v0, :cond_3

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->removeNotification(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 79
    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/htc/lmw/WizardListActivity;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/htc/lmw/InstalledAppsObserver;->register(Landroid/content/Context;Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;Ljava/util/List;Z)V

    .line 86
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/htc/lmw/steps/Uninstall;->registerStorageProgressUpdater()V

    .line 90
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    return-object v0
.end method

.method protected registerStorageProgressUpdater()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/lmw/steps/Uninstall$1;

    invoke-direct {v1, p0}, Lcom/htc/lmw/steps/Uninstall$1;-><init>(Lcom/htc/lmw/steps/Uninstall;)V

    invoke-static {v0, v1}, Lcom/htc/lmw/ExternalStorageObserver;->register(Landroid/content/Context;Lcom/htc/lmw/ExternalStorageObserver$IStateListener;)V

    .line 145
    return-void
.end method
