.class public Lcom/htc/lmw/steps/LowMemoryIntro;
.super Lcom/htc/lmw/WizardActivity;
.source "LowMemoryIntro.java"

# interfaces
.implements Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/steps/LowMemoryIntro$PhoneActivity;
    }
.end annotation


# instance fields
.field private mIsBroatToBackground:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/lmw/WizardActivity;-><init>(Landroid/app/Activity;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lmw/steps/LowMemoryIntro;->mIsBroatToBackground:Z

    .line 59
    return-void
.end method

.method private updateMemoryIndicator()V
    .locals 9

    .prologue
    const-wide/32 v7, 0x100000

    .line 69
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/lmw/AppManager;->getDataTotalBytes()J

    move-result-wide v5

    div-long v3, v5, v7

    .line 70
    .local v3, totalBytes:J
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/lmw/AppManager;->getDataFreeBytes()J

    move-result-wide v5

    div-long v0, v5, v7

    .line 72
    .local v0, freeBytes:J
    iget-object v5, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, textView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method


# virtual methods
.method public handleNextPressed()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/LowMemoryIntro;->mIsBroatToBackground:Z

    .line 81
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->handleNextPressed()V

    .line 82
    return-void
.end method

.method public onAppAdded(Lcom/htc/lmw/AppInfo;)V
    .locals 0
    .parameter "addedApp"

    .prologue
    .line 92
    return-void
.end method

.method public onAppChanged(Lcom/htc/lmw/AppInfo;)V
    .locals 0
    .parameter "changedApp"

    .prologue
    .line 97
    return-void
.end method

.method public onAppRemoved(Lcom/htc/lmw/AppInfo;)V
    .locals 0
    .parameter "removedApp"

    .prologue
    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v1, 0x7f03000a

    invoke-static {v0, p0, v1}, Lcom/htc/lmw/Customize;->activityOnCreate(Landroid/app/Activity;Landroid/app/Activity;I)V

    .line 27
    invoke-direct {p0}, Lcom/htc/lmw/steps/LowMemoryIntro;->updateMemoryIndicator()V

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->onPause()V

    .line 43
    invoke-static {}, Lcom/htc/lmw/InstalledAppsObserver;->unregister()V

    .line 44
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->unregister()V

    .line 48
    :cond_0
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lmw/steps/LowMemoryIntro;->mIsBroatToBackground:Z

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->removeNotification(Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    .line 52
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 54
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->onResume()V

    .line 34
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/htc/lmw/InstalledAppsObserver;->register(Landroid/content/Context;Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;Ljava/util/List;Z)V

    .line 35
    invoke-virtual {p0}, Lcom/htc/lmw/steps/LowMemoryIntro;->registerStorageProgressUpdater()V

    .line 37
    return-void
.end method

.method protected registerStorageProgressUpdater()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/lmw/steps/LowMemoryIntro$1;

    invoke-direct {v1, p0}, Lcom/htc/lmw/steps/LowMemoryIntro$1;-><init>(Lcom/htc/lmw/steps/LowMemoryIntro;)V

    invoke-static {v0, v1}, Lcom/htc/lmw/ExternalStorageObserver;->register(Landroid/content/Context;Lcom/htc/lmw/ExternalStorageObserver$IStateListener;)V

    .line 107
    return-void
.end method
