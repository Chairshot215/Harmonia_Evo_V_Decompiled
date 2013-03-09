.class public Lcom/google/android/finsky/receivers/RemoveAssetReceiver;
.super Lcom/google/android/finsky/download/DownloadReceiver;
.source "RemoveAssetReceiver.java"


# static fields
.field private static sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->finishOnReceive(Landroid/content/Intent;)V

    return-void
.end method

.method private finishOnReceive(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 69
    const-string v4, "asset_package"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "asset_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, assetName:Ljava/lang/String;
    const-string v4, "asset_malicious"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 74
    .local v2, isMalicious:Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    const-string v4, "Unexpected empty package name"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 83
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    invoke-direct {p0, v3, v2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->removePackage(Ljava/lang/String;Z)V

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->notifyRemovingKnownApp(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_0
.end method

.method public static initialize(Lcom/google/android/finsky/utils/Notifier;)V
    .locals 0
    .parameter "notificationHelper"

    .prologue
    .line 40
    sput-object p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    .line 41
    return-void
.end method

.method private notifyRemovingKnownApp(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 1
    .parameter "packageName"
    .parameter "assetName"
    .parameter "malicious"
    .parameter "appState"

    .prologue
    .line 97
    iget-object v0, p4, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_0

    .line 100
    if-eqz p3, :cond_1

    .line 101
    sget-object v0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v0, p2, p1}, Lcom/google/android/finsky/utils/Notifier;->showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-object v0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v0, p2, p1}, Lcom/google/android/finsky/utils/Notifier;->showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removePackage(Ljava/lang/String;Z)V
    .locals 12
    .parameter "packageName"
    .parameter "isMalicious"

    .prologue
    .line 109
    const-string v8, "Removing package \'%s\'. Malicious=\'%s\'"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    if-eqz p2, :cond_1

    .line 112
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 115
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 121
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 123
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

    .line 124
    .local v7, uidPackageName:Ljava/lang/String;
    const-string v8, "Removing package \'%s\' (child of \'%s\')"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-static {v7}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #packages:[Ljava/lang/String;
    .end local v7           #uidPackageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "\'%s\' not found in PM."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return-void

    .line 129
    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->setResultCode(I)V

    .line 50
    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, fromAddress:Ljava/lang/String;
    const-string v1, "google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "REMOVE_ASSET"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;-><init>(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
