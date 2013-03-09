.class public abstract Lcom/google/android/finsky/activities/AuthenticatedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AuthenticatedActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;


# static fields
.field private static final ADD_ACCOUNT_SUPPORTS_CUSTOM_MESSAGE:Z

.field protected static sSwitchToMyApps:Z


# instance fields
.field private final mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mJustReturnedFromDialog:Z

.field private final mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRestartRequired:Z

.field mStateSaved:Z

.field private mUploadDeviceConfigRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mWaitingForUserInput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->ADD_ACCOUNT_SUPPORTS_CUSTOM_MESSAGE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mHandler:Landroid/os/Handler;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mJustReturnedFromDialog:Z

    .line 912
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    .line 924
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mUploadDeviceConfigRequest:Lcom/android/volley/Request;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isAccountSwitchNeeded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->checkTosAcceptanceAndContinue(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->loadTocAndContinue(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V

    return-void
.end method

.method static synthetic access$502(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    return p1
.end method

.method private addAccount()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 934
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 935
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    const-string v2, "androidmarket"

    invoke-static {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v6, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    move-object v5, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 959
    return-void
.end method

.method private checkTosAcceptanceAndContinue(Z)V
    .locals 1
    .parameter "shouldHandleIntent"

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->displayTos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->fireOnReadyRunnable(Z)V

    .line 847
    :cond_0
    return-void
.end method

.method private static convertToStringArray([Landroid/accounts/Account;)[Ljava/lang/String;
    .locals 3
    .parameter "accounts"

    .prologue
    .line 515
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/String;

    .line 516
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 517
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_0
    return-object v0
.end method

.method public static createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 962
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 963
    .local v0, addAccountOptions:Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 965
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 966
    const-string v2, "introMessage"

    const v3, 0x7f0700e9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v2, "allowSkip"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 969
    return-object v0
.end method

.method private determineAccount()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "authAccount"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, accountNameFromIntent:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 536
    invoke-static {v2, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 540
    .local v1, accountFromIntent:Landroid/accounts/Account;
    if-nez v1, :cond_1

    .line 541
    const-string v5, "This app was called with an intent that specified the account %s, which is not a valid account on this device"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    move-object v3, v4

    .line 567
    .end local v1           #accountFromIntent:Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v3

    .line 546
    .restart local v1       #accountFromIntent:Landroid/accounts/Account;
    :cond_1
    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 550
    .end local v1           #accountFromIntent:Landroid/accounts/Account;
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, currentAccount:Ljava/lang/String;
    invoke-static {v3, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 560
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 561
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_3

    .line 563
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 567
    goto :goto_0
.end method

.method private displayTos()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 577
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->determineAccount()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, account:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/finsky/activities/TosActivity;->requiresAcceptance(Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 580
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/google/android/finsky/activities/TosActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Landroid/content/Intent;

    move-result-object v1

    .line 581
    .local v1, showTos:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 582
    const/16 v3, 0x14

    invoke-virtual {p0, v1, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 585
    .end local v1           #showTos:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private fireOnReadyRunnable(Z)V
    .locals 2
    .parameter "shouldHandleIntent"

    .prologue
    .line 611
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/receivers/Installer;->startDeferredInstalls()V

    .line 612
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->hideLoadingIndicator()V

    .line 614
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    .line 624
    .local v0, onReadyRunnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 625
    return-void
.end method

.method private static getIndexOfAccount([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "accountNames"
    .parameter "accountToFind"

    .prologue
    .line 636
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 637
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    .end local v0           #i:I
    :goto_1
    return v0

    .line 636
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getMarketMetadataAndLoadLibraries(Z)V
    .locals 5
    .parameter "shouldHandleIntent"

    .prologue
    .line 872
    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$9;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    .line 882
    .local v0, continueWhenDone:Ljava/lang/Runnable;
    new-instance v1, Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;-><init>()V

    .line 883
    .local v1, sendMetadataAction:Lcom/google/android/finsky/activities/GetMarketMetadataAction;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/Runnable;)V

    new-instance v4, Lcom/google/android/finsky/activities/AuthenticatedActivity$11;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$11;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->run(Landroid/content/Context;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 900
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    .line 901
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 902
    return-void
.end method

.method private isAccountSwitchNeeded(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountName"

    .prologue
    .line 670
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadTocAndContinue(Z)V
    .locals 5
    .parameter "shouldHandleIntent"

    .prologue
    const/4 v4, 0x1

    .line 804
    new-array v0, v4, [Z

    .line 805
    .local v0, responseReceived:[Z
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[ZZ)V

    new-instance v3, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->getToc(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    .line 838
    return-void
.end method

.method private performFirstRunIfNecessary(Z)V
    .locals 1
    .parameter "shouldHandleIntent"

    .prologue
    .line 792
    invoke-static {}, Lcom/google/android/finsky/activities/FirstRunActivity;->requiresFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/activities/FirstRunActivity;->getIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivity(Landroid/content/Intent;)V

    .line 794
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 798
    :goto_0
    return-void

    .line 797
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getMarketMetadataAndLoadLibraries(Z)V

    goto :goto_0
.end method

.method private registerGcmIfNecessary()V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getUsers()Lcom/google/android/finsky/utils/Users;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/Users;->hasMultipleUsers()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 205
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, regId:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "932144863878"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getDeviceConfiguration()Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->uploadDeviceConfig(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/volley/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mUploadDeviceConfigRequest:Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private setupAccountAndContinue(Z)V
    .locals 2
    .parameter "shouldHandleIntent"

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->determineAccount()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, accountName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 778
    sget-boolean v1, Lcom/google/android/finsky/activities/AuthenticatedActivity;->ADD_ACCOUNT_SUPPORTS_CUSTOM_MESSAGE:Z

    if-eqz v1, :cond_0

    .line 779
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V

    .line 789
    :goto_0
    return-void

    .line 781
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showDialog(I)V

    goto :goto_0

    .line 784
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isAccountSwitchNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 785
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->switchAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->performFirstRunIfNecessary(Z)V

    goto :goto_0
.end method

.method private setupAccountCreationDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 700
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 701
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700db

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 711
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 712
    .local v0, alert:Landroid/app/AlertDialog;
    return-object v0
.end method

.method private setupAccountDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 722
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->convertToStringArray([Landroid/accounts/Account;)[Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, accountNames:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIndexOfAccount([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 727
    .local v4, currentAccountIndex:I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 728
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0700e6

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 729
    new-instance v5, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;

    invoke-direct {v5, p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[Landroid/accounts/Account;)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 754
    new-instance v5, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 761
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 762
    .local v2, alert:Landroid/app/AlertDialog;
    return-object v2
.end method


# virtual methods
.method protected authenticateOnNewIntent(Z)V
    .locals 0
    .parameter "shouldHandleIntent"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    .line 313
    return-void
.end method

.method public chooseAccount(Z)V
    .locals 9
    .parameter "goToMyDownloads"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 389
    sput-boolean p1, Lcom/google/android/finsky/activities/AuthenticatedActivity;->sSwitchToMyApps:Z

    .line 390
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v2, v4, :cond_0

    .line 391
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 392
    .local v0, currentAccount:Landroid/accounts/Account;
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "com.google"

    aput-object v4, v2, v5

    const-string v5, "androidmarket"

    invoke-static {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    move-object v4, v1

    move-object v6, v1

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 400
    .local v8, intent:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {p0, v8, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 404
    .end local v0           #currentAccount:Landroid/accounts/Account;
    .end local v8           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected getJustReturnedFromDialog()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mJustReturnedFromDialog:Z

    return v0
.end method

.method protected handleAuthenticationError(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 318
    return-void
.end method

.method protected handleUserAuthentication(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 906
    const/16 v0, 0x16

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 907
    return-void
.end method

.method public hasDiffVersionCode()Z
    .locals 4

    .prologue
    .line 651
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v0

    .line 652
    .local v0, currentVersionCode:I
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 655
    .local v1, lastVersionCode:I
    if-eq v1, v0, :cond_0

    .line 656
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 657
    const/4 v2, 0x1

    .line 659
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected hideLoadingIndicator()V
    .locals 4

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 686
    .local v0, contentFrame:Landroid/view/ViewGroup;
    const v2, 0x7f080058

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 687
    .local v1, loading:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 690
    :cond_0
    return-void
.end method

.method public isStateSaved()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    return v0
.end method

.method public isTosAccepted()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 592
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v2

    .line 596
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 597
    .local v1, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_0

    .line 600
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/TosActivity;->requiresAcceptance(Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 327
    sparse-switch p1, :sswitch_data_0

    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 329
    :sswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 330
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 332
    const-string v2, "b/5160617: Switch account to %s due to request code"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->switchAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .end local v0           #accountName:Ljava/lang/String;
    :cond_1
    sput-boolean v5, Lcom/google/android/finsky/activities/AuthenticatedActivity;->sSwitchToMyApps:Z

    goto :goto_0

    .line 341
    :sswitch_1
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 342
    if-nez p2, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    goto :goto_0

    .line 357
    :sswitch_2
    if-nez p2, :cond_3

    .line 358
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->chooseAccount(Z)V

    goto :goto_0

    .line 361
    :cond_3
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 362
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    goto :goto_0

    .line 365
    :sswitch_3
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 368
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 369
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v2, v1

    if-nez v2, :cond_4

    .line 370
    const-string v2, "No new account added: Assume the user canceled and finish."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_0

    .line 374
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    goto :goto_0

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_1
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackgroundDataNotEnabled()V
    .locals 0

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 274
    return-void
.end method

.method protected onCleanup()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    const-string v0, "waiting_for_user_input"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showLoadingIndicator()V

    .line 166
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->registerGcmIfNecessary()V

    .line 171
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->hasDiffVersionCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Diff version code, clear cache"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_2
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Same version code as before"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    if-nez v0, :cond_4

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    goto :goto_0

    .line 184
    :cond_4
    const-string v0, "Waiting for user to return from auth screen."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    packed-switch p1, :pswitch_data_0

    .line 423
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog type id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountCreationDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mUploadDeviceConfigRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mUploadDeviceConfigRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 299
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 449
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 450
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setIntent(Landroid/content/Intent;)V

    .line 453
    const/4 v0, 0x1

    .line 459
    .local v0, shouldHandleIntent:Z
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 465
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->authenticateOnNewIntent(Z)V

    .line 466
    return-void
.end method

.method protected abstract onReady(Z)V
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 248
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    .line 249
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mRestartRequired:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->restart()V

    .line 265
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getJustReturnedFromDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    .line 257
    :cond_1
    invoke-static {p0}, Lcom/google/android/finsky/utils/Utils;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showBackgroundDataDialog()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->dismissExisting(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    .line 279
    const-string v0, "waiting_for_user_input"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    .line 243
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    .line 291
    return-void
.end method

.method protected reinitialize(Landroid/accounts/Account;Z)V
    .locals 3
    .parameter "account"
    .parameter "clearCache"

    .prologue
    const/4 v2, 0x0

    .line 484
    if-nez p1, :cond_0

    .line 485
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object p1

    .line 486
    if-nez p1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->restart()V

    .line 506
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 496
    .local v0, application:Lcom/google/android/finsky/FinskyApp;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCleanup()V

    .line 498
    if-eqz p2, :cond_1

    .line 499
    invoke-virtual {v0, v2}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 502
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 503
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/FinskyApp;->switchCurrentAccount(Landroid/accounts/Account;)V

    .line 505
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    goto :goto_0
.end method

.method protected restart()V
    .locals 5

    .prologue
    .line 986
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mRestartRequired:Z

    .line 987
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 988
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->recreate()V

    .line 1005
    :goto_0
    return-void

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 992
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 993
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$15;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Landroid/content/Intent;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public restartOnResume()V
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mRestartRequired:Z

    .line 980
    return-void
.end method

.method protected setJustReturnedFromDialog(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mJustReturnedFromDialog:Z

    .line 440
    return-void
.end method

.method protected showBackgroundDataDialog()V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->show(Landroid/support/v4/app/FragmentManager;Landroid/app/Activity;)V

    .line 269
    return-void
.end method

.method protected showLoadingIndicator()V
    .locals 5

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 675
    .local v0, contentFrame:Landroid/view/ViewGroup;
    const v2, 0x7f080058

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 676
    .local v1, loading:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400c9

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 682
    goto :goto_0
.end method

.method protected startInitializationActions(Z)V
    .locals 0
    .parameter "shouldHandleIntent"

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showLoadingIndicator()V

    .line 767
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountAndContinue(Z)V

    .line 768
    return-void
.end method

.method protected switchAccount(Ljava/lang/String;)V
    .locals 6
    .parameter "accountName"

    .prologue
    const/4 v5, 0x0

    .line 858
    invoke-static {p1, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 862
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 863
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error, could not switch to %s because the account could not be found on the device"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 868
    :cond_0
    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->reinitialize(Landroid/accounts/Account;Z)V

    .line 869
    return-void
.end method
