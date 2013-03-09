.class public Lcom/google/android/finsky/appstate/AppStatesReplicator;
.super Ljava/lang/Object;
.source "AppStatesReplicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;
    }
.end annotation


# instance fields
.field private final mAccounts:Lcom/google/android/finsky/library/Accounts;

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mReplicationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendingApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/Accounts;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/vending/remoting/api/VendingApiFactory;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "accounts"
    .parameter "libraries"
    .parameter "appStates"
    .parameter "vendingApiFactory"
    .parameter "notificationHandler"
    .parameter "backgroundHandler"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    .line 73
    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 74
    iput-object p3, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 75
    iput-object p4, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mVendingApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    .line 76
    iput-object p5, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mNotificationHandler:Landroid/os/Handler;

    .line 77
    iput-object p6, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mBackgroundHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/appstate/AppStatesReplicator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/appstate/AppStatesReplicator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->internalReplicate()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/appstate/AppStatesReplicator;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->handleContentSyncResponse(III)V

    return-void
.end method

.method private static getAccountList(Ljava/util/Map;Landroid/accounts/Account;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;>;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, accountLists:Ljava/util/Map;,"Ljava/util/Map<Landroid/accounts/Account;Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 347
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 349
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_0
    return-object v0
.end method

.method private declared-synchronized handleContentSyncResponse(III)V
    .locals 4
    .parameter "expectedCount"
    .parameter "finished"
    .parameter "successful"

    .prologue
    .line 240
    monitor-enter p0

    if-ne p3, p1, :cond_2

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

    .line 242
    .local v1, replicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;
    if-eqz v1, :cond_0

    .line 243
    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mNotificationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 240
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #replicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 251
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private internalReplicate()V
    .locals 33

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->getAllBlocking()Ljava/util/Collection;

    move-result-object v29

    .line 132
    .local v29, all:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v32

    .line 133
    .local v32, statesByAccount:Ljava/util/Map;,"Ljava/util/Map<Landroid/accounts/Account;Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 134
    .local v6, systemApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->bucketAppsByOwner(Ljava/util/Collection;Ljava/util/Map;Ljava/util/List;)I

    move-result v10

    .line 135
    .local v10, sideloadedCount:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->computeHash(Ljava/util/Collection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 138
    .local v16, currentSystemAppsHash:Ljava/lang/Integer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 141
    .local v11, nowMs:J
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 143
    .local v21, accountsToReplicate:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v19, v3

    .line 145
    .local v19, finishedReplications:[I
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v20, v3

    .line 146
    .local v20, successfulReplications:[I
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 147
    .local v26, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v27

    .line 150
    .local v27, responseListeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/volley/Response$Listener<Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;>;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v3}, Lcom/google/android/finsky/library/Accounts;->getAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/accounts/Account;

    .line 151
    .local v28, account:Landroid/accounts/Account;
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 152
    .local v9, accountApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->computeHash(Ljava/util/Collection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 153
    .local v18, currentAccountAppsHash:Ljava/lang/Integer;
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->replicatedAccountAppsHash:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v17

    .line 155
    .local v17, accountAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->replicatedSystemAppsHash:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v15

    .line 157
    .local v15, systemAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 158
    .local v5, replicatedSystemAppsHash:I
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 160
    .local v8, replicatedAccountAppsHash:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->makeContentSyncRequest(IILjava/util/List;IILjava/util/List;IJ)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v31

    .line 163
    .local v31, request:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    if-nez v31, :cond_1

    .line 164
    sget-boolean v3, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 165
    const-string v3, "No installation states replication required: account=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v28

    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_1
    sget-boolean v3, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 171
    const-string v3, "Replicating installation states: account=%s, numSystemApps=%d, numAccountApps=%d, numSideloaded=%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v28

    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v7

    const/4 v7, 0x1

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getSystemAppCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v7

    const/4 v7, 0x2

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getAssetInstallStateCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v7

    const/4 v7, 0x3

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getSideloadedAppCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_2
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v13, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v21}, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/Integer;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/Integer;[I[ILjava/util/List;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v5           #replicatedSystemAppsHash:I
    .end local v8           #replicatedAccountAppsHash:I
    .end local v9           #accountApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    .end local v15           #systemAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/Integer;>;"
    .end local v17           #accountAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/Integer;>;"
    .end local v18           #currentAccountAppsHash:Ljava/lang/Integer;
    .end local v28           #account:Landroid/accounts/Account;
    .end local v31           #request:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    :cond_3
    move-object/from16 v22, p0

    move-object/from16 v23, v21

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    .line 194
    invoke-direct/range {v22 .. v27}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->performRequests(Ljava/util/List;[I[ILjava/util/List;Ljava/util/List;)V

    .line 196
    return-void
.end method

.method private makeInstallState(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 3
    .parameter "packageState"
    .parameter "nowMs"

    .prologue
    .line 364
    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;-><init>()V

    .line 365
    .local v0, assetInstallState:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    iget-object v1, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v1, v2}, Lcom/google/android/finsky/local/AssetUtils;->makeAssetId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 367
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetState(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 368
    invoke-virtual {v0, p2, p3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setInstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 369
    iget-object v1, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 370
    iget v1, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 372
    return-object v0
.end method

.method private makeSystemApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    .locals 6
    .parameter "packageState"

    .prologue
    .line 376
    new-instance v4, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    invoke-direct {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;-><init>()V

    .line 377
    .local v4, systemApp:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    iget-object v5, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    .line 378
    iget v5, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-virtual {v4, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    .line 379
    iget-object v0, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 380
    .local v1, certificateHash:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->addCertificateHash(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v1           #certificateHash:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->getCertificateHashList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 385
    return-object v4
.end method

.method private performRequests(Ljava/util/List;[I[ILjava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;[I[I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-direct {p0, v4, v4, v4}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->handleContentSyncResponse(III)V

    .line 233
    :cond_0
    return-void

    :cond_1
    move v3, v4

    .line 206
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 207
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 208
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 209
    const-string v1, "ContentSyncRequestProto for account %s:"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const-string v2, "ContentSyncRequestProto"

    const-class v5, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/micro/MessageMicro;

    invoke-static {v2, v5, v1}, Lcom/google/android/volley/MicroProtoPrinter;->prettyPrint(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;)Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    move v1, v4

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v2, v1

    .line 215
    const-string v7, ": %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v4

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_2
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 219
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Response$Listener;

    .line 221
    iget-object v5, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mVendingApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/google/android/vending/remoting/api/VendingApiFactory;->getApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    .line 222
    new-instance v5, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;

    invoke-direct {v5, p0, p2, p1, p3}, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;[ILjava/util/List;[I)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/vending/remoting/api/VendingApi;->syncContent(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 206
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method


# virtual methods
.method bucketAppsByOwner(Ljava/util/Collection;Ljava/util/Map;Ljava/util/List;)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, packageStates:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    .local p2, byAccount:Ljava/util/Map;,"Ljava/util/Map<Landroid/accounts/Account;Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;>;"
    .local p3, systemApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    const/4 v7, 0x0

    .line 310
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 311
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Buckets must be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 314
    :cond_1
    const/4 v6, 0x0

    .line 315
    .local v6, unaccounted:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 318
    .local v5, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    iget-boolean v8, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    if-eqz v8, :cond_5

    :cond_3
    const/4 v2, 0x1

    .line 319
    .local v2, isUserApp:Z
    :goto_1
    if-eqz v2, :cond_4

    .line 320
    iget-object v8, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v9, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    iget-object v10, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 322
    .local v4, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 323
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 324
    .local v3, owner:Landroid/accounts/Account;
    invoke-static {p2, v3}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->getAccountList(Ljava/util/Map;Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v3           #owner:Landroid/accounts/Account;
    .end local v4           #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_4
    :goto_2
    iget-boolean v8, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eqz v8, :cond_2

    iget-boolean v8, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-nez v8, :cond_2

    .line 332
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2           #isUserApp:Z
    :cond_5
    move v2, v7

    .line 318
    goto :goto_1

    .line 326
    .restart local v2       #isUserApp:Z
    .restart local v4       #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 336
    .end local v2           #isUserApp:Z
    .end local v4           #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v5           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_7
    iget-object v7, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v7}, Lcom/google/android/finsky/library/Accounts;->getAccounts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 337
    .local v0, account:Landroid/accounts/Account;
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-interface {p2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 341
    .end local v0           #account:Landroid/accounts/Account;
    :cond_9
    return v6
.end method

.method computeHash(Ljava/util/Collection;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, packageStates:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Ljava/lang/Runnable;)V

    .line 94
    .local v0, countdown:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    .line 95
    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method makeContentSyncRequest(IILjava/util/List;IILjava/util/List;IJ)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .locals 6
    .parameter "currentSystemAppsHash"
    .parameter "replicatedSystemAppsHash"
    .parameter
    .parameter "currentAccountAppsHash"
    .parameter "replicatedAccountAppsHash"
    .parameter
    .parameter "sideloadedAppCount"
    .parameter "nowMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;IJ)",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;"
        }
    .end annotation

    .prologue
    .local p3, systemApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    .local p6, accountApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 260
    if-eq p1, p2, :cond_3

    move v2, v5

    .line 264
    .local v2, needsSystemAppsUpload:Z
    :goto_0
    if-nez v2, :cond_0

    if-eq p4, p5, :cond_1

    :cond_0
    move v1, v5

    .line 268
    .local v1, needsAccountAppsUpload:Z
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_6

    .line 269
    :cond_2
    new-instance v4, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    invoke-direct {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;-><init>()V

    .line 271
    .local v4, request:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    if-eqz p6, :cond_4

    .line 272
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 273
    .local v3, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    invoke-direct {p0, v3, p8, p9}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->makeInstallState(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->addAssetInstallState(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #needsAccountAppsUpload:Z
    .end local v2           #needsSystemAppsUpload:Z
    .end local v3           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    .end local v4           #request:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    :cond_3
    move v2, v1

    .line 260
    goto :goto_0

    .line 277
    .restart local v1       #needsAccountAppsUpload:Z
    .restart local v2       #needsSystemAppsUpload:Z
    .restart local v4       #request:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    :cond_4
    if-eqz v2, :cond_5

    .line 278
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 279
    .restart local v3       #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    invoke-direct {p0, v3}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->makeSystemApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->addSystemApp(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    goto :goto_2

    .line 282
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_5
    invoke-virtual {v4, p7}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->setSideloadedAppCount(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 285
    .end local v4           #request:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    :goto_3
    return-object v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public declared-synchronized replicate(Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/AppStatesReplicator$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/appstate/AppStatesReplicator$2;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
