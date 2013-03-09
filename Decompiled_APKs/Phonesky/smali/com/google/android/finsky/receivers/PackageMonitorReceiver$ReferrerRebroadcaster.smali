.class Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;
.super Ljava/lang/Object;
.source "PackageMonitorReceiver.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferrerRebroadcaster"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;-><init>()V

    return-void
.end method

.method private broadcastInstallReferrer(Ljava/lang/String;Z)V
    .locals 15
    .parameter "packageName"
    .parameter "packageAdded"

    .prologue
    .line 235
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    .line 236
    .local v3, appStates:Lcom/google/android/finsky/appstate/AppStates;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v2

    .line 237
    .local v2, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v2, :cond_0

    iget-object v12, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v12, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v12, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v12, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getImmediateStartNeeded()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v7, 0x1

    .line 244
    .local v7, forceLaunch:Z
    :goto_1
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xc

    if-lt v12, v13, :cond_7

    const/4 v11, 0x1

    .line 253
    .local v11, usesFrozenApps:Z
    :goto_2
    if-nez v7, :cond_2

    move/from16 v0, p2

    if-eq v11, v0, :cond_8

    :cond_2
    const/4 v10, 0x1

    .line 254
    .local v10, sendIntent:Z
    :goto_3
    if-eqz v10, :cond_0

    .line 258
    iget-object v12, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getReferrer()Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, externalReferral:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 261
    const-string v6, "forced-launch"

    .line 264
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 266
    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, decodedUrl:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    .line 269
    .local v4, context:Landroid/content/Context;
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v8, newIntent:Landroid/content/Intent;
    if-eqz v7, :cond_4

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xd

    if-lt v12, v13, :cond_4

    .line 271
    const/16 v12, 0x20

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    const-string v12, "Forcing %s to wake up"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :cond_4
    const-string v12, "referrer"

    invoke-virtual {v8, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 277
    .local v9, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v9}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;->getActivityNameForBroadcast(Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, activityName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 283
    invoke-virtual {v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setReferrer(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    .end local v1           #activityName:Ljava/lang/String;
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #decodedUrl:Ljava/lang/String;
    .end local v6           #externalReferral:Ljava/lang/String;
    .end local v7           #forceLaunch:Z
    .end local v8           #newIntent:Landroid/content/Intent;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #sendIntent:Z
    .end local v11           #usesFrozenApps:Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 244
    .restart local v7       #forceLaunch:Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 253
    .restart local v11       #usesFrozenApps:Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private getActivityNameForBroadcast(Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 5
    .parameter "packageName"
    .parameter "intent"
    .parameter "pm"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, activityName:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p3, p2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 298
    .local v3, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 299
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 300
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 306
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;->broadcastInstallReferrer(Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 0
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 218
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 215
    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;->broadcastInstallReferrer(Ljava/lang/String;Z)V

    .line 223
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    .line 212
    return-void
.end method
