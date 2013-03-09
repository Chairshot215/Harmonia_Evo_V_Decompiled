.class final Lcom/google/android/finsky/utils/IntentUtils$2;
.super Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Lcom/google/android/finsky/utils/IntentUtils$1;)V

    return-void
.end method

.method private buildItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"
    .parameter "doc"
    .parameter "action"
    .parameter "accountName"

    .prologue
    .line 200
    const-string v1, "com.android.vending"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$2;->setDefaultFlags(Landroid/content/Intent;)V

    .line 203
    const-string v1, "account"

    invoke-static {v0, v1, p4}, Lcom/google/android/finsky/utils/IntentUtils$2;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "asset_package"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    return-object v0
.end method


# virtual methods
.method public buildManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 230
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/finsky/utils/IntentUtils$2;->buildItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "pm"
    .parameter "accountName"

    .prologue
    .line 191
    const-string v1, "com.android.vending"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$2;->setDefaultFlags(Landroid/content/Intent;)V

    .line 194
    const-string v1, "account"

    invoke-static {v0, v1, p2}, Lcom/google/android/finsky/utils/IntentUtils$2;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 210
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 212
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    const/4 v2, 0x0

    .line 213
    .local v2, externalReferrer:Ljava/lang/String;
    const/4 v1, 0x0

    .line 214
    .local v1, continueUrl:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v5, :cond_0

    .line 215
    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getReferrer()Ljava/lang/String;

    move-result-object v2

    .line 216
    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_0
    #calls: Lcom/google/android/finsky/utils/IntentUtils;->createLaunchIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    invoke-static {v4, v2, v1, p1}, Lcom/google/android/finsky/utils/IntentUtils;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v3

    .line 219
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 222
    const-string v5, "android.intent.action.RUN"

    invoke-direct {p0, p1, p2, v5, p3}, Lcom/google/android/finsky/utils/IntentUtils$2;->buildItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 224
    :cond_1
    invoke-static {v3}, Lcom/google/android/finsky/utils/IntentUtils$2;->setDefaultFlags(Landroid/content/Intent;)V

    .line 225
    return-object v3
.end method
