.class public Lcom/google/android/finsky/appstate/AppStates;
.super Ljava/lang/Object;
.source "AppStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/AppStates$AppState;
    }
.end annotation


# instance fields
.field private final mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

.field private final mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Lcom/google/android/finsky/appstate/PackageStateRepository;)V
    .locals 0
    .parameter "stateStore"
    .parameter "packageManager"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    .line 55
    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    .line 56
    return-void
.end method


# virtual methods
.method public blockingLoad()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->load()V

    .line 74
    return-void
.end method

.method public getAllBlocking()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 150
    .local v4, packageStateMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    .local v0, appStates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    iget-object v5, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-interface {v5}, Lcom/google/android/finsky/appstate/PackageStateRepository;->getAllBlocking()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 153
    .local v3, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    iget-object v5, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    .end local v3           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->getAll()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 157
    .local v2, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 158
    .restart local v3       #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    new-instance v5, Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Lcom/google/android/finsky/appstate/AppStates$AppState;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    .end local v2           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .end local v3           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 162
    .restart local v3       #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    new-instance v5, Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v6, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v7}, Lcom/google/android/finsky/appstate/AppStates$AppState;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    .end local v3           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_2
    return-object v0
.end method

.method public getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 109
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-interface {v2, p1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    .line 110
    .local v1, pkgState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    new-instance v2, Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/finsky/appstate/AppStates$AppState;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    .line 113
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAppsToInstall()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 122
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    iget-object v5, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->getAll()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 123
    .local v2, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 126
    iget-object v5, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v3

    .line 127
    .local v3, packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    iget v6, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-le v5, v6, :cond_0

    .line 131
    :cond_1
    new-instance v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3, v2}, Lcom/google/android/finsky/appstate/AppStates$AppState;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    .line 133
    .local v0, app:Lcom/google/android/finsky/appstate/AppStates$AppState;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v0           #app:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v2           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .end local v3           #packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_2
    return-object v4
.end method

.method public getInstalledAndOwnedBlocking(Lcom/google/android/finsky/library/Libraries;)Ljava/util/Collection;
    .locals 6
    .parameter "libraries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/library/Libraries;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 173
    .local v3, result:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/AppStates;->getAllBlocking()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/appstate/AppStates$AppState;

    .line 174
    .local v1, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    iget-object v4, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v5, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/android/finsky/library/Libraries;->getAppEntries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, appEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0           #appEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    .end local v1           #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :cond_1
    return-object v3
.end method

.method public getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    return-object v0
.end method

.method public getOwnedBlocking(Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;
    .locals 7
    .parameter "libraries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/library/Libraries;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 192
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/AppStates;->getAllBlocking()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/appstate/AppStates$AppState;

    .line 193
    .local v1, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    iget-object v4, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 194
    .local v4, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-nez v4, :cond_1

    sget-object v2, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    .line 196
    .local v2, certificateHashes:[Ljava/lang/String;
    :goto_1
    iget-object v6, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6, v2}, Lcom/google/android/finsky/library/Libraries;->getAppEntries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, appEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 199
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v0           #appEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    .end local v2           #certificateHashes:[Ljava/lang/String;
    :cond_1
    iget-object v2, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    goto :goto_1

    .line 202
    .end local v1           #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v4           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_2
    return-object v5
.end method

.method public getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->load(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
