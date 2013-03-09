.class public Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/installer/InstallerListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;
    }
.end annotation


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mListenersAdded:Z

.field private final mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

.field private mTrackPackageStatus:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V
    .locals 0
    .parameter "dfeToc"
    .parameter "currentAccount"
    .parameter "packageMonitorReceiver"
    .parameter "installer"
    .parameter "appStates"
    .parameter "libraries"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    .line 73
    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    .line 74
    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 75
    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 76
    iput-object p6, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)Lcom/google/android/finsky/receivers/Installer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundAndUninstallAsset(Ljava/lang/String;ZLjava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->confirmRefundApp(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private attachListeners()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mTrackPackageStatus:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->detach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 93
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mListenersAdded:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mListenersAdded:Z

    .line 99
    :cond_0
    return-void
.end method

.method private confirmRefundApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "packageName"
    .parameter "appRefundAccount"
    .parameter "tryUninstall"

    .prologue
    .line 388
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 389
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v3, "refund_confirm"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 402
    :goto_0
    return-void

    .line 393
    :cond_0
    const v3, 0x7f0701a7

    const v4, 0x7f0700da

    const v5, 0x7f0700db

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 395
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 396
    .local v1, extraArguments:Landroid/os/Bundle;
    const-string v3, "package_name"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v3, "account_name"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v3, "try_uninstall"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 399
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 401
    const-string v3, "refund_confirm"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getUpdateReferrerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    const-string v1, "details?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    const-string v1, "details"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manualUpdate?doc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manualUpdate?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private listenerRefresh(Z)V
    .locals 1
    .parameter "refreshParent"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    .line 584
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    instance-of v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    check-cast v0, Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections()V

    .line 588
    :cond_0
    return-void
.end method

.method private refreshByPackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->syncDynamicSection()V

    .line 484
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 486
    :cond_0
    return-void
.end method

.method private refundAndUninstallAsset(Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 6
    .parameter "packageName"
    .parameter "isRefundable"
    .parameter "appRefundAccount"
    .parameter "isSystemPackage"
    .parameter "isOwned"
    .parameter "hasSubscriptions"

    .prologue
    const/4 v2, 0x1

    .line 370
    if-nez p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    .line 371
    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->uninstallAsset(Ljava/lang/String;ZZZZ)V

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-direct {p0, p1, p3, v2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->confirmRefundApp(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private refundApp(Landroid/os/Bundle;)V
    .locals 4
    .parameter "extraArguments"

    .prologue
    .line 408
    const-string v3, "package_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "account_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, appRefundAccount:Ljava/lang/String;
    const-string v3, "try_uninstall"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 411
    .local v2, tryUninstall:Z
    new-instance v3, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;

    invoke-direct {v3, p0, v2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Z)V

    invoke-static {v1, v0, v3}, Lcom/google/android/finsky/utils/AppSupport;->silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V

    .line 444
    return-void
.end method

.method private uninstallAsset(Ljava/lang/String;ZZZZ)V
    .locals 1
    .parameter "packageName"
    .parameter "showConfirmationDialog"
    .parameter "isSystemPackage"
    .parameter "isOwned"
    .parameter "hasActiveSubscriptions"

    .prologue
    .line 467
    if-eqz p2, :cond_0

    .line 468
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-static {p1, v0, p3, p4, p5}, Lcom/google/android/finsky/utils/AppSupport;->showUninstallConfirmationDialog(Ljava/lang/String;Landroid/support/v4/app/Fragment;ZZZ)V

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    goto :goto_0
.end method

.method private updateContainerLayouts()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mButtonSection:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->updateLayoutVisibility(Landroid/view/ViewGroup;)V

    .line 353
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->updateLayoutVisibility(Landroid/view/ViewGroup;)V

    .line 354
    return-void
.end method

.method private updateLayoutVisibility(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "layout"

    .prologue
    .line 357
    const/16 v1, 0x8

    .line 358
    .local v1, visibility:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 360
    const/4 v1, 0x0

    .line 364
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 365
    return-void

    .line 358
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V
    .locals 0
    .parameter "document"
    .parameter "bindDynamicSection"
    .parameter "views"

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 104
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->attachListeners()V

    .line 105
    return-void
.end method

.method protected handleRefundFailure()V
    .locals 2

    .prologue
    .line 447
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 448
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 449
    invoke-static {v0}, Lcom/google/android/finsky/utils/AppSupport;->showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 450
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    .line 452
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "fragment"
    .parameter "trackPackageStatus"
    .parameter "referrer"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 83
    invoke-super/range {p0 .. p9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    iput-boolean p5, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mTrackPackageStatus:Z

    .line 86
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->attachListeners()V

    .line 87
    return-void
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->detach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 110
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mListenersAdded:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mListenersAdded:Z

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 116
    return-void
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 1
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->listenerRefresh(Z)V

    .line 561
    :cond_0
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 1
    .parameter "library"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/library/AccountLibrary;->getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->listenerRefresh(Z)V

    .line 576
    :cond_0
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 520
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refreshByPackageName(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 0
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 543
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refreshByPackageName(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 552
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 548
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 5
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 493
    packed-switch p1, :pswitch_data_0

    .line 509
    :pswitch_0
    const-string v1, "Unexpected requestCode %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 496
    :pswitch_2
    const-string v1, "package_name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    goto :goto_0

    .line 506
    .end local v0           #packageName:Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundApp(Landroid/os/Bundle;)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected setupActionButtons(Z)V
    .locals 20
    .parameter "isInTransientState"

    .prologue
    .line 209
    const v1, 0x7f0800b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 210
    .local v12, buyButton:Landroid/widget/Button;
    const v1, 0x7f0800b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 211
    .local v15, launchButton:Landroid/widget/Button;
    const v1, 0x7f0800b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 212
    .local v18, uninstallButton:Landroid/widget/Button;
    const v1, 0x7f0800b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 215
    .local v19, updateButton:Landroid/widget/Button;
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 216
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    const/16 v1, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    const/16 v1, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mHideDynamicFeatures:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 227
    .local v11, appPackageName:Ljava/lang/String;
    new-instance v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v9, v11, v1, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    .line 232
    .local v9, actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    const/16 v16, 0x0

    .line 233
    .local v16, numButtons:I
    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    if-eqz v1, :cond_7

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v10

    .line 237
    .local v10, appHasSubscriptions:Z
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    add-int/lit8 v16, v16, 0x1

    .line 239
    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-eqz v1, :cond_6

    const v1, 0x7f0701a1

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 240
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v11, v9, v10}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Lcom/google/android/finsky/activities/AppActionAnalyzer;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .end local v10           #appHasSubscriptions:Z
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v11, v1, v3, v4}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getInstallAccount(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;

    move-result-object v2

    .line 278
    .local v2, installAccount:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v14

    .line 281
    .local v14, installAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v9, v1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->hasUpdateAvailable(Lcom/google/android/finsky/activities/AppActionAnalyzer;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {v1, v3, v14}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-nez v1, :cond_3

    .line 284
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->getUpdateReferrerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContinueUrl:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    add-int/lit8 v16, v16, 0x1

    .line 294
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ge v0, v1, :cond_4

    .line 295
    const/4 v13, 0x0

    .line 298
    .local v13, clickHandler:Landroid/view/View$OnClickListener;
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    if-eqz v1, :cond_a

    .line 303
    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    if-eqz v1, :cond_9

    .line 305
    const v1, 0x7f070130

    invoke-virtual {v15, v1}, Landroid/widget/Button;->setText(I)V

    .line 307
    new-instance v13, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;

    .end local v13           #clickHandler:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)V

    .line 335
    .restart local v13       #clickHandler:Landroid/view/View$OnClickListener;
    :goto_3
    invoke-virtual {v15, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    .end local v13           #clickHandler:Landroid/view/View$OnClickListener;
    :cond_4
    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v1, v3, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v3, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v17

    .line 342
    .local v17, owner:Landroid/accounts/Account;
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 343
    if-eqz v17, :cond_c

    const/4 v1, 0x1

    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->getBuyButtonString(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContinueUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mReturnAfterPurchase:Z

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    .end local v17           #owner:Landroid/accounts/Account;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->updateContainerLayouts()V

    goto/16 :goto_0

    .line 239
    .end local v2           #installAccount:Landroid/accounts/Account;
    .end local v14           #installAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .restart local v10       #appHasSubscriptions:Z
    :cond_6
    const v1, 0x7f070107

    goto/16 :goto_1

    .line 248
    .end local v10           #appHasSubscriptions:Z
    :cond_7
    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    if-nez v1, :cond_8

    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    if-eqz v1, :cond_8

    .line 251
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    add-int/lit8 v16, v16, 0x1

    .line 253
    const v1, 0x7f070108

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 254
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 262
    :cond_8
    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-eqz v1, :cond_2

    .line 264
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    add-int/lit8 v16, v16, 0x1

    .line 266
    const v1, 0x7f0701a1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 267
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v11, v9}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 317
    .restart local v2       #installAccount:Landroid/accounts/Account;
    .restart local v13       #clickHandler:Landroid/view/View$OnClickListener;
    .restart local v14       #installAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    :cond_9
    const v1, 0x7f07012f

    invoke-virtual {v15, v1}, Landroid/widget/Button;->setText(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;

    move-result-object v13

    goto/16 :goto_3

    .line 320
    :cond_a
    iget-boolean v1, v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-eqz v1, :cond_b

    .line 321
    new-instance v13, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;

    .end local v13           #clickHandler:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)V

    .line 331
    .restart local v13       #clickHandler:Landroid/view/View$OnClickListener;
    const v1, 0x7f070132

    invoke-virtual {v15, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_3

    .line 333
    :cond_b
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 343
    .end local v13           #clickHandler:Landroid/view/View$OnClickListener;
    .restart local v17       #owner:Landroid/accounts/Account;
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_4
.end method

.method protected syncDynamicSection()V
    .locals 13

    .prologue
    const/4 v10, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->resetDynamicStatus()V

    .line 123
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v8

    if-eq v8, v10, :cond_1

    .line 124
    const-string v8, "Unexpected doc backend %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, packageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 136
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v8, v4}, Lcom/google/android/finsky/receivers/Installer;->getProgress(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    move-result-object v6

    .line 138
    .local v6, progressReport:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
    sget-object v8, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    iget-object v9, v6, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-virtual {v9}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 154
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 158
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v9, 0x7f0800f0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 160
    .local v1, downloadSection:Landroid/view/ViewGroup;
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 162
    const v8, 0x7f0800d1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, downloadingBytes:Landroid/widget/TextView;
    const v8, 0x7f0800d0

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 165
    .local v3, downloadingPercentage:Landroid/widget/TextView;
    const v8, 0x7f0800d2

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 166
    .local v5, progressBar:Landroid/widget/ProgressBar;
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v2, v3, v5}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->configureDownloadProgressUi(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    .line 169
    const v8, 0x7f0800cf

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 170
    .local v0, cancel:Landroid/widget/ImageView;
    new-instance v8, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;

    invoke-direct {v8, p0, v4}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v8, 0x7f0800ed

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 180
    .local v7, title:Landroid/widget/TextView;
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 182
    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V

    goto/16 :goto_0

    .line 140
    .end local v0           #cancel:Landroid/widget/ImageView;
    .end local v1           #downloadSection:Landroid/view/ViewGroup;
    .end local v2           #downloadingBytes:Landroid/widget/TextView;
    .end local v3           #downloadingPercentage:Landroid/widget/TextView;
    .end local v5           #progressBar:Landroid/widget/ProgressBar;
    .end local v7           #title:Landroid/widget/TextView;
    :pswitch_0
    const v8, 0x7f07019d

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->showDynamicStatus(I)V

    .line 141
    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V

    goto/16 :goto_0

    .line 144
    :pswitch_1
    const v8, 0x7f07019e

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->showDynamicStatus(I)V

    .line 145
    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V

    goto/16 :goto_0

    .line 149
    :pswitch_2
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    goto/16 :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
