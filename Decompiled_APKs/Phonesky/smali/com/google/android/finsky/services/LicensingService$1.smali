.class Lcom/google/android/finsky/services/LicensingService$1;
.super Lcom/android/vending/licensing/ILicensingService$Stub;
.source "LicensingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/LicensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/LicensingService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/LicensingService;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-direct {p0}, Lcom/android/vending/licensing/ILicensingService$Stub;-><init>()V

    return-void
.end method

.method private checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;)V
    .locals 4
    .parameter "nonce"
    .parameter "packageName"
    .parameter "listener"
    .parameter "versionCode"
    .parameter "acountName"

    .prologue
    .line 114
    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;-><init>()V

    .line 115
    .local v0, licenseRequest:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    invoke-virtual {v0, p3}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 116
    invoke-virtual {v0, p5}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 117
    invoke-virtual {v0, p1, p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 119
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/services/LicensingService$1$1;

    invoke-direct {v2, p0, p4}, Lcom/google/android/finsky/services/LicensingService$1$1;-><init>(Lcom/google/android/finsky/services/LicensingService$1;Lcom/android/vending/licensing/ILicenseResultListener;)V

    new-instance v3, Lcom/google/android/finsky/services/LicensingService$1$2;

    invoke-direct {v3, p0, p4}, Lcom/google/android/finsky/services/LicensingService$1$2;-><init>(Lcom/google/android/finsky/services/LicensingService$1;Lcom/android/vending/licensing/ILicenseResultListener;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/vending/remoting/api/VendingApi;->checkLicense(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 135
    return-void
.end method


# virtual methods
.method public checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V
    .locals 15
    .parameter "nonce"
    .parameter "packageName"
    .parameter "listener"

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-virtual {v1}, Lcom/google/android/finsky/services/LicensingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 60
    .local v14, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v1, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Lcom/google/android/finsky/services/LicensingService$1;->getCallingUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 61
    const/16 v1, 0x103

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    #calls: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v14           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 64
    .restart local v14       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    iget v6, v14, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v6, versionCode:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v9

    .line 73
    .local v9, appStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    .line 75
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v8

    .line 76
    .local v8, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v8, :cond_1

    iget-object v1, v8, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, v8, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/finsky/services/LicensingService$1;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v6           #versionCode:I
    .end local v8           #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v9           #appStates:Lcom/google/android/finsky/appstate/AppStates;
    .end local v14           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v10

    .line 66
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v1, 0x102

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    #calls: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #versionCode:I
    .restart local v8       #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .restart local v9       #appStates:Lcom/google/android/finsky/appstate/AppStates;
    .restart local v14       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v12

    .line 85
    .local v12, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-virtual {v12}, Lcom/google/android/finsky/library/Libraries;->blockingLoad()V

    .line 87
    iget-object v1, v8, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v1, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 89
    .local v13, ownerAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v7, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/finsky/services/LicensingService$1;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-static {v1}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v11

    .line 103
    .local v11, firstAccount:Landroid/accounts/Account;
    if-eqz v11, :cond_3

    .line 104
    iget-object v7, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/finsky/services/LicensingService$1;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    #calls: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
