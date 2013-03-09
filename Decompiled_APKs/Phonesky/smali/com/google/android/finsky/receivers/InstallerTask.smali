.class Lcom/google/android/finsky/receivers/InstallerTask;
.super Ljava/lang/Object;
.source "InstallerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/receivers/InstallerTask$7;
    }
.end annotation


# static fields
.field private static PROGRESS_INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

.field private static PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;


# instance fields
.field private mApkCompleted:J

.field private mApkSize:J

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private mDownloadStatus:I

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

.field private final mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mIsUpdate:Z

.field private mMobileDataAllowed:Z

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;

.field private mObbMain:Lcom/google/android/finsky/download/obb/Obb;

.field private mObbMainCompleted:J

.field private mObbMainSize:J

.field private mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

.field private mObbPatchCompleted:J

.field private mObbPatchSize:J

.field private mRecoveredIntoState:I

.field private mShowDownloadNotifications:Z

.field private mShowInstallNotifications:Z

.field private mShowProgress:Z

.field private mTitle:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 573
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    .line 575
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V
    .locals 1
    .parameter "packageName"
    .parameter "installer"
    .parameter "appStates"
    .parameter "downloadQueue"
    .parameter "notifier"
    .parameter "installPolicies"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    .line 149
    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 150
    iput-object p4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 151
    iput-object p5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    .line 152
    invoke-virtual {p3}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    .line 153
    iput-object p6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/appstate/InstallerDataStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/appstate/AppStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/receivers/InstallerTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowInstallNotifications:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/receivers/InstallerTask;ILandroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/download/DownloadQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/receivers/InstallerTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->tryRestartWithoutPatch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/receivers/InstallerTask;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->deliveryResponseToInstallerError(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/android/volley/VolleyError;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->volleyErrorToInstallerError(Lcom/android/volley/VolleyError;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/finsky/receivers/InstallerTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    return-void
.end method

.method private advanceState()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 607
    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 608
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_0

    iget-object v8, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v8, :cond_1

    .line 609
    :cond_0
    const-string v7, "Unexpected missing installer data for %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-virtual {p0, v10}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 701
    :goto_0
    :sswitch_0
    return-void

    .line 613
    :cond_1
    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 614
    .local v4, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 697
    const-string v7, "Bad state %d for %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    invoke-virtual {p0, v10}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    goto :goto_0

    .line 616
    :sswitch_1
    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v1

    .line 618
    .local v1, desiredVersion:I
    iget-object v6, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 619
    .local v6, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-eqz v6, :cond_3

    iget v3, v6, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 620
    .local v3, installedVersion:I
    :goto_1
    if-lt v3, v1, :cond_4

    .line 628
    if-le v3, v1, :cond_2

    .line 629
    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 633
    :cond_2
    const/16 v8, 0x46

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_0

    .line 619
    .end local v3           #installedVersion:I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1

    .line 639
    .restart local v3       #installedVersion:I
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->getInstalledVersionForOtherUser(Lcom/google/android/finsky/appstate/AppStates$AppState;)I

    move-result v5

    .line 640
    .local v5, otherUserVersionCode:I
    if-lt v5, v1, :cond_6

    .line 643
    if-le v5, v1, :cond_5

    .line 644
    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 648
    :cond_5
    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v2

    .line 649
    .local v2, flags:I
    or-int/lit8 v2, v2, 0x20

    .line 650
    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 651
    const/16 v8, 0x32

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 652
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_0

    .line 656
    .end local v2           #flags:I
    :cond_6
    invoke-direct {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->checkValidDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 657
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->requestDeliveryData(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_0

    .line 663
    .end local v1           #desiredVersion:I
    .end local v3           #installedVersion:I
    .end local v5           #otherUserVersionCode:I
    .end local v6           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_7
    :sswitch_2
    invoke-direct {p0, v4, v11}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    .line 670
    :sswitch_3
    invoke-direct {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    goto/16 :goto_0

    .line 679
    :sswitch_4
    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_8

    .line 680
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->startApplyingPatch(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto/16 :goto_0

    .line 685
    :cond_8
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->startInstaller(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto/16 :goto_0

    .line 688
    :sswitch_6
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->cleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto/16 :goto_0

    .line 692
    :sswitch_7
    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v7, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 693
    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v7, p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->taskFinished(Lcom/google/android/finsky/receivers/InstallerTask;)V

    goto/16 :goto_0

    .line 614
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_2
        0x14 -> :sswitch_3
        0x19 -> :sswitch_0
        0x1e -> :sswitch_3
        0x23 -> :sswitch_0
        0x28 -> :sswitch_3
        0x2d -> :sswitch_0
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
        0x50 -> :sswitch_7
    .end sparse-switch
.end method

.method private canDownloadPatch(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z
    .locals 11
    .parameter

    .prologue
    .line 1557
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    .line 1558
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 1559
    const/4 v0, 0x1

    .line 1655
    :goto_0
    return v0

    .line 1564
    :cond_0
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 1565
    const/4 v0, 0x0

    goto :goto_0

    .line 1571
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1572
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    .line 1575
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-result-object v3

    .line 1576
    if-nez v3, :cond_2

    .line 1577
    const/4 v0, 0x0

    goto :goto_0

    .line 1581
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v0, v4, :cond_3

    .line 1582
    const-string v0, "gingerbread"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const/4 v0, 0x0

    goto :goto_0

    .line 1587
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v0

    .line 1588
    if-nez v0, :cond_4

    .line 1589
    const-string v0, "no-base-app-installed"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const/4 v0, 0x0

    goto :goto_0

    .line 1592
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getBaseVersionCode()I

    move-result v4

    .line 1593
    iget v5, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-eq v5, v4, :cond_5

    .line 1594
    const-string v2, "wrong-base-app-installed"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string v2, "Cannot patch %s, need version %d but has %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1597
    const/4 v0, 0x0

    goto :goto_0

    .line 1602
    :cond_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1604
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1610
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1611
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1612
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4, v0}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1613
    :cond_6
    const-string v0, "base-app-dirs-mismatch"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const-string v0, "Cannot patch %s, source dir is %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1615
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    const-string v0, "base-app-NameNotFoundException"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string v0, "Cannot patch %s, NameNotFoundException"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1608
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1624
    :cond_7
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->dataPartitionAvailableSpace()J

    move-result-wide v5

    .line 1626
    sget-object v0, Lcom/google/android/finsky/config/G;->downloadPatchFreeSpaceFactor:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1627
    int-to-long v7, v0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v9

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x64

    div-long/2addr v7, v9

    .line 1628
    cmp-long v0, v5, v7

    if-gez v0, :cond_8

    .line 1629
    const-string v0, "free-space"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v0, "Cannot patch %s, need %d, free %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1631
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1635
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1637
    const-string v2, "base-file-exists"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string v2, "Cannot patch %s, file does not exist %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1639
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1643
    :cond_9
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1644
    const-wide/16 v4, -0x1

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getBaseSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lcom/google/android/finsky/utils/PackageManagerHelper;->verifyApk(Ljava/io/InputStream;JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1645
    const-string v2, "base-file-signature"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string v2, "Cannot patch %s, signature mismatch"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1647
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1649
    :catch_1
    move-exception v2

    .line 1650
    const-string v2, "base-file-FileNotFoundException"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v2, "Cannot patch %s, FileNotFoundException, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1652
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1655
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 5
    .parameter "appState"

    .prologue
    const/4 v4, 0x0

    .line 524
    const-string v1, "Cancel running installation of %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/download/DownloadQueue;->getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;

    move-result-object v0

    .line 527
    .local v0, download:Lcom/google/android/finsky/download/Download;
    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 537
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_2

    .line 543
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_3

    .line 546
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 550
    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->taskFinished(Lcom/google/android/finsky/receivers/InstallerTask;)V

    .line 551
    return-void
.end method

.method private checkValidDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z
    .locals 11
    .parameter "installerData"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 748
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v4

    if-nez v4, :cond_0

    move v4, v5

    .line 762
    :goto_0
    return v4

    .line 751
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryDataTimestampMs()J

    move-result-wide v2

    .line 752
    .local v2, timestampMs:J
    cmp-long v4, v2, v9

    if-nez v4, :cond_1

    move v4, v6

    .line 755
    goto :goto_0

    .line 757
    :cond_1
    sget-object v4, Lcom/google/android/finsky/config/G;->deliveryDataExpirationMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long v0, v2, v7

    .line 758
    .local v0, expirationMs:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v4, v0, v7

    if-gez v4, :cond_2

    .line 759
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7, v9, v10}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    move v4, v5

    .line 760
    goto :goto_0

    :cond_2
    move v4, v6

    .line 762
    goto :goto_0
.end method

.method public static cleanObbDirectory(Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;Ljava/lang/String;)V
    .locals 11
    .parameter "mainObb"
    .parameter "patchObb"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x3

    .line 1341
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 1366
    :cond_0
    return-void

    .line 1345
    :cond_1
    const/4 v3, 0x0

    .line 1346
    .local v3, mainObbFile:Ljava/io/File;
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v8

    if-ne v8, v9, :cond_2

    .line 1347
    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getFile()Ljava/io/File;

    move-result-object v3

    .line 1349
    :cond_2
    const/4 v5, 0x0

    .line 1350
    .local v5, patchObbFile:Ljava/io/File;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v8

    if-ne v8, v9, :cond_3

    .line 1351
    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getFile()Ljava/io/File;

    move-result-object v5

    .line 1353
    :cond_3
    invoke-static {p2}, Lcom/google/android/finsky/download/obb/ObbFactory;->getParentDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1354
    .local v4, obbDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 1355
    .local v7, targets:[Ljava/io/File;
    if-eqz v7, :cond_0

    .line 1356
    move-object v0, v7

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    .line 1357
    .local v6, target:Ljava/io/File;
    if-eqz v3, :cond_5

    invoke-virtual {v3, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1356
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1360
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1363
    :cond_6
    const-string v8, "OBB cleanup %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1364
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private cleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 10
    .parameter "appState"

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1265
    const/4 v1, -0x1

    .line 1266
    .local v1, installedVersion:I
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v5, :cond_0

    .line 1267
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 1269
    :cond_0
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 1271
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 1272
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v5, 0x38e

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1322
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v9, :cond_2

    .line 1278
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 1279
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v7, :cond_2

    .line 1280
    const-string v5, "Lost main obb file for %s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 1282
    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v6, 0x38f

    invoke-direct {p0, v5, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1284
    const/16 v5, 0x38f

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 1288
    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v9, :cond_3

    .line 1289
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 1290
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 1291
    const-string v5, "Lost patch obb file for %s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1292
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 1293
    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v6, 0x390

    invoke-direct {p0, v5, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1295
    const/16 v5, 0x390

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 1301
    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cleanObbDirectory(Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;Ljava/lang/String;)V

    .line 1306
    const/16 v5, 0x50

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1308
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1311
    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1314
    .local v2, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-boolean v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowInstallNotifications:Z

    if-eqz v4, :cond_4

    .line 1315
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1316
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, continueUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    invoke-interface {v4, v3, v5, v0, v6}, Lcom/google/android/finsky/utils/Notifier;->showSuccessfulInstallMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1321
    .end local v0           #continueUrl:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto/16 :goto_0
.end method

.method private deliveryResponseToInstallerError(I)I
    .locals 1
    .parameter "deliveryResponseStatus"

    .prologue
    .line 838
    packed-switch p1, :pswitch_data_0

    .line 846
    const/16 v0, 0x3af

    :goto_0
    return v0

    .line 840
    :pswitch_0
    const/16 v0, 0x3ac

    goto :goto_0

    .line 842
    :pswitch_1
    const/16 v0, 0x3ad

    goto :goto_0

    .line 844
    :pswitch_2
    const/16 v0, 0x3ae

    goto :goto_0

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private generateDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Lcom/google/android/finsky/download/InternalDownload;
    .locals 20
    .parameter "installerData"

    .prologue
    .line 1021
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v17

    .line 1023
    .local v17, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1024
    .local v3, title:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1025
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    .line 1026
    .local v5, packageVersion:I
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadAuthCookie(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    move-result-object v16

    .line 1032
    .local v16, authCookie:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    const/4 v1, 0x0

    .line 1033
    .local v1, download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/receivers/InstallerTask;->canDownloadPatch(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1035
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-result-object v19

    .line 1036
    .local v19, patchData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, downloadUri:Ljava/lang/String;
    const-wide/16 v9, -0x1

    .line 1038
    .local v9, actualSize:J
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getMaxPatchSize()J

    move-result-wide v11

    .line 1040
    .local v11, maxDownloadSize:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v18

    .line 1041
    .local v18, flags:I
    and-int/lit8 v6, v18, 0x4

    if-nez v6, :cond_0

    .line 1042
    or-int/lit8 v18, v18, 0x4

    .line 1043
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move/from16 v0, v18

    invoke-interface {v6, v4, v0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 1051
    .end local v18           #flags:I
    .end local v19           #patchData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/android/finsky/download/DownloadImpl;

    .end local v1           #download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-nez v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    if-nez v15, :cond_3

    const/4 v15, 0x1

    :goto_2
    invoke-direct/range {v1 .. v15}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V

    .line 1054
    .restart local v1       #download:Lcom/google/android/finsky/download/InternalDownload;
    return-object v1

    .line 1047
    .end local v2           #downloadUri:Ljava/lang/String;
    .end local v9           #actualSize:J
    .end local v11           #maxDownloadSize:J
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 1048
    .restart local v2       #downloadUri:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v9

    .line 1049
    .restart local v9       #actualSize:J
    move-wide v11, v9

    .restart local v11       #maxDownloadSize:J
    goto :goto_0

    .line 1051
    .end local v1           #download:Lcom/google/android/finsky/download/InternalDownload;
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;
    .locals 19
    .parameter "installerData"
    .parameter "obb"

    .prologue
    .line 1061
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v17

    .line 1063
    .local v17, context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v18

    .line 1064
    .local v18, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    const v2, 0x7f070199

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1066
    .local v3, title:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1067
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    .line 1068
    .local v5, packageVersion:I
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadAuthCookie(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    move-result-object v16

    .line 1069
    .local v16, authCookie:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    invoke-interface/range {p2 .. p2}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 1070
    .local v8, fileUri:Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v9

    .line 1072
    .local v9, downloadSize:J
    new-instance v1, Lcom/google/android/finsky/download/DownloadImpl;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/finsky/download/obb/Obb;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-nez v11, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    if-nez v11, :cond_1

    const/4 v15, 0x1

    :goto_1
    move-wide v11, v9

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V

    .line 1075
    .local v1, download:Lcom/google/android/finsky/download/InternalDownload;
    return-object v1

    .line 1072
    .end local v1           #download:Lcom/google/android/finsky/download/InternalDownload;
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private getInstalledVersionForOtherUser(Lcom/google/android/finsky/appstate/AppStates$AppState;)I
    .locals 8
    .parameter "appState"

    .prologue
    const/4 v3, -0x1

    .line 714
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getUsers()Lcom/google/android/finsky/utils/Users;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/utils/Users;->supportsMultiUser()Z

    move-result v4

    if-nez v4, :cond_1

    .line 737
    :cond_0
    :goto_0
    return v3

    .line 718
    :cond_1
    iget-object v4, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v4, :cond_0

    .line 722
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 724
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/16 v5, 0x2000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 726
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 730
    const-string v4, "Found %s version %d installed for another user"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private getInstallerListener(Landroid/net/Uri;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    .locals 1
    .parameter "uri"

    .prologue
    .line 1154
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$3;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Landroid/net/Uri;)V

    return-object v0
.end method

.method private getUiFields(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 5
    .parameter "appState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 472
    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 473
    .local v1, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    .line 474
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    .line 476
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    .line 477
    .local v0, flags:I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowInstallNotifications:Z

    .line 478
    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    .line 482
    iget-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowDownloadNotifications:Z

    .line 483
    return-void

    .end local v0           #flags:I
    :cond_0
    move v2, v4

    .line 473
    goto :goto_0

    .restart local v0       #flags:I
    :cond_1
    move v2, v4

    .line 477
    goto :goto_1

    :cond_2
    move v3, v4

    .line 478
    goto :goto_2
.end method

.method private notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 2
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1511
    return-void
.end method

.method private processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V
    .locals 11
    .parameter "installerData"
    .parameter "canSetMobileDataAllowed"

    .prologue
    const/4 v10, 0x4

    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 885
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v0

    .line 888
    .local v0, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkSize:J

    .line 889
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    .line 890
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    .line 893
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkCompleted:J

    .line 894
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainCompleted:J

    .line 895
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchCompleted:J

    .line 898
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getAdditionalFileCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 900
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 901
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 902
    sget-object v3, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v6, 0x385

    invoke-direct {p0, v3, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 904
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v3

    const-string v6, "install.abandonInstall"

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const-string v8, "obb-no-external-storage"

    invoke-interface {v3, v6, v7, v8}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    const-string v6, "install.abandonInstall"

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "cidi"

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v7, v4

    const/4 v4, 0x2

    const-string v5, "r"

    aput-object v5, v7, v4

    const/4 v4, 0x3

    const-string v5, "obb-no-external-storage"

    aput-object v5, v7, v4

    invoke-virtual {v3, v6, v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowDownloadNotifications:Z

    if-eqz v3, :cond_0

    .line 911
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/google/android/finsky/utils/Notifier;->showExternalStorageMissing(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    .line 918
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_2

    .line 919
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 920
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v3

    if-ne v3, v10, :cond_2

    .line 921
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    .line 924
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    .line 925
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_3

    .line 926
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 927
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v3

    if-ne v3, v10, :cond_3

    .line 928
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    .line 938
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    .line 945
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-nez v3, :cond_0

    .line 946
    iget-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkSize:J

    iget-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    add-long v1, v6, v8

    .line 947
    .local v1, totalSize:J
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-gez v3, :cond_5

    :goto_2
    iput-boolean v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    .line 948
    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-eqz v3, :cond_0

    .line 949
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->setMobileDataAllowed(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #totalSize:J
    :cond_4
    move v3, v5

    .line 938
    goto :goto_1

    .restart local v1       #totalSize:J
    :cond_5
    move v4, v5

    .line 947
    goto :goto_2
.end method

.method private recoverApk(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z
    .locals 7
    .parameter "appState"
    .parameter "contentUri"
    .parameter "status"
    .parameter "desired"
    .parameter "installed"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 387
    if-gt p4, p5, :cond_0

    .line 388
    const-string v3, "Recovery of %s skipped because desired= %d installed= %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :goto_0
    return v1

    .line 395
    :cond_0
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusCompleted(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 397
    const-string v3, "Recovery of %s into downloading APK state"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->generateDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 399
    .local v0, download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v0, p2}, Lcom/google/android/finsky/download/InternalDownload;->setContentUri(Landroid/net/Uri;)V

    .line 400
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadQueue;->addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    move v1, v2

    .line 401
    goto :goto_0

    .line 404
    .end local v0           #download:Lcom/google/android/finsky/download/InternalDownload;
    :cond_1
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    const-string v3, "Recovery of %s into ready to install state"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    const/16 v1, 0x32

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    move v1, v2

    .line 409
    goto :goto_0

    .line 413
    :cond_2
    const-string v3, "Recovery of %s into error state, status= %d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 415
    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v2, p3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 416
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private recoverInstalling(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z
    .locals 5
    .parameter "appState"
    .parameter "contentUri"
    .parameter "status"
    .parameter "desired"
    .parameter "installed"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 434
    if-ge p4, p5, :cond_0

    .line 436
    const-string v0, "Recovery of %s skipped because desired= %d installed= %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :goto_0
    return v4

    .line 440
    :cond_0
    if-ne p4, p5, :cond_1

    .line 442
    const-string v0, "Recovery of %s - installation seems complete"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    const/16 v0, 0x46

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 444
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_0

    .line 450
    :cond_1
    const-string v0, "Recovery of %s with incomplete installation"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 452
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v0, p3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto :goto_0
.end method

.method private recoverObb(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;IIIZ)Z
    .locals 9
    .parameter "appState"
    .parameter "contentUri"
    .parameter "status"
    .parameter "desired"
    .parameter "installed"
    .parameter "isPatch"

    .prologue
    .line 324
    if-eqz p6, :cond_0

    const-string v4, "Patch"

    .line 326
    .local v4, tag:Ljava/lang/String;
    :goto_0
    if-gt p4, p5, :cond_1

    .line 327
    const-string v5, "Recovery of %s %s Obb skipped because desired= %d installed= %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    const/4 v5, 0x0

    .line 375
    :goto_1
    return v5

    .line 324
    .end local v4           #tag:Ljava/lang/String;
    :cond_0
    const-string v4, "Main"

    goto :goto_0

    .line 334
    .restart local v4       #tag:Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusCompleted(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 336
    const-string v5, "Recovery of %s %s Obb into downloading OBB state"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    if-eqz p6, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    .line 338
    .local v3, obb:Lcom/google/android/finsky/download/obb/Obb;
    :goto_2
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v5, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v1

    .line 339
    .local v1, download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1, p2}, Lcom/google/android/finsky/download/InternalDownload;->setContentUri(Landroid/net/Uri;)V

    .line 340
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v5, v1}, Lcom/google/android/finsky/download/DownloadQueue;->addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 341
    const/4 v5, 0x1

    goto :goto_1

    .line 337
    .end local v1           #download:Lcom/google/android/finsky/download/InternalDownload;
    .end local v3           #obb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_2

    .line 344
    :cond_3
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 347
    if-eqz p6, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    .line 348
    .restart local v3       #obb:Lcom/google/android/finsky/download/obb/Obb;
    :goto_3
    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 349
    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 350
    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v5

    if-nez v5, :cond_6

    .line 351
    const-string v5, "Recovery of %s %s Obb skipped - finalize failed"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 354
    if-eqz p6, :cond_5

    const/16 v0, 0x390

    .line 356
    .local v0, code:I
    :goto_4
    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v5, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 357
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 358
    const/4 v5, 0x0

    goto :goto_1

    .line 347
    .end local v0           #code:I
    .end local v3           #obb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_3

    .line 354
    .restart local v3       #obb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_5
    const/16 v0, 0x38f

    goto :goto_4

    .line 363
    :cond_6
    const-string v5, "Recovery of %s %s Obb into ready to install state"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    if-eqz p6, :cond_7

    const/16 v2, 0x28

    .line 365
    .local v2, newState:I
    :goto_5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    .line 367
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 364
    .end local v2           #newState:I
    :cond_7
    const/16 v2, 0x1e

    goto :goto_5

    .line 371
    .end local v3           #obb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_8
    const-string v5, "Recovery of %s %s Obb into error state, status= %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 373
    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v5, p3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 374
    const/4 v5, 0x0

    invoke-direct {p0, p3, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 375
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1662
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.applyPatch"

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "install.applyPatch"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cidi"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "r"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1667
    return-void
.end method

.method private requestDeliveryData(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 14
    .parameter "appState"

    .prologue
    const/16 v6, 0x38a

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 769
    iget-object v12, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 770
    .local v12, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v13

    .line 772
    .local v13, packageVersion:I
    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v11

    .line 773
    .local v11, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v9

    .line 774
    .local v9, account:Landroid/accounts/Account;
    if-nez v9, :cond_0

    .line 776
    const-string v0, "Invalid account %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v11, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 778
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 832
    :goto_0
    return-void

    .line 783
    :cond_0
    const/4 v5, 0x0

    .line 784
    .local v5, previousVersion:Ljava/lang/Integer;
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/config/G;->downloadSendBaseVersionCode:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 790
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v10

    .line 791
    .local v10, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v3

    .line 792
    .local v3, serverToken:[B
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "1"

    new-instance v7, Lcom/google/android/finsky/receivers/InstallerTask$1;

    invoke-direct {v7, p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask$1;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/finsky/receivers/InstallerTask$2;

    invoke-direct {v8, p0}, Lcom/google/android/finsky/receivers/InstallerTask$2;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;)V

    invoke-interface/range {v0 .. v8}, Lcom/google/android/finsky/api/DfeApi;->delivery(Ljava/lang/String;I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 831
    const/16 v0, 0xa

    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setInstallerState(ILandroid/net/Uri;)V
    .locals 1
    .parameter "newState"
    .parameter "contentUri"

    .prologue
    .line 1542
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1543
    .local v0, uriString:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1544
    return-void

    .line 1542
    .end local v0           #uriString:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setInstallerState(ILjava/lang/String;)V
    .locals 2
    .parameter "newState"
    .parameter "contentUri"

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    .line 1536
    return-void
.end method

.method private showDownloadNotification(ILjava/lang/String;)V
    .locals 6
    .parameter "errorCode"
    .parameter "serverMessage"

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowDownloadNotifications:Z

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/utils/Notifier;->showDownloadErrorMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 493
    :cond_0
    return-void
.end method

.method private startActivation(Lcom/google/android/finsky/appstate/AppStates$AppState;)Z
    .locals 4
    .parameter "appState"

    .prologue
    const/4 v2, 0x0

    .line 1182
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1183
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    move v1, v2

    .line 1232
    :goto_0
    return v1

    .line 1187
    :cond_0
    new-instance v1, Lcom/google/android/finsky/receivers/InstallerTask$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$4;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1227
    const/16 v3, 0x3c

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1230
    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1232
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startApplyingPatch(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 5
    .parameter "appState"

    .prologue
    .line 1675
    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1676
    .local v2, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v1

    .line 1677
    .local v1, downloadUriString:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1680
    .local v0, downloadUri:Landroid/net/Uri;
    const/16 v3, 0x37

    invoke-direct {p0, v3, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    .line 1682
    new-instance v3, Lcom/google/android/finsky/receivers/InstallerTask$6;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask$6;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/receivers/InstallerTask$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1835
    return-void
.end method

.method private startInstaller(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 17
    .parameter "appState"

    .prologue
    .line 1087
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/receivers/InstallerTask;->startActivation(Lcom/google/android/finsky/appstate/AppStates$AppState;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1150
    :goto_0
    return-void

    .line 1091
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1092
    .local v14, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v14}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v12

    .line 1096
    .local v12, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v6, :cond_1

    .line 1097
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v6}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 1098
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v6}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v16

    .line 1099
    .local v16, obbState:I
    const/4 v6, 0x5

    move/from16 v0, v16

    if-eq v0, v6, :cond_1

    const/4 v6, 0x3

    move/from16 v0, v16

    if-eq v0, v6, :cond_1

    .line 1100
    const-string v6, "Can\'t find main obb file for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1101
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1102
    sget-object v6, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v7, 0x38f

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1104
    const/16 v6, 0x38f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 1108
    .end local v16           #obbState:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v6, :cond_2

    .line 1109
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v6}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v6}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v16

    .line 1111
    .restart local v16       #obbState:I
    const/4 v6, 0x5

    move/from16 v0, v16

    if-eq v0, v6, :cond_2

    const/4 v6, 0x3

    move/from16 v0, v16

    if-eq v0, v6, :cond_2

    .line 1112
    const-string v6, "Can\'t find patch obb file for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1114
    sget-object v6, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v7, 0x390

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1116
    const/16 v6, 0x390

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 1120
    .end local v16           #obbState:I
    :cond_2
    invoke-virtual {v14}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1121
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v3

    .line 1122
    .local v3, expectedSize:J
    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getSignature()Ljava/lang/String;

    move-result-object v5

    .line 1123
    .local v5, expectedSignature:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1124
    .local v1, uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    .line 1126
    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v13, "install.installerStart.encrypted"

    .line 1128
    .local v13, installTag:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v6, v13, v7, v8}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v15, "install.installerStart.encrypted"

    .line 1132
    .local v15, newInstallTag:Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "cidi"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v6, v15, v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowInstallNotifications:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->getInstallerListener(Landroid/net/Uri;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getForwardLocked()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getEncryptionParams()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    move-result-object v11

    invoke-static/range {v1 .. v11}, Lcom/google/android/finsky/utils/PackageManagerHelper;->installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZZLjava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)V

    .line 1146
    const/16 v6, 0x3c

    invoke-virtual {v14}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1149
    sget-object v6, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto/16 :goto_0

    .line 1124
    .end local v13           #installTag:Ljava/lang/String;
    .end local v15           #newInstallTag:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1126
    :cond_4
    const-string v13, "install.installerStart"

    goto :goto_2

    .line 1130
    .restart local v13       #installTag:Ljava/lang/String;
    :cond_5
    const-string v15, "install.installerStart"

    goto :goto_3
.end method

.method private startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .locals 10
    .parameter "installerData"

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 964
    const/4 v0, 0x0

    .line 965
    .local v0, download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v2

    .line 966
    .local v2, state:I
    const/16 v4, 0x14

    if-ge v2, v4, :cond_0

    .line 968
    const/16 v2, 0x14

    .line 970
    :cond_0
    const/4 v1, -0x1

    .line 972
    .local v1, nextState:I
    sparse-switch v2, :sswitch_data_0

    .line 999
    :goto_0
    if-ltz v1, :cond_3

    .line 1001
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v4, v0}, Lcom/google/android/finsky/download/DownloadQueue;->add(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 1002
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v4

    const-string v5, "install.downloadQueued"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v4

    const-string v5, "install.downloadQueued"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "downloadState"

    aput-object v7, v6, v8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1015
    :goto_1
    return-void

    .line 974
    :sswitch_0
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v4, :cond_1

    .line 975
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 976
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 977
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 978
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, p1, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 979
    const/16 v1, 0x14

    .line 980
    goto :goto_0

    .line 985
    :cond_1
    :sswitch_1
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v4, :cond_2

    .line 986
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 987
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 988
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 989
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, p1, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 990
    const/16 v1, 0x1e

    .line 991
    goto :goto_0

    .line 996
    :cond_2
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->generateDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 997
    const/16 v1, 0x28

    goto/16 :goto_0

    .line 1008
    :cond_3
    const-string v4, "Unexpected download start states for %s: %d %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1011
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v5, 0x386

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1013
    const/16 v4, 0x386

    invoke-direct {p0, v4, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_1

    .line 972
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
        0x28 -> :sswitch_2
    .end sparse-switch
.end method

.method private tryRestartWithoutPatch()Z
    .locals 6

    .prologue
    .line 1842
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    .line 1843
    .local v2, installerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    .line 1844
    .local v1, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    .line 1845
    .local v0, flags:I
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 1846
    .local v3, wasPatch:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1848
    or-int/lit8 v0, v0, 0x8

    .line 1849
    and-int/lit8 v0, v0, -0x5

    .line 1850
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 1852
    const/16 v5, 0x28

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1853
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    .line 1855
    :cond_0
    return v3

    .line 1845
    .end local v3           #wasPatch:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private volleyErrorToInstallerError(Lcom/android/volley/VolleyError;)I
    .locals 1
    .parameter "volleyError"

    .prologue
    .line 854
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_0

    .line 855
    const/16 v0, 0x398

    .line 878
    :goto_0
    return v0

    .line 857
    :cond_0
    instance-of v0, p1, Lcom/google/android/volley/DisplayMessageError;

    if-eqz v0, :cond_1

    .line 858
    const/16 v0, 0x399

    goto :goto_0

    .line 860
    :cond_1
    instance-of v0, p1, Lcom/google/android/finsky/api/DfeServerError;

    if-eqz v0, :cond_2

    .line 861
    const/16 v0, 0x39a

    goto :goto_0

    .line 863
    :cond_2
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_3

    .line 864
    const/16 v0, 0x39b

    goto :goto_0

    .line 866
    :cond_3
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_4

    .line 867
    const/16 v0, 0x39c

    goto :goto_0

    .line 869
    :cond_4
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_5

    .line 870
    const/16 v0, 0x39d

    goto :goto_0

    .line 872
    :cond_5
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_6

    .line 873
    const/16 v0, 0x39e

    goto :goto_0

    .line 875
    :cond_6
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_7

    .line 876
    const/16 v0, 0x39f

    goto :goto_0

    .line 878
    :cond_7
    const/16 v0, 0x3a0

    goto :goto_0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 5
    .parameter "sendNotify"

    .prologue
    const/4 v4, 0x0

    .line 502
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 506
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_1

    .line 508
    const-string v1, "Cannot cancel installing %s - too late"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 515
    if-eqz p1, :cond_0

    .line 516
    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto :goto_0
.end method

.method public getProgress()Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
    .locals 7

    .prologue
    .line 579
    sget-object v0, Lcom/google/android/finsky/receivers/InstallerTask$7;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->getState()Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 587
    iget-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkCompleted:J

    .line 588
    .local v2, bytesCompleted:J
    iget-wide v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkSize:J

    .line 590
    .local v4, bytesTotal:J
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainCompleted:J

    add-long/2addr v2, v0

    .line 591
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    add-long/2addr v4, v0

    .line 593
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchCompleted:J

    add-long/2addr v2, v0

    .line 594
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    add-long/2addr v4, v0

    .line 596
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    iget v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadStatus:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    .end local v2           #bytesCompleted:J
    .end local v4           #bytesTotal:J
    :goto_0
    return-object v0

    .line 581
    :pswitch_0
    sget-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0

    .line 583
    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getState()Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .locals 3

    .prologue
    .line 554
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 555
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 567
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    .line 570
    :goto_0
    return-object v1

    .line 560
    :sswitch_0
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    .line 565
    :sswitch_1
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    .line 570
    :cond_0
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x37 -> :sswitch_1
        0x3c -> :sswitch_1
        0x46 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .locals 12
    .parameter "download"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1412
    move-object v3, p1

    check-cast v3, Lcom/google/android/finsky/download/InternalDownload;

    .line 1413
    .local v3, internal:Lcom/google/android/finsky/download/InternalDownload;
    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v10, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 1414
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1415
    .local v2, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    const/4 v6, -0x1

    .line 1416
    .local v6, newState:I
    const/16 v1, 0x388

    .line 1417
    .local v1, errorCode:I
    invoke-interface {v3}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v4

    .line 1418
    .local v4, internalIsObb:Z
    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->isPatch()Z

    move-result v9

    if-nez v9, :cond_1

    move v5, v7

    .line 1419
    .local v5, internalIsObbMain:Z
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 1446
    :cond_0
    :goto_1
    if-ltz v6, :cond_4

    .line 1448
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    .line 1449
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    .line 1457
    :goto_2
    return-void

    .end local v5           #internalIsObbMain:Z
    :cond_1
    move v5, v8

    .line 1418
    goto :goto_0

    .line 1421
    .restart local v5       #internalIsObbMain:Z
    :sswitch_0
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1422
    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1423
    const/16 v6, 0x1e

    goto :goto_1

    .line 1425
    :cond_2
    const-string v9, "Can\'t finalize main obb file for %s"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1426
    const/16 v1, 0x38f

    goto :goto_1

    .line 1431
    :sswitch_1
    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    .line 1432
    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1433
    const/16 v6, 0x28

    goto :goto_1

    .line 1435
    :cond_3
    const-string v9, "Can\'t finalize patch obb file for %s"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1436
    const/16 v1, 0x390

    goto :goto_1

    .line 1441
    :sswitch_2
    if-nez v4, :cond_0

    .line 1442
    const/16 v6, 0x32

    goto :goto_1

    .line 1451
    :cond_4
    const-string v9, "Unexpected download completion states for %s: %d %d %b %b"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1453
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1454
    sget-object v7, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v7, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1455
    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_2

    .line 1419
    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2d -> :sswitch_2
    .end sparse-switch
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .locals 4
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    const/4 v1, 0x0

    .line 1464
    const/16 v2, 0x1a4

    if-eq p2, v2, :cond_0

    const/16 v2, 0x1f4

    if-lt p2, v2, :cond_1

    const/16 v2, 0x257

    if-gt p2, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1465
    .local v0, restartableError:Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->tryRestartWithoutPatch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1483
    :goto_1
    return-void

    .end local v0           #restartableError:Z
    :cond_1
    move v0, v1

    .line 1464
    goto :goto_0

    .line 1469
    .restart local v0       #restartableError:Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1473
    const/16 v1, 0x1f2

    if-ne p2, v1, :cond_4

    .line 1474
    iget-boolean v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowDownloadNotifications:Z

    if-eqz v1, :cond_3

    .line 1475
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/utils/Notifier;->showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    :cond_3
    :goto_2
    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto :goto_1

    .line 1479
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .locals 6
    .parameter "download"
    .parameter "progress"

    .prologue
    const-wide/16 v4, 0x0

    .line 1487
    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 1488
    .local v1, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1489
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->isPatch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1490
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchCompleted:J

    .line 1504
    :cond_0
    :goto_0
    iget v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    iput v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadStatus:I

    .line 1505
    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1506
    return-void

    .line 1492
    :cond_1
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainCompleted:J

    goto :goto_0

    .line 1495
    :cond_2
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkCompleted:J

    .line 1497
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1498
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 1499
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFirstDownloadMs()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1500
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFirstDownloadMs(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .locals 10
    .parameter "download"

    .prologue
    const/16 v9, 0x387

    const/4 v8, 0x0

    .line 1370
    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 1371
    .local v1, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1372
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1376
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    const/4 v2, -0x1

    .line 1377
    .local v2, newState:I
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1391
    :goto_0
    if-ltz v2, :cond_0

    .line 1393
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    .line 1394
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1403
    :goto_1
    return-void

    .line 1380
    :sswitch_0
    const/16 v2, 0x19

    .line 1381
    goto :goto_0

    .line 1384
    :sswitch_1
    const/16 v2, 0x23

    .line 1385
    goto :goto_0

    .line 1388
    :sswitch_2
    const/16 v2, 0x2d

    goto :goto_0

    .line 1396
    :cond_0
    const-string v4, "Unexpected download start states for %s: %d %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1398
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1399
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v9}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1401
    const/4 v4, 0x0

    invoke-direct {p0, v9, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_1

    .line 1377
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1e -> :sswitch_1
        0x23 -> :sswitch_1
        0x28 -> :sswitch_2
        0x2d -> :sswitch_2
    .end sparse-switch
.end method

.method public recover(Landroid/net/Uri;I)Z
    .locals 10
    .parameter "contentUri"
    .parameter "status"

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v1

    .line 265
    .local v1, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    iget-object v7, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 266
    .local v7, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    const-string v0, "Recovery of %s skipped because incomplete installerdata"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :goto_0
    return v6

    .line 273
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->getUiFields(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 276
    iget-object v0, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    .line 279
    iget-object v0, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v5, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 281
    .local v5, installed:I
    :goto_1
    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    .line 283
    .local v4, desired:I
    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v8

    .line 284
    .local v8, state:I
    iput v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mRecoveredIntoState:I

    .line 285
    sparse-switch v8, :sswitch_data_0

    .line 310
    const-string v0, "Recovery of %s skipped because state= %d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    .end local v4           #desired:I
    .end local v5           #installed:I
    .end local v8           #state:I
    :cond_2
    const/4 v5, -0x1

    goto :goto_1

    .restart local v4       #desired:I
    .restart local v5       #installed:I
    .restart local v8       #state:I
    :sswitch_0
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 287
    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverObb(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;IIIZ)Z

    move-result v6

    goto :goto_0

    :sswitch_1
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v6, v9

    .line 289
    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverObb(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;IIIZ)Z

    move-result v6

    goto :goto_0

    :sswitch_2
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 291
    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverApk(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z

    move-result v6

    goto :goto_0

    .line 300
    :sswitch_3
    const-string v0, "Recovery of %s skipped because state= %d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    goto :goto_0

    :sswitch_4
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 305
    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverInstalling(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z

    move-result v6

    goto :goto_0

    .line 285
    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2d -> :sswitch_2
        0x32 -> :sswitch_4
        0x37 -> :sswitch_3
        0x3c -> :sswitch_4
    .end sparse-switch
.end method

.method releaseInstalledUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1242
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1243
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v0, installFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1248
    .end local v0           #installFile:Ljava/io/File;
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, p1}, Lcom/google/android/finsky/download/DownloadQueue;->release(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public start()V
    .locals 11

    .prologue
    const/16 v10, 0x38b

    const/16 v9, 0x389

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 168
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v4, :cond_1

    .line 169
    :cond_0
    const-string v4, "Unexpected missing installer data for %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 239
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 174
    .local v1, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v3

    .line 177
    .local v3, state:I
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->getUiFields(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 181
    if-lez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 182
    invoke-direct {p0, v1, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    .line 185
    :cond_2
    const/4 v2, -0x1

    .line 186
    .local v2, newState:I
    iput v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mRecoveredIntoState:I

    .line 187
    sparse-switch v3, :sswitch_data_0

    .line 231
    const-string v4, "Unknown state %d for %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    goto :goto_0

    .line 191
    :sswitch_0
    const/4 v2, 0x0

    .line 235
    :goto_1
    :sswitch_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    .line 236
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 238
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_0

    .line 196
    :sswitch_2
    const/16 v2, 0xa

    .line 197
    goto :goto_1

    .line 201
    :sswitch_3
    const-string v4, "Cannot restart %s from downloading state %d"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 203
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v9}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 205
    const/4 v4, 0x0

    invoke-direct {p0, v9, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 209
    :sswitch_4
    const/16 v2, 0x3c

    .line 210
    goto :goto_1

    .line 217
    :sswitch_5
    const-string v4, "Restarting while applying patch for %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 219
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v10}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 221
    const/4 v4, 0x0

    invoke-direct {p0, v10, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 226
    :sswitch_6
    const/16 v2, 0x46

    .line 227
    goto :goto_1

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
        0x14 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1e -> :sswitch_2
        0x23 -> :sswitch_3
        0x28 -> :sswitch_2
        0x2d -> :sswitch_3
        0x32 -> :sswitch_4
        0x37 -> :sswitch_5
        0x3c -> :sswitch_6
        0x46 -> :sswitch_6
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    return-object v0
.end method
