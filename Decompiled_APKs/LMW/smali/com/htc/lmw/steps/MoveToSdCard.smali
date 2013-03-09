.class public Lcom/htc/lmw/steps/MoveToSdCard;
.super Lcom/htc/lmw/WizardListActivity;
.source "MoveToSdCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;,
        Lcom/htc/lmw/steps/MoveToSdCard$PhoneActivity;
    }
.end annotation


# instance fields
.field private mIsBroatToBackground:Z

.field private worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/lmw/WizardListActivity;-><init>(Landroid/app/Activity;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->mIsBroatToBackground:Z

    .line 35
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.lmw"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lmw/steps/MoveToSdCard;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lmw/steps/MoveToSdCard;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/lmw/steps/MoveToSdCard;Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;)Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/lmw/steps/MoveToSdCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/htc/lmw/steps/MoveToSdCard;->finishActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/lmw/steps/MoveToSdCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/htc/lmw/steps/MoveToSdCard;->finishActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/lmw/steps/MoveToSdCard;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/lmw/steps/MoveToSdCard;->updateProgressDialog(IIII)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/lmw/steps/MoveToSdCard;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/lmw/steps/MoveToSdCard;->updateProgressDialog(IIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/lmw/steps/MoveToSdCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/htc/lmw/steps/MoveToSdCard;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/lmw/steps/MoveToSdCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/lmw/steps/MoveToSdCard;->displayLowStorageDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/lmw/steps/MoveToSdCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/htc/lmw/steps/MoveToSdCard;->finishActivity()V

    return-void
.end method

.method private displayLowStorageDialog()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/htc/lmw/steps/MoveToSdCard;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/lmw/steps/MoveToSdCard$2;

    invoke-direct {v1, p0}, Lcom/htc/lmw/steps/MoveToSdCard$2;-><init>(Lcom/htc/lmw/steps/MoveToSdCard;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    :cond_0
    return-void
.end method

.method private startMoveThread()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;-><init>(Lcom/htc/lmw/steps/MoveToSdCard$1;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    .line 155
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    iput-object p0, v0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    .line 156
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    invoke-virtual {p0}, Lcom/htc/lmw/steps/MoveToSdCard;->getSelectedApps()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->apps:Ljava/util/List;

    .line 157
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->start()V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCheckBoxDrawableId()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 46
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x2010010

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    return v1
.end method

.method public handleBackPressed()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/Wizard;->finishSubActivity(Landroid/app/Activity;)V

    .line 141
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->mIsBroatToBackground:Z

    .line 142
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->back()V

    goto :goto_0
.end method

.method public handleNextPressed()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/htc/lmw/steps/MoveToSdCard;->getSelectedAppsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/htc/lmw/steps/MoveToSdCard;->startMoveThread()V

    .line 124
    :goto_0
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->mIsBroatToBackground:Z

    .line 128
    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/Wizard;->finishSubActivity(Landroid/app/Activity;)V

    goto :goto_0
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
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lmw/AppManager;->getMovableApplications(Ljava/util/List;Z)Ljava/util/List;
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
    .line 63
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/lmw/Customize;->setupMoveToSdCardTitle(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v1, 0x7f03000c

    invoke-static {v0, p0, v1}, Lcom/htc/lmw/Customize;->activityOnCreate(Landroid/app/Activity;Landroid/app/Activity;I)V

    .line 68
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    iput-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    .line 69
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    iput-object p0, v0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    .line 71
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/htc/lmw/WizardListActivity;->onPause()V

    .line 105
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->unregister()V

    .line 106
    invoke-static {}, Lcom/htc/lmw/InstalledAppsObserver;->unregister()V

    .line 108
    sget-boolean v0, Lcom/htc/lmw/MainActivity;->isLowMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->mIsBroatToBackground:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->mIsBroatToBackground:Z

    if-eqz v0, :cond_2

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->removeNotification(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 115
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/htc/lmw/WizardListActivity;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    .line 79
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/htc/lmw/steps/MoveToSdCard$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/lmw/steps/MoveToSdCard$1;-><init>(Lcom/htc/lmw/steps/MoveToSdCard;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/htc/lmw/ExternalStorageObserver;->register(Landroid/content/Context;Lcom/htc/lmw/ExternalStorageObserver$IStateListener;)V

    .line 98
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v1, p0, v2, v3}, Lcom/htc/lmw/InstalledAppsObserver;->register(Landroid/content/Context;Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;Ljava/util/List;Z)V

    .line 99
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    return-object v0
.end method

.method protected setNextButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
