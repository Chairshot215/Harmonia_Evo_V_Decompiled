.class public Lcom/google/android/finsky/receivers/InstallerImpl;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;
.implements Lcom/google/android/finsky/receivers/Installer;
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;
    }
.end annotation


# static fields
.field private static PROGRESS_DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

.field private static PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

.field private static PROGRESS_UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field mListener:Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/installer/InstallerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;

.field private final mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

.field private mRunning:Z

.field private mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

.field private mServiceConnectionCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsers:Lcom/google/android/finsky/utils/Users;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 644
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    .line 646
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    .line 648
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/utils/Users;)V
    .locals 2
    .parameter "context"
    .parameter "appStates"
    .parameter "libraries"
    .parameter "downloadQueue"
    .parameter "notifier"
    .parameter "installPolicies"
    .parameter "packageMonitorReceiver"
    .parameter "users"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    .line 1023
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;

    .line 1115
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerImpl$6;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/receivers/InstallerImpl$6;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListener:Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

    .line 108
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 110
    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 111
    iput-object p4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 112
    iput-object p5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    .line 113
    iput-object p6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 114
    iput-object p7, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    .line 115
    iput-object p8, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUsers:Lcom/google/android/finsky/utils/Users;

    .line 117
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    .line 118
    invoke-virtual {p2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    .line 122
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/appstate/AppStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/download/DownloadQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/receivers/InstallerImpl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/receivers/InstallerImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/receivers/InstallerImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/util/Collection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->recoverRunningDownloads(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/receivers/InstallerImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/receivers/InstallerImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->bindToMultiUserCoordinator(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    return-object v0
.end method

.method private bindToMultiUserCoordinator(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "runAfter"

    .prologue
    .line 1072
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 1073
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    if-eqz v2, :cond_1

    .line 1074
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    if-nez v2, :cond_0

    .line 1080
    new-instance v2, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V

    iput-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    .line 1081
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->createBindIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1082
    .local v0, bindIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 1084
    .local v1, result:Z
    if-nez v1, :cond_0

    .line 1085
    const-string v2, "Couldn\'t start service for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private cancelPendingInstall(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 4
    .parameter "appState"

    .prologue
    const/4 v3, 0x0

    .line 467
    if-eqz p1, :cond_0

    .line 468
    const-string v0, "Cancel pending install of %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 472
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 475
    :cond_0
    return-void
.end method

.method private getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;
    .locals 6
    .parameter "download"

    .prologue
    const/4 v4, 0x0

    .line 984
    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 985
    .local v1, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, packageName:Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 1001
    :cond_0
    :goto_0
    return-object v3

    .line 989
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v3

    .line 990
    .local v3, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-nez v3, :cond_2

    .line 992
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v5, p1}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    move-object v3, v4

    .line 993
    goto :goto_0

    .line 995
    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v5, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 996
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v5, :cond_0

    .line 998
    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v5, p1}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    move-object v3, v4

    .line 999
    goto :goto_0
.end method

.method private getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    .line 976
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kick(Ljava/lang/String;Z)V
    .locals 8
    .parameter "hintPackage"
    .parameter "postToHandler"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 811
    if-eqz p2, :cond_1

    .line 812
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/receivers/InstallerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$3;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    if-nez v0, :cond_2

    .line 821
    const-string v0, "Installer kick %s - no action, not running yet"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v0, :cond_3

    .line 825
    const-string v0, "Installer kick %s - no action because busy."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 828
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 829
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->kickMultiUser(Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->selectNextTask(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v7

    .line 833
    .local v7, appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v7, :cond_0

    .line 834
    const-string v0, "Installer kick %s - starting %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v2, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v1, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;-><init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    .line 837
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->start()V

    goto :goto_0
.end method

.method private kickMultiUser(Ljava/lang/String;)V
    .locals 9
    .parameter "hintPackage"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->getAppsToInstall()Ljava/util/List;

    move-result-object v8

    .line 923
    .local v8, appsToInstall:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->unbindMultiUserCoordinator()V

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    if-nez v0, :cond_2

    .line 931
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$4;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->bindToMultiUserCoordinator(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 939
    :cond_2
    invoke-direct {p0, p1, v8}, Lcom/google/android/finsky/receivers/InstallerImpl;->selectNextTaskMultiUser(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v7

    .line 940
    .local v7, appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v7, :cond_0

    .line 947
    const-string v0, "Installer kick %s - starting %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v1, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;-><init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    .line 950
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->start()V

    goto :goto_0
.end method

.method private multiUserMode()Z
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUsers:Lcom/google/android/finsky/utils/Users;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/Users;->hasMultipleUsers()Z

    move-result v0

    return v0
.end method

.method private recoverDownload(Landroid/net/Uri;I)Z
    .locals 13
    .parameter "contentUri"
    .parameter "status"

    .prologue
    .line 501
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 502
    .local v12, uriString:Ljava/lang/String;
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    const/4 v2, 0x0

    .line 554
    :goto_1
    return v2

    .line 501
    .end local v12           #uriString:Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 505
    .restart local v12       #uriString:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v2, :cond_2

    .line 506
    const-string v2, "tried recovery while already handling %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v5, v5, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    const/4 v2, 0x0

    goto :goto_1

    .line 509
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->getAll()Ljava/util/Collection;

    move-result-object v7

    .line 510
    .local v7, allApps:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;>;"
    const/4 v11, 0x0

    .line 511
    .local v11, recoverInstallerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 512
    .local v10, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v10}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    move-object v11, v10

    .line 517
    .end local v10           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :cond_4
    if-nez v11, :cond_5

    .line 518
    const/4 v2, 0x0

    goto :goto_1

    .line 520
    :cond_5
    invoke-virtual {v11}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "Recovering download for running %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    invoke-interface {v2, v1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->acquirePackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 528
    const-string v2, "Can\'t recover %s *** cannot acquire"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    const/4 v2, 0x0

    goto :goto_1

    .line 531
    :catch_0
    move-exception v8

    .line 532
    .local v8, e:Landroid/os/RemoteException;
    const-string v2, "Acquiring %s *** received %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_6
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;-><init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V

    .line 539
    .local v0, recoverTask:Lcom/google/android/finsky/receivers/InstallerTask;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->recover(Landroid/net/Uri;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 540
    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    .line 541
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 545
    :cond_7
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 547
    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    invoke-interface {v2, v1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->releasePackage(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 554
    :cond_8
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 548
    :catch_1
    move-exception v8

    .line 549
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v2, "Releasing %s *** received %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private recoverRunningDownloads(Ljava/util/Collection;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, runningDownloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, oneRecovered:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;

    .line 201
    .local v2, record:Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;
    const-string v4, "Attempt recovery of %s %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    aput-object v6, v5, v7

    iget v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v4, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 204
    .local v3, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    iget v4, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    invoke-direct {p0, v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->recoverDownload(Landroid/net/Uri;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    :cond_0
    const-string v4, "Releasing %s %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    aput-object v6, v5, v7

    iget v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v4, v3}, Lcom/google/android/finsky/download/DownloadQueue;->release(Landroid/net/Uri;)V

    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 212
    .end local v2           #record:Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private releaseMultiUserPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 957
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$5;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->bindToMultiUserCoordinator(Ljava/lang/Runnable;)V

    .line 967
    return-void
.end method

.method private selectNextTask(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;
    .locals 3
    .parameter "hintPackage"

    .prologue
    .line 853
    const/4 v0, 0x0

    .line 854
    .local v0, appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 857
    :cond_0
    if-nez v0, :cond_1

    .line 858
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getAppsToInstall()Ljava/util/List;

    move-result-object v1

    .line 859
    .local v1, appsToInstall:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 860
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    check-cast v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    .line 863
    .end local v1           #appsToInstall:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    .restart local v0       #appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :cond_1
    return-object v0
.end method

.method private selectNextTaskMultiUser(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/finsky/appstate/AppStates$AppState;
    .locals 11
    .parameter "hintPackage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;)",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;"
        }
    .end annotation

    .prologue
    .local p2, appsToInstall:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 878
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 879
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v2

    .line 880
    .local v2, hintApp:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 883
    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    invoke-interface {v4, p1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->acquirePackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 907
    .end local v2           #hintApp:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :goto_0
    return-object v2

    .line 886
    .restart local v2       #hintApp:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :catch_0
    move-exception v1

    .line 888
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "Couldn\'t acquire %s (proceed anyway) received %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 894
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #hintApp:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 895
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    .line 897
    .local v0, appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :try_start_1
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->acquirePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 898
    goto :goto_0

    .line 900
    :cond_1
    const-string v4, "Skipping install of %s - not acquired"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 894
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 901
    :catch_1
    move-exception v1

    .line 903
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v4, "Couldn\'t acquire %s (proceed anyway) received %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v0

    .line 904
    goto :goto_0

    .line 907
    .end local v0           #appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unbindMultiUserCoordinator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1095
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 1096
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    if-nez v1, :cond_0

    .line 1111
    :goto_0
    return-void

    .line 1101
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    if-eqz v1, :cond_1

    .line 1102
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->registerListener(Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;)V

    .line 1103
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    invoke-interface {v1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->releaseAllPackages()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    .line 1109
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1110
    iput-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    goto :goto_0

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Couldn\'t sign out from coordinator *** received %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/google/android/finsky/installer/InstallerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 681
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 682
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 436
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v1

    .line 437
    .local v1, runningTask:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 445
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    .line 446
    return-void

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 443
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->cancelPendingInstall(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 451
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 455
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/AppStates;->getAppsToInstall()Ljava/util/List;

    move-result-object v1

    .line 456
    .local v1, appsToInstall:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    .line 458
    .local v0, appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->cancelPendingInstall(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_0

    .line 460
    .end local v0           #appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    .line 461
    return-void
.end method

.method clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 4
    .parameter "appState"

    .prologue
    const/4 v3, 0x0

    .line 481
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v0, :cond_0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 485
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    .line 487
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 490
    :cond_1
    return-void
.end method

.method public getProgress(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v2

    .line 655
    .local v2, runningTask:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v2, :cond_0

    .line 656
    invoke-virtual {v2}, Lcom/google/android/finsky/receivers/InstallerTask;->getProgress()Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    move-result-object v3

    .line 673
    :goto_0
    return-object v3

    .line 658
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    sget-object v3, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0

    .line 662
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 663
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_3

    .line 664
    const/4 v1, -0x1

    .line 665
    .local v1, installedVersion:I
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v3, :cond_2

    .line 666
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 668
    :cond_2
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 670
    sget-object v3, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0

    .line 673
    .end local v1           #installedVersion:I
    :cond_3
    sget-object v3, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0
.end method

.method public getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v2

    .line 623
    .local v2, runningTask:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {v2}, Lcom/google/android/finsky/receivers/InstallerTask;->getState()Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v3

    .line 641
    :goto_0
    return-object v3

    .line 626
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    .line 630
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 631
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_3

    .line 632
    const/4 v1, -0x1

    .line 633
    .local v1, installedVersion:I
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v3, :cond_2

    .line 634
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 636
    :cond_2
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 638
    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    .line 641
    .end local v1           #installedVersion:I
    :cond_3
    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 2
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/receivers/InstallerImpl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/receivers/InstallerImpl$2;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .locals 7
    .parameter "download"

    .prologue
    const/4 v6, 0x1

    .line 751
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadCancel"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const-string v2, "install.downloadCancel"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "downloadState"

    aput-object v5, v3, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 756
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 759
    :cond_0
    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .locals 6
    .parameter "download"

    .prologue
    .line 738
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadComplete"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const-string v2, "install.downloadComplete"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "downloadState"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 743
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->onComplete(Lcom/google/android/finsky/download/Download;)V

    .line 746
    :cond_0
    return-void
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .locals 6
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    .line 765
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadError"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const-string v2, "install.downloadError"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "downloadState"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "httpStatus"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 771
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->onError(Lcom/google/android/finsky/download/Download;I)V

    .line 774
    :cond_0
    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .locals 6
    .parameter "download"

    .prologue
    const/4 v5, 0x0

    .line 788
    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 789
    .local v1, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, packageName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding notification click, no packageName for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v5, v5, v4}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 797
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 798
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 1143
    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 0
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 1202
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 1195
    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 1207
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 6
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    const/4 v5, -0x1

    .line 1158
    if-nez p2, :cond_0

    .line 1159
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v4, p1}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForPackage(Ljava/lang/String;)V

    .line 1163
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1166
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 1167
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v4, :cond_2

    .line 1168
    const/4 v1, 0x0

    .line 1169
    .local v1, clearDesiredVersion:Z
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1170
    .local v3, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 1184
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1185
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v4, p1, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 1189
    .end local v1           #clearDesiredVersion:Z
    .end local v3           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :cond_2
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1190
    return-void

    .line 1172
    .restart local v1       #clearDesiredVersion:Z
    .restart local v3       #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :cond_3
    if-eqz p2, :cond_4

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v4, :cond_4

    .line 1175
    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v2

    .line 1176
    .local v2, desiredVersion:I
    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v4, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-ge v4, v2, :cond_1

    .line 1177
    const/4 v1, 0x1

    goto :goto_0

    .line 1181
    .end local v2           #desiredVersion:I
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .locals 1
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 780
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V

    .line 783
    :cond_0
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .locals 6
    .parameter "download"

    .prologue
    .line 725
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadStarted"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const-string v2, "install.downloadStarted"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "downloadState"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 730
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->onStart(Lcom/google/android/finsky/download/Download;)V

    .line 733
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 690
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 691
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 692
    return-void
.end method

.method public requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 30
    .parameter "docId"
    .parameter "packageVersion"
    .parameter "deliveryData"
    .parameter "accountName"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "title"
    .parameter "deferred"
    .parameter "reason"

    .prologue
    .line 237
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v3, v4, :cond_1

    .line 238
    const-string v3, "Dropping install request for %s because already installing"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v19

    .line 247
    .local v19, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    move/from16 v24, p2

    .line 248
    .local v24, newVersionCode:I
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-object/from16 v28, v0

    .line 249
    .local v28, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :goto_1
    if-eqz v28, :cond_3

    move-object/from16 v0, v28

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    move/from16 v27, v0

    .line 250
    .local v27, oldVersionCode:I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v27

    if-gt v0, v1, :cond_5

    .line 251
    const-string v3, "Skipping attempt to download %s version %d over version %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v3

    const-string v4, "install.abandonInstall"

    const-string v5, "older-version"

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    const-string v4, "install.abandonInstall"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cidi"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "r"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "older-version"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v3, :cond_4

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v18

    .line 260
    .local v18, flags:I
    :goto_3
    and-int/lit8 v3, v18, 0x1

    if-nez v3, :cond_0

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0700b3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    move-object/from16 v0, p7

    move-object/from16 v1, p1

    invoke-interface {v3, v0, v1, v4, v5}, Lcom/google/android/finsky/utils/Notifier;->showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 248
    .end local v18           #flags:I
    .end local v27           #oldVersionCode:I
    .end local v28           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_2
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 249
    .restart local v28       #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_3
    const/16 v27, -0x1

    goto/16 :goto_2

    .line 259
    .restart local v27       #oldVersionCode:I
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .line 269
    :cond_5
    const-string v3, "Request install of %s v=%d for %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p9, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v3

    const-string v4, "install.request"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-interface {v3, v4, v0, v5, v1}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    const-string v4, "install.request"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cidi"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "r"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "older-version"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    const/16 v29, 0x0

    .line 280
    .local v29, setMobileDataOk:Z
    if-eqz p3, :cond_6

    .line 281
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/finsky/local/AssetUtils;->totalDeliverySize(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;)J

    move-result-wide v20

    .line 282
    .local v20, deliverySize:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v3

    cmp-long v3, v20, v3

    if-gez v3, :cond_a

    const/16 v29, 0x1

    .line 286
    .end local v20           #deliverySize:J
    :cond_6
    :goto_4
    const-wide/16 v8, 0x0

    .line 287
    .local v8, deliveryDataTimestampMs:J
    if-eqz p3, :cond_7

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 298
    :cond_7
    if-eqz v29, :cond_b

    const/16 v18, 0x2

    .line 299
    .restart local v18       #flags:I
    :goto_5
    const/16 v22, 0xc

    .line 301
    .local v22, flagsMask:I
    new-instance v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    sget-object v4, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p4

    move-object/from16 v17, p7

    invoke-direct/range {v2 .. v18}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;IILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    .local v2, newRow:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    if-eqz v19, :cond_8

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v3, :cond_c

    .line 308
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v3, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    .line 344
    :cond_9
    :goto_6
    sget-object v3, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_PENDING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 347
    if-nez p8, :cond_0

    .line 348
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 282
    .end local v2           #newRow:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .end local v8           #deliveryDataTimestampMs:J
    .end local v18           #flags:I
    .end local v22           #flagsMask:I
    .restart local v20       #deliverySize:J
    :cond_a
    const/16 v29, 0x0

    goto :goto_4

    .line 298
    .end local v20           #deliverySize:J
    .restart local v8       #deliveryDataTimestampMs:J
    :cond_b
    const/16 v18, 0x0

    goto :goto_5

    .line 314
    .restart local v2       #newRow:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .restart local v18       #flags:I
    .restart local v22       #flagsMask:I
    :cond_c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v26, v0

    .line 315
    .local v26, oldRow:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    if-eq v3, v4, :cond_d

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 318
    :cond_d
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastNotifiedVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastNotifiedVersion()I

    move-result v4

    if-eq v3, v4, :cond_e

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setLastNotifiedVersion(Ljava/lang/String;I)V

    .line 321
    :cond_e
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1, v8, v9}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    .line 324
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setReferrer(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_10
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_11
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_12
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v25

    .line 335
    .local v25, oldFlags:I
    and-int/lit8 v3, v25, -0xd

    or-int v23, v3, v18

    .line 336
    .local v23, newFlags:I
    move/from16 v0, v25

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 339
    :cond_13
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public setMobileDataAllowed(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 394
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    .line 395
    .local v1, installerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-interface {v1, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 396
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    const/4 v3, 0x0

    .line 397
    .local v3, oldFlags:I
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v3

    .line 401
    :cond_0
    or-int/lit8 v2, v3, 0x2

    .line 402
    .local v2, newFlags:I
    if-eq v2, v3, :cond_1

    .line 403
    invoke-interface {v1, p1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 405
    :cond_1
    return-void
.end method

.method public setVisibility(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "packageName"
    .parameter "doProgress"
    .parameter "doNotifications"

    .prologue
    .line 409
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    .line 410
    .local v1, installerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-interface {v1, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 411
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    const/4 v3, 0x0

    .line 412
    .local v3, oldFlags:I
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v3

    .line 416
    :cond_0
    and-int/lit8 v2, v3, -0x12

    .line 418
    .local v2, newFlags:I
    if-nez p2, :cond_1

    .line 419
    or-int/lit8 v2, v2, 0x10

    .line 421
    :cond_1
    if-nez p3, :cond_2

    .line 422
    or-int/lit8 v2, v2, 0x1

    .line 424
    :cond_2
    if-eq v2, v3, :cond_3

    .line 425
    invoke-interface {v1, p1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 427
    :cond_3
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 137
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/receivers/InstallerImpl$1;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/receivers/InstallerImpl$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method

.method public startDeferredInstalls()V
    .locals 2

    .prologue
    .line 431
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    .line 432
    return-void
.end method

.method taskFinished(Lcom/google/android/finsky/receivers/InstallerTask;)V
    .locals 6
    .parameter "installerTask"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1009
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eq p1, v0, :cond_0

    .line 1010
    const-string v0, "Unexpected (late?) finish of task for %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    :cond_0
    iput-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    .line 1013
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p1, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->releaseMultiUserPackage(Ljava/lang/String;)V

    .line 1016
    :cond_1
    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    .line 1017
    return-void
.end method

.method public uninstallAssetSilently(Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 570
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    const-string v2, "Unexpected empty package name"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v1

    .line 576
    .local v1, runningTask:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v1, :cond_1

    .line 577
    invoke-virtual {v1, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 580
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "uninstall"

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v3, "uninstall"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "cidi"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v2, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 585
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 590
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-virtual {p0, p1, v2, v6}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 597
    invoke-static {p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Skipping uninstall of %s - already uninstalled."

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public uninstallPackagesByUid(Ljava/lang/String;)V
    .locals 12
    .parameter "packageName"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 602
    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 605
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 611
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, packages:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 614
    .local v7, uidPackageName:Ljava/lang/String;
    const-string v8, "Removing package \'%s\' (child of \'%s\')"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v10

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/receivers/InstallerImpl;->uninstallAssetSilently(Ljava/lang/String;)V

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #packages:[Ljava/lang/String;
    .end local v7           #uidPackageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 607
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Skipping uninstall of %s - already uninstalled."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-void
.end method

.method public updateInstalledApps(Ljava/util/List;Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter "reason"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, documentsToUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/api/model/Document;

    .line 366
    .local v12, document:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, packageName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v11

    .line 368
    .local v11, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v11, :cond_0

    iget-object v0, v11, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v0, :cond_1

    .line 369
    :cond_0
    const-string v0, "Cannot update %s because not installed."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getInstallAccount(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;

    move-result-object v10

    .line 374
    .local v10, account:Landroid/accounts/Account;
    if-nez v10, :cond_2

    .line 375
    const-string v0, "Cannot update %s because cannot determine owner."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/finsky/receivers/InstallerImpl;->requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v1           #packageName:Ljava/lang/String;
    .end local v10           #account:Landroid/accounts/Account;
    .end local v11           #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v12           #document:Lcom/google/android/finsky/api/model/Document;
    :cond_3
    return-void
.end method
