.class public Lcom/android/settings/wimax/WimaxSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_SCAN:I = 0x0

.field private static final EVENT_SCAN_DONE:I = 0x1

.field private static final INSTANCE_KEY_DIALOG_BUNDLE:Ljava/lang/String; = "com.android.settings.wifi.WifiSettings:dialogBundle"

.field private static final KEY_BACKOFF_RESCAN:Ljava/lang/String; = "backoff_rescan"

.field private static final KEY_IP_ADDRESS:Ljava/lang/String; = "ip_address"

.field private static final KEY_SERVICE_PROVIDER:Ljava/lang/String; = "service_provider"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final KEY_WIMAX_INFO:Ljava/lang/String; = "wimax_info"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WimaxSettings"

.field private static mWimaxSignal:I


# instance fields
.field private mBackoffRescan:Lcom/htc/preference/HtcPreference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

.field private mIPAddressPreference:Lcom/htc/preference/HtcPreference;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mMainHandler:Landroid/os/Handler;

.field private mMenuScan:Landroid/view/MenuItem;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeMode:I

.field private mServiceProviderPreference:Lcom/htc/preference/HtcPreference;

.field private mSignalStrengthPreference:Lcom/htc/preference/HtcPreference;

.field private mWimaxController:Lcom/htc/net/wimax/WimaxController;

.field private mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

.field private mWimaxError:Lcom/android/settings/wimax/WimaxError;

.field private mWimaxInfoPreferenceCategory:Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 104
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 140
    new-instance v0, Lcom/android/settings/wimax/WimaxSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxSettings$1;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mMainHandler:Landroid/os/Handler;

    .line 442
    new-instance v0, Lcom/android/settings/wimax/WimaxSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxSettings$3;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/net/wimax/WimaxController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/android/settings/wimax/WimaxError;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxError:Lcom/android/settings/wimax/WimaxError;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wimax/WimaxSettings;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wimax/WimaxSettings;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxSettings;->createErrorDialog(Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wimax/WimaxSettings;Landroid/app/Dialog;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxSettings;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wimax/WimaxSettings;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mMenuScan:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mBackoffRescan:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxSignal:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxSignal:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/wimax/WimaxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->updateServiceProvider()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wimax/WimaxSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mSignalStrengthPreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mIPAddressPreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wimax/WimaxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->clearWimaxInfo()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wimax/WimaxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->enableWimaxInfo()V

    return-void
.end method

.method private clearWimaxInfo()V
    .locals 2

    .prologue
    .line 436
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxSignal:I

    .line 437
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mIPAddressPreference:Lcom/htc/preference/HtcPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mSignalStrengthPreference:Lcom/htc/preference/HtcPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mServiceProviderPreference:Lcom/htc/preference/HtcPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method

.method private createErrorDialog(Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 4
    .parameter "errorMsg"
    .parameter "isError"

    .prologue
    .line 256
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0478

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, title:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20800a0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/wimax/WimaxSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wimax/WimaxSettings$2;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1

    .line 256
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c047a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private enableWimaxInfo()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxInfoPreferenceCategory:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxInfoPreferenceCategory:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->isWimaxEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string v3, "WimaxSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWimaxInfoPreferenceCategory:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxInfoPreferenceCategory:Lcom/htc/preference/HtcPreference;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; mWimaxController:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private initToggles()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method private onCreatePreferences()V
    .locals 3

    .prologue
    .line 224
    const v1, 0x7f05004e

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->addPreferencesFromResource(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 227
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v1, "signal_strength"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mSignalStrengthPreference:Lcom/htc/preference/HtcPreference;

    .line 228
    const-string v1, "ip_address"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mIPAddressPreference:Lcom/htc/preference/HtcPreference;

    .line 229
    const-string v1, "service_provider"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mServiceProviderPreference:Lcom/htc/preference/HtcPreference;

    .line 230
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x21

    if-ne v1, v2, :cond_1

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mServiceProviderPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 234
    :cond_1
    const-string v1, "backoff_rescan"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mBackoffRescan:Lcom/htc/preference/HtcPreference;

    .line 235
    const-string v1, "wimax_info"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxInfoPreferenceCategory:Lcom/htc/preference/HtcPreference;

    .line 236
    return-void
.end method

.method private rescanWimax()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 362
    return-void
.end method

.method private showDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 370
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;

    .line 371
    if-eqz p1, :cond_1

    .line 373
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 375
    :cond_1
    return-void
.end method

.method private updateServiceProvider()V
    .locals 2

    .prologue
    .line 417
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mServiceProviderPreference:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f0c041a

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    :goto_0
    return-void

    .line 419
    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mServiceProviderPreference:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f0c041b

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mServiceProviderPreference:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f0c0419

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x10

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 158
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    .line 159
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, filterWimax:Landroid/content/IntentFilter;
    const-string v6, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v6, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v6, "com.htc.net.wimax.ON_BACKOFF_STATE_ACTION"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v6, "com.htc.net.wimax.WIMAX_EAP_AKA_NOTIFICATION"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v6, "com.htc.net.wimax.WIMAX_EAP_NOTIFICATION"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    const-string v6, "wimax"

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/net/wimax/WimaxController;

    iput-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    .line 168
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v6, :cond_0

    .line 169
    const-string v6, "WimaxSettings"

    const-string v7, "mWimaxController is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->finish()V

    .line 172
    :cond_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mCM:Landroid/net/ConnectivityManager;

    .line 173
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->onCreatePreferences()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->initToggles()V

    .line 176
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "WimaxSettingsThread"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mHandlerThread:Landroid/os/HandlerThread;

    .line 177
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v6, Lcom/android/settings/wimax/WimaxSettings$MyHandler;

    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/settings/wimax/WimaxSettings$MyHandler;-><init>(Lcom/android/settings/wimax/WimaxSettings;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mHandler:Landroid/os/Handler;

    .line 180
    const-string v6, "fourG_wimax"

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/net/wimax/HTCWimax4GManager;

    iput-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 181
    new-instance v6, Lcom/android/settings/wimax/WimaxError;

    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/settings/wimax/WimaxError;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxError:Lcom/android/settings/wimax/WimaxError;

    .line 184
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x51

    if-ne v6, v7, :cond_5

    .line 185
    const-string v6, "wimax_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    const v7, 0x7f0c0413

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 186
    const-string v6, "backoff_rescan"

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    const v7, 0x7f0c0461

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 187
    const-string v6, "wimax_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    const v7, 0x7f0c043e

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 194
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 195
    .local v3, it:Landroid/content/Intent;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 196
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "com.android.settings.wimax.scan"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->rescanWimax()V

    .line 200
    :cond_2
    new-instance v0, Lcom/htc/widget/HtcToggleButton;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, actionBarSwitch:Lcom/htc/widget/HtcToggleButton;
    instance-of v6, v1, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v6, :cond_4

    move-object v5, v1

    .line 203
    check-cast v5, Lcom/htc/preference/HtcPreferenceActivity;

    .line 204
    .local v5, preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_4

    .line 205
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 207
    .local v4, padding:I
    invoke-virtual {v0, v8, v8, v4, v8}, Lcom/htc/widget/HtcToggleButton;->setPadding(IIII)V

    .line 208
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 210
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 217
    .end local v4           #padding:I
    .end local v5           #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_4
    new-instance v6, Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct {v6, v1, v0}, Lcom/android/settings/wimax/WimaxEnabler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    .line 219
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->setHasOptionsMenu(Z)V

    .line 221
    return-void

    .line 188
    .end local v0           #actionBarSwitch:Lcom/htc/widget/HtcToggleButton;
    .end local v3           #it:Landroid/content/Intent;
    :cond_5
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x50

    if-ne v6, v7, :cond_1

    .line 189
    const-string v6, "wimax_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    const v7, 0x7f0c0414

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 190
    const-string v6, "backoff_rescan"

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    const v7, 0x7f0c0462

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 191
    const-string v6, "wimax_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/wimax/WimaxSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    const v7, 0x7f0c043f

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 380
    const v2, 0x7f0c044c

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 382
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mMenuScan:Landroid/view/MenuItem;

    .line 383
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mMenuScan:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v3}, Lcom/htc/net/wimax/WimaxController;->isBackoffState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v3}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 384
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 385
    return-void

    :cond_0
    move v0, v1

    .line 383
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 348
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 398
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 395
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->rescanWimax()V

    .line 396
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->pause()V

    .line 341
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 342
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    .line 353
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mBackoffRescan:Lcom/htc/preference/HtcPreference;

    if-ne p2, v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->rescanWimax()V

    .line 357
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 274
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mIPAddressPreference:Lcom/htc/preference/HtcPreference;

    const-string v10, "dhcp.wimax0.ipaddress"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    sget v7, Lcom/android/settings/wimax/WimaxReceiver;->wimaxSignal:I

    sput v7, Lcom/android/settings/wimax/WimaxSettings;->mWimaxSignal:I

    .line 278
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/wimax/WimaxSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 279
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 280
    .local v4, info:Landroid/net/NetworkInfo;
    if-nez v4, :cond_6

    .line 281
    const-string v7, "WimaxSettings"

    const-string v10, "info is null"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/settings/wimax/WimaxSettings;->mBackoffRescan:Lcom/htc/preference/HtcPreference;

    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v7}, Lcom/htc/net/wimax/WimaxController;->isBackoffState()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v7}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v7

    if-ne v7, v12, :cond_7

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 291
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mMenuScan:Landroid/view/MenuItem;

    if-eqz v7, :cond_1

    .line 292
    iget-object v10, p0, Lcom/android/settings/wimax/WimaxSettings;->mMenuScan:Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v7}, Lcom/htc/net/wimax/WimaxController;->isBackoffState()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v7}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v7

    if-ne v7, v12, :cond_8

    move v7, v8

    :goto_2
    invoke-interface {v10, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 296
    :cond_1
    invoke-static {}, Lcom/android/settings/wimax/WimaxError;->getHasPendingErrorMsg()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 297
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v7}, Lcom/htc/net/wimax/HTCWimax4GManager;->getLastAkaNotificationCode()I

    move-result v3

    .line 300
    .local v3, errorCode:I
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v7}, Lcom/htc/net/wimax/HTCWimax4GManager;->getLastEapNotificationMsg()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, eapNotificationString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxError:Lcom/android/settings/wimax/WimaxError;

    invoke-virtual {v7, v3}, Lcom/android/settings/wimax/WimaxError;->getErrorMsgId(I)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, errorAkaString:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 308
    invoke-direct {p0, v1, v9}, Lcom/android/settings/wimax/WimaxSettings;->createErrorDialog(Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;

    .line 309
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0, v7}, Lcom/android/settings/wimax/WimaxSettings;->showDialog(Landroid/app/Dialog;)V

    .line 311
    :cond_2
    if-eqz v2, :cond_3

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 312
    invoke-direct {p0, v2, v8}, Lcom/android/settings/wimax/WimaxSettings;->createErrorDialog(Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;

    .line 313
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0, v7}, Lcom/android/settings/wimax/WimaxSettings;->showDialog(Landroid/app/Dialog;)V

    .line 316
    :cond_3
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxError:Lcom/android/settings/wimax/WimaxError;

    invoke-virtual {v7, v9}, Lcom/android/settings/wimax/WimaxError;->setHasPendingErrorMsg(Z)V

    .line 318
    .end local v1           #eapNotificationString:Ljava/lang/String;
    .end local v2           #errorAkaString:Ljava/lang/String;
    .end local v3           #errorCode:I
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v7}, Lcom/android/settings/wimax/WimaxEnabler;->resume()V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 321
    .local v5, it:Landroid/content/Intent;
    if-eqz v5, :cond_9

    .line 323
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 324
    const-string v7, "com.android.settings.wimax.scan"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 326
    .local v6, needScan:Z
    if-eqz v6, :cond_5

    .line 327
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->rescanWimax()V

    .line 333
    .end local v6           #needScan:Z
    :cond_5
    :goto_3
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 334
    return-void

    .line 284
    .end local v5           #it:Landroid/content/Intent;
    :cond_6
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v10, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->updateServiceProvider()V

    .line 286
    iget-object v7, p0, Lcom/android/settings/wimax/WimaxSettings;->mSignalStrengthPreference:Lcom/htc/preference/HtcPreference;

    iget-object v10, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/wimax/WimaxSettings;->mWimaxSignal:I

    invoke-static {v10, v11}, Lcom/android/settings/wimax/WimaxStatus;->getPrintableSiganlStrength(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    move v7, v9

    .line 290
    goto/16 :goto_1

    :cond_8
    move v7, v9

    .line 292
    goto/16 :goto_2

    .line 331
    .restart local v5       #it:Landroid/content/Intent;
    :cond_9
    const-string v7, "WimaxSettings"

    const-string v8, "getIntent() null!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
