.class public Lcom/google/android/finsky/appstate/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private final mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/DfeApiProvider;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;)V
    .locals 0
    .parameter "context"
    .parameter "libraries"
    .parameter "appStates"
    .parameter "dfeApiProvider"
    .parameter "installPolicies"
    .parameter "installer"
    .parameter "notifier"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 48
    iput-object p3, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 49
    iput-object p4, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;

    .line 50
    iput-object p5, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 51
    iput-object p6, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 52
    iput-object p7, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/library/Libraries;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/appstate/AppStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/appstate/UpdateChecker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/appstate/UpdateChecker;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/appstate/UpdateChecker;->handleUpdates(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/api/DfeApiProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;

    return-object v0
.end method

.method private handleUpdates(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3, p2}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsWithUpdates(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, appsWithUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    sget-object v3, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3}, Lcom/google/android/finsky/installer/InstallPolicies;->isWifiNetwork()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsEligibleForAutoUpdate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 147
    .local v2, autoUpdateApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    const-string v4, "auto_update"

    invoke-interface {v3, v2, v4}, Lcom/google/android/finsky/receivers/Installer;->updateInstalledApps(Ljava/util/List;Ljava/lang/String;)V

    .line 148
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 150
    .end local v2           #autoUpdateApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsEligibleForNotification(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, appsToNotify:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->showManualUpdateNotifications(Ljava/util/List;Ljava/util/List;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->markAppsAsNotified(Ljava/util/List;)V

    .line 155
    return-void
.end method

.method private markAppsAsNotified(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, docsNotified:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 180
    .local v1, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 181
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, packageName:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v6}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v3

    .line 184
    .local v3, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v5

    .line 185
    .local v5, version:I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastNotifiedVersion()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 187
    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v6}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setLastNotifiedVersion(Ljava/lang/String;I)V

    goto :goto_0

    .line 190
    .end local v0           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v1           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #version:I
    :cond_2
    return-void
.end method

.method private showManualUpdateNotifications(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, manualUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .local p2, appsToNotify:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 166
    .local v1, updateCount:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    .local v0, notifyCount:I
    if-lez v0, :cond_0

    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "Notifying user that [%d/%d] applications have updates."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    if-ne v0, v6, :cond_1

    .line 171
    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v3, v2}, Lcom/google/android/finsky/utils/Notifier;->showSingleUpdateAvailableMessage(Lcom/google/android/finsky/api/model/Document;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v2, p2, v1}, Lcom/google/android/finsky/utils/Notifier;->showUpdatesAvailableMessage(Ljava/util/List;I)V

    goto :goto_0
.end method


# virtual methods
.method public checkForUpdates(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    const/4 v7, 0x0

    .line 69
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 70
    .local v6, account:Landroid/accounts/Account;
    if-nez v6, :cond_1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const-string v0, "Require loaded app states to perform update check."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    if-eqz p2, :cond_2

    .line 79
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_2
    move-object v3, v6

    .line 84
    .local v3, finalAccount:Landroid/accounts/Account;
    new-instance v2, Lcom/google/android/finsky/appstate/GmsCoreHelper;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/appstate/GmsCoreHelper;-><init>(Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V

    .line 87
    .local v2, gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;
    new-instance v0, Lcom/google/android/finsky/appstate/UpdateChecker$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/appstate/UpdateChecker$1;-><init>(Lcom/google/android/finsky/appstate/UpdateChecker;Lcom/google/android/finsky/appstate/GmsCoreHelper;Landroid/accounts/Account;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/UpdateChecker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
