.class public Lcom/google/android/finsky/activities/AppActionAnalyzer;
.super Ljava/lang/Object;
.source "AppActionAnalyzer.java"


# instance fields
.field public installedVersion:I

.field public isActiveDeviceAdmin:Z

.field public isContinueLaunch:Z

.field public isDisabled:Z

.field public isDisabledByUser:Z

.field public isInstalled:Z

.field public isInstalledOwnedPackage:Z

.field public isInstalledSystemApp:Z

.field public isLaunchable:Z

.field public isRefundable:Z

.field public isUninstallable:Z

.field public isUpdatedSystemApp:Z

.field public refundAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V
    .locals 12
    .parameter "packageName"
    .parameter "appStates"
    .parameter "libraries"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    .line 35
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    .line 36
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    .line 37
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUpdatedSystemApp:Z

    .line 38
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    .line 39
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    .line 40
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    .line 43
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    .line 44
    iput-object v4, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    .line 47
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    .line 48
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    .line 49
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    .line 50
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabledByUser:Z

    .line 54
    invoke-virtual {p2, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v1

    .line 57
    .local v1, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v1, :cond_1

    iget-object v8, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v8, :cond_1

    .line 59
    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    .line 61
    iget-object v7, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 62
    .local v7, packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    iget v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iput v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    .line 64
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    .line 65
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUpdatedSystemApp:Z

    .line 66
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isActiveDeviceAdmin:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    .line 67
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUpdatedSystemApp:Z

    if-eqz v8, :cond_5

    :cond_0
    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    .line 69
    invoke-virtual {p2}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->canLaunch(Ljava/lang/String;)Z

    move-result v2

    .line 70
    .local v2, canLaunch:Z
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    .line 71
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabledByUser:Z

    .line 72
    if-eqz v2, :cond_6

    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-nez v8, :cond_6

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    .line 77
    .end local v2           #canLaunch:Z
    .end local v7           #packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_1
    sget-object v3, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    .line 78
    .local v3, certificateHashes:[Ljava/lang/String;
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v8, :cond_2

    .line 79
    iget-object v8, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v3, v8, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    .line 81
    :cond_2
    invoke-virtual {p3, p1, v3}, Lcom/google/android/finsky/library/Libraries;->getAppEntries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 83
    .local v5, libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    move v6, v9

    .line 84
    .local v6, ownedByAnyAccount:Z
    :goto_2
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    move v8, v9

    :goto_3
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    .line 85
    if-nez v1, :cond_9

    .line 86
    .local v4, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :goto_4
    invoke-static {v4, v5}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    .line 87
    iget-object v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    if-eqz v8, :cond_a

    move v8, v9

    :goto_5
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    .line 90
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v8, :cond_3

    if-nez v6, :cond_3

    .line 91
    invoke-virtual {p3, p1}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, anyCertificateOwners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 93
    const-string v8, "%s is installed but certificate mistmatch"

    new-array v11, v9, [Ljava/lang/Object;

    aput-object p1, v11, v10

    invoke-static {v8, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .end local v0           #anyCertificateOwners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_3
    if-eqz v1, :cond_4

    iget-object v8, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v8, :cond_4

    .line 98
    iget-object v8, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    :goto_6
    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    .line 100
    :cond_4
    return-void

    .end local v3           #certificateHashes:[Ljava/lang/String;
    .end local v4           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .end local v5           #libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    .end local v6           #ownedByAnyAccount:Z
    .restart local v7       #packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_5
    move v8, v10

    .line 67
    goto :goto_0

    .restart local v2       #canLaunch:Z
    :cond_6
    move v8, v10

    .line 72
    goto :goto_1

    .end local v2           #canLaunch:Z
    .end local v7           #packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    .restart local v3       #certificateHashes:[Ljava/lang/String;
    .restart local v5       #libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    :cond_7
    move v6, v10

    .line 83
    goto :goto_2

    .restart local v6       #ownedByAnyAccount:Z
    :cond_8
    move v8, v10

    .line 84
    goto :goto_3

    .line 85
    :cond_9
    iget-object v4, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    goto :goto_4

    .restart local v4       #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :cond_a
    move v8, v10

    .line 87
    goto :goto_5

    :cond_b
    move v9, v10

    .line 98
    goto :goto_6
.end method

.method public static canRemoveFromLibrary(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 6
    .parameter "doc"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 215
    const-string v3, "Method invalid for non-ANDROID_APP docs."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :cond_0
    :goto_0
    return v2

    .line 218
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    .line 219
    .local v1, libraries:Lcom/google/android/finsky/library/Libraries;
    new-instance v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    .line 221
    .local v0, analyzer:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    iget-boolean v4, v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-nez v4, :cond_0

    .line 224
    iget-boolean v4, v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-nez v4, :cond_0

    .line 227
    invoke-static {v1, p0}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 230
    goto :goto_0
.end method

.method public static getInstallAccount(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;
    .locals 6
    .parameter "packageName"
    .parameter "preferredAccount"
    .parameter "appStates"
    .parameter "libraries"

    .prologue
    .line 115
    invoke-virtual {p3, p0}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 116
    .local v3, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 119
    .restart local p1
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    .line 120
    .local v1, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    if-eqz v1, :cond_3

    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 122
    .local v2, owner:Landroid/accounts/Account;
    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p1, v2

    .line 123
    goto :goto_0

    .line 127
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #owner:Landroid/accounts/Account;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    move-object p1, v4

    goto :goto_0
.end method

.method private static getRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter "installerData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryAppEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->internalGetRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static internalGetRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;J)Ljava/lang/String;
    .locals 8
    .parameter "installerData"
    .parameter
    .parameter "nowMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryAppEntry;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    const-wide/16 v1, 0x0

    .line 142
    .local v1, firstDownloadMs:J
    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFirstDownloadMs()J

    move-result-wide v1

    .line 145
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryAppEntry;

    .line 147
    .local v0, appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    iget-wide v4, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPreDeliveryEndtimeMs:J

    .line 148
    .local v4, refundEndtimeMs:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-eqz v6, :cond_2

    .line 149
    iget-wide v6, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPostDeliveryWindowMs:J

    add-long/2addr v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 152
    :cond_2
    cmp-long v6, v4, p2

    if-ltz v6, :cond_1

    .line 153
    iget-object v6, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->accountName:Ljava/lang/String;

    .line 156
    .end local v0           #appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    .end local v4           #refundEndtimeMs:J
    :goto_0
    return-object v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isMultiUserCertificateConflict(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 11
    .parameter "document"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 171
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getUsers()Lcom/google/android/finsky/utils/Users;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/utils/Users;->supportsMultiUser()Z

    move-result v9

    if-nez v9, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v8

    .line 175
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v9

    if-nez v9, :cond_0

    .line 179
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 181
    .local v6, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2040

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 184
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v9

    .line 185
    .local v5, numSignatures:I
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getCertificateHashCount()I

    move-result v9

    if-eq v5, v9, :cond_2

    move v8, v7

    .line 186
    goto :goto_0

    .line 190
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 191
    .local v4, installedHashes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 192
    .local v0, documentHashes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 193
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getCertificateHash(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_4

    :goto_2
    move v8, v7

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_2

    .line 197
    .end local v0           #documentHashes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #installedHashes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5           #numSignatures:I
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
