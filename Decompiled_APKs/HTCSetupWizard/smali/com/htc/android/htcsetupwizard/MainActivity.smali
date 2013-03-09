.class public Lcom/htc/android/htcsetupwizard/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;,
        Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;,
        Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;,
        Lcom/htc/android/htcsetupwizard/MainActivity$VMMForBootUpServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_SYNC_CHECKED:Ljava/lang/String; = "android.htc.intent.action.AUTO_DATA_SYNC_CHECKED"

.field private static final ACTION_GOOGLE_LOGIN:I = 0x34

.field private static final ACTION_SETUP_WIZARD_FINISHED:Ljava/lang/String; = "android.htc.intent.action.SETUP_WIZARD_FINISHED"

.field private static final ADHOC_CAPABILITY:Ljava/lang/String; = "[IBSS]"

.field private static final ALLOW_PRIVACY:Ljava/lang/String; = "oobe_allow_privacy"

.field private static final AUTO_DATA_SYNC:Ljava/lang/String; = "oobe_auto_data_sync_check"

.field private static final AUTO_SYNC_DATA:Ljava/lang/String; = "oobe_auto_sync_data_check"

.field private static final BROADCAST_INTENT_ACTION_GOOGLERESTORE_START:Ljava/lang/String; = "android.htc.intent.action.GOOGLERESTORE_START"

.field private static final CSL_PROFILE_PATH:Ljava/lang/String; = "/system/customize/csl_mns_map.xml"

.field private static final DIALOG_ID_SCAN_WIFI_AP:I = 0x65

.field private static final DIALOG_ID_WIFI_NETWORK_FOUND:I = 0x66

.field private static final DIALOG_ID_WIFI_NETWORK_NOT_FOUND:I = 0x67

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final KEY_GOOGLE_LOGIN:Ljava/lang/String; = "google_login"

.field private static final LOCAL_LOG:Z = false

.field private static final LOGIN_FAILED:I = 0x2

.field private static final LOGIN_SUCCESS:I = 0x1

.field private static final LOGOUT:I = 0x0

.field private static final MOBILE_DATA:Ljava/lang/String; = "oobe_mobile_data"

.field private static final MSG_DELAY_TIME_CHECK_ACTIVITY_RUNNING:I = 0x1f4

.field private static final MSG_DELAY_TIME_CHECK_ACTIVITY_SHOW_DIALOG:I = 0x7d0

.field private static final MSG_DELAY_TIME_SCAN_WIFI_AP:I = 0x1770

.field private static final MSG_DELAY_TIME_WIFI_NETWORK_NOT_FOUND:I = 0x3e8

.field private static final MSG_ID_CHECK_ACTIVITY_RUNNING:I = 0xcd

.field private static final MSG_ID_CHECK_SCAN_WIFI_AP:I = 0xc9

.field private static final MSG_ID_FINISH:I = 0x12e

.field private static final MSG_ID_NEXT_ACTIVITY:I = 0x12d

.field private static final MSG_ID_SET_CUSTOMIZED_VALUES:I = 0xcc

.field private static final MSG_ID_WIFI_NETWORK_FOUND:I = 0xcb

.field private static final MSG_ID_WIFI_NETWORK_NOT_FOUND:I = 0xca

.field private static final MSG_RETRY_TIME_CHECK_ACTIVITY_RUNNING:I = 0x14

.field private static final MSG_RETRY_TIME_SCAN_WIFI_AP:I = 0x5

.field private static final OTA_REQ:Ljava/lang/String; = "ota_required"

.field private static final PROGRESS_BAR_DOT_MAX_NUMBER:I = 0x7

.field private static REMOVE_WIFIDETECT_PAGE:Z = false

.field private static final RESULT_RESTORE_OK:I = 0x20

.field private static final RO_BOOTLOADER:Ljava/lang/String; = "ro.bootloader"

.field private static final SHOW_WIFI_SETTING:Ljava/lang/String; = "oobe_show_wifi_setting"

.field private static final SIM_STATE_TIMEOUT:Ljava/lang/String; = "SimState_Timeout"

.field private static final TAG:Ljava/lang/String; = "OOBE_MainActivity"

.field private static final UPDATE_STAUS:I = 0x3

.field private static mDotInterspace:I

.field protected static mExecutingActivityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/android/htcsetupwizard/StepSetting;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsDestroyByOthers:Z

.field private static mProgressbarMaxSize:I

.field private static mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

.field private static mStartActivityStep:I

.field private static mbSIMAbsent:Z

.field private static mbWiFiHaveBeenConnected:Z

.field private static mstatusBar:Landroid/app/StatusBarManager;


# instance fields
.field private customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

.field private isFinishCalled:Z

.field private keyFilterReceiver:Landroid/content/BroadcastReceiver;

.field mAccountStatusHandler:Landroid/os/Handler;

.field private mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field protected mActivityListCustomized:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mActivityListFromXml:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mApnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mBackToPrevious:Z

.field private mBackToWifi:Z

.field private mCheckActivityRetryCount:I

.field private mConnection:Landroid/content/ServiceConnection;

.field protected mExceptionCase:Z

.field protected mExecutingActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcsetupwizard/StepSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivity:I

.field protected mFirstTellHtc:Z

.field private mGRestore:Lcom/htc/android/htcsetupwizard/GoogleRestore;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoSetDevNameRunning:Z

.field private mIsCslFirstActivity:Z

.field private mIsExist:Z

.field protected mLaunchByIcon:Z

.field private mOOPStartActivityCode:I

.field public mPoweroffReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanRetryCount:I

.field private mStartActivityCode:I

.field private mWiFiMgr:Landroid/net/wifi/WifiManager;

.field private mbBack:Z

.field private mbEnableHomeKeyToLauncher:Z

.field private mbHasFacebookPage:Z

.field private mbHaveOtaPage:Z

.field private mbOnActivityResult:Z

.field private mbOnPause:Z

.field private mbPhoneFunc:Z

.field private mbRemoveConnectionType:Z

.field private mbRemoveScheduledSync:Z

.field private mbRemoveTimezonePage:Z

.field private mbStopAPResultDlg:Ljava/lang/Boolean;

.field private mbWifiChecked:Z

.field private mnCurStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 153
    sput v2, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    .line 155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcsetupwizard/MainActivity;->REMOVE_WIFIDETECT_PAGE:Z

    .line 164
    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    .line 166
    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    .line 246
    sput v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    .line 250
    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsDestroyByOthers:Z

    .line 252
    sput v2, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityStep:I

    .line 259
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 157
    iput v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mScanRetryCount:I

    .line 158
    iput v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I

    .line 160
    new-instance v0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;

    invoke-direct {v0, p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;Lcom/htc/android/htcsetupwizard/MainActivity$1;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    .line 162
    iput v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .line 168
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWifiChecked:Z

    .line 170
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbHaveOtaPage:Z

    .line 174
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->isFinishCalled:Z

    .line 176
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnPause:Z

    .line 178
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbStopAPResultDlg:Ljava/lang/Boolean;

    .line 180
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbHasFacebookPage:Z

    .line 182
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveTimezonePage:Z

    .line 183
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveConnectionType:Z

    .line 184
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveScheduledSync:Z

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbPhoneFunc:Z

    .line 189
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbEnableHomeKeyToLauncher:Z

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mActivityListFromXml:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mActivityListCustomized:Ljava/util/ArrayList;

    .line 197
    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mWiFiMgr:Landroid/net/wifi/WifiManager;

    .line 215
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 216
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToPrevious:Z

    .line 219
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    .line 220
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExceptionCase:Z

    .line 221
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mFirstTellHtc:Z

    .line 222
    iput v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mFirstActivity:I

    .line 225
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbBack:Z

    .line 227
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnActivityResult:Z

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mApnList:Ljava/util/ArrayList;

    .line 243
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsCslFirstActivity:Z

    .line 251
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsExist:Z

    .line 253
    iput v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityCode:I

    .line 254
    iput v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mOOPStartActivityCode:I

    .line 278
    new-instance v0, Lcom/htc/android/htcsetupwizard/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAccountStatusHandler:Landroid/os/Handler;

    .line 379
    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->keyFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v0, Lcom/htc/android/htcsetupwizard/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$3;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mPoweroffReceiver:Landroid/content/BroadcastReceiver;

    .line 471
    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1666
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsAutoSetDevNameRunning:Z

    .line 3350
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityByDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;)Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    sput-object p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->callWIFISetting()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/htcsetupwizard/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->showNotFoundDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setCustomizedValues()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/htcsetupwizard/MainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/android/htcsetupwizard/MainActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I

    return p1
.end method

.method static synthetic access$1508(Lcom/htc/android/htcsetupwizard/MainActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/android/htcsetupwizard/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isTopActivityFound()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->dismissProcessingDialog()V

    return-void
.end method

.method static synthetic access$1810(Lcom/htc/android/htcsetupwizard/MainActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/android/htcsetupwizard/MainActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startGoogleRestore()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->showProcessingDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->executeCurrentActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/MainActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->unregisterPoweroffReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/htcsetupwizard/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbEnableHomeKeyToLauncher:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->disableStatusBar()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->stopAutoSetDevName()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/htcsetupwizard/MainActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbStopAPResultDlg:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/android/htcsetupwizard/MainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbStopAPResultDlg:Ljava/lang/Boolean;

    return-object p1
.end method

.method private addActivityToList(II)V
    .locals 3
    .parameter "nPosition"
    .parameter "activityId"

    .prologue
    .line 3196
    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->isFunctionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3199
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3202
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->recaculateStepNumber()V

    .line 3203
    return-void
.end method

.method private asyncCheckGoogleAccount()V
    .locals 7

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, account:Ljava/lang/String;
    const/4 v1, 0x0

    .line 326
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 327
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    if-eqz v5, :cond_3

    .line 328
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 329
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_2

    array-length v5, v1

    if-lez v5, :cond_2

    .line 332
    const/4 v5, 0x0

    aget-object v5, v1, v5

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 334
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 335
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 336
    .local v2, b:Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 337
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #b:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 338
    .restart local v2       #b:Landroid/os/Bundle;
    :cond_0
    const-string v5, "key"

    const-string v6, "google_login"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v5, "username"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v5, 0x3

    iput v5, v4, Landroid/os/Message;->what:I

    .line 341
    const/16 v5, 0x34

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 342
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAccountStatusHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #i:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 328
    .restart local v3       #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v3           #i:I
    :cond_3
    const-string v5, "OOBE_MainActivity"

    const-string v6, "AuthenticatorTypes not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private callWIFISetting()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 2862
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 2863
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2864
    .local v0, wifiIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiSettingsSetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2865
    invoke-virtual {p0, v0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->informActivityBackKeySelfFinish(Landroid/content/Intent;I)V

    .line 2866
    const-string v2, "ProgressBarNumber"

    sget-object v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->getProgressBarNumber()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2868
    const-string v1, "ProgressBarMaxNumber"

    sget v2, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2869
    const-string v1, "ProgressBarDotMaxNumber"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2870
    const-string v1, "ProgressBarDotInterspace"

    sget v2, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2871
    invoke-direct {p0, v0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2872
    return-void
.end method

.method private checkAPForShortTime()V
    .locals 4

    .prologue
    const/16 v3, 0xc9

    .line 2578
    const-string v0, "OOBE_MainActivity"

    const-string v1, "checkAPForShortTime"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 2580
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->showDialog(I)V

    .line 2581
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2582
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2583
    return-void
.end method

.method private checkIfSkipTellHTC()V
    .locals 9

    .prologue
    .line 731
    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->loadTellHtcCustomizeData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 732
    .local v0, customizationBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 734
    const-string v6, "setting"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 735
    .local v3, setting:Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 737
    const-string v6, "turn_off_tell_htc"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, tellHTCOff:Ljava/lang/String;
    const-string v6, "turn_off_report"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, errorReportOff:Ljava/lang/String;
    const-string v6, "turn_off_application_log"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 740
    .local v5, usageReportOff:Ljava/lang/String;
    const-string v6, "hide_usage_report"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, hideUsageReport:Ljava/lang/String;
    const-string v6, "OOBE_MainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tell HTC customization, turn_off_tell_htc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", errorReportOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", usageReportOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hideUsageReport="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v6, :cond_0

    const-string v6, "yes"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 749
    const-string v6, "send_htc_application_log"

    const-string v7, "0"

    invoke-direct {p0, v6, v7}, Lcom/htc/android/htcsetupwizard/MainActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 751
    :cond_0
    const-string v6, "yes"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "yes"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 754
    :cond_1
    const-string v6, "send_htc_application_log"

    const-string v7, "0"

    invoke-direct {p0, v6, v7}, Lcom/htc/android/htcsetupwizard/MainActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 755
    const/16 v6, 0x1e

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeActivityFromList(I)V

    .line 767
    .end local v1           #errorReportOff:Ljava/lang/String;
    .end local v2           #hideUsageReport:Ljava/lang/String;
    .end local v3           #setting:Landroid/os/Bundle;
    .end local v4           #tellHTCOff:Ljava/lang/String;
    .end local v5           #usageReportOff:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 760
    .restart local v3       #setting:Landroid/os/Bundle;
    :cond_3
    const-string v6, "OOBE_MainActivity"

    const-string v7, "customization setting = null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 765
    .end local v3           #setting:Landroid/os/Bundle;
    :cond_4
    const-string v6, "OOBE_MainActivity"

    const-string v7, "customizationBundle = null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private controlWIFIScanService(Z)V
    .locals 3
    .parameter "bStart"

    .prologue
    .line 1261
    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1264
    .local v0, WIFIService:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.WIFIScanAPService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const-string v1, "LaunchBySetupWizard"

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1266
    const-string v1, "LaunchedBy"

    const-string v2, "LaunchedByOOBE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isWiFiDefaultOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->isFunctionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1270
    :cond_0
    const-string v1, "OOBE_MainActivity"

    const-string v2, "startWifiScanService, enable Wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1279
    .end local v0           #WIFIService:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1273
    .restart local v0       #WIFIService:Landroid/content/Intent;
    :cond_1
    const-string v1, "OOBE_MainActivity"

    const-string v2, "stopWifiScanService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1278
    .end local v0           #WIFIService:Landroid/content/Intent;
    :cond_2
    const-string v1, "OOBE_MainActivity"

    const-string v2, "SystemProperties ro.kernel.qemu = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createScanAPDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2730
    const-string v1, "OOBE_MainActivity"

    const-string v2, "createScanAPDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    new-instance v0, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2732
    .local v0, dialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;
    const v1, 0x7f0a001d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2733
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setIndeterminate(Z)V

    .line 2734
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setCancelable(Z)V

    .line 2736
    new-instance v1, Lcom/htc/android/htcsetupwizard/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$13;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2748
    new-instance v1, Lcom/htc/android/htcsetupwizard/MainActivity$14;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$14;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2765
    return-object v0
.end method

.method private createWIFIConfirmation()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 2685
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0014

    new-instance v3, Lcom/htc/android/htcsetupwizard/MainActivity$10;

    invoke-direct {v3, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$10;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0015

    new-instance v3, Lcom/htc/android/htcsetupwizard/MainActivity$9;

    invoke-direct {v3, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$9;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 2701
    .local v0, dialog:Landroid/app/Dialog;
    new-instance v1, Lcom/htc/android/htcsetupwizard/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$11;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2706
    new-instance v1, Lcom/htc/android/htcsetupwizard/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$12;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2726
    return-object v0
.end method

.method private createWIFIScanAPResult()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 2617
    const-string v1, "OOBE_MainActivity"

    const-string v2, "createWIFIScanAPResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 2624
    .local v0, dialog:Landroid/app/Dialog;
    new-instance v1, Lcom/htc/android/htcsetupwizard/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$6;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2636
    new-instance v1, Lcom/htc/android/htcsetupwizard/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$7;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2648
    new-instance v1, Lcom/htc/android/htcsetupwizard/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$8;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2665
    return-object v0
.end method

.method private disableComponent(Ljava/lang/Class;I)V
    .locals 3
    .parameter
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 618
    .local v0, mainComponent:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 620
    return-void
.end method

.method private disableKeys()V
    .locals 5

    .prologue
    .line 382
    const-string v3, "OOBE_MainActivity"

    const-string v4, "disableKeys"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-eqz v3, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->keyFilterReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 388
    new-instance v3, Lcom/htc/android/htcsetupwizard/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$2;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->keyFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 395
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 396
    .local v2, filter:Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 397
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 398
    const-string v3, "android.intent.action.CAMERA_BUTTON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    :try_start_0
    const-class v3, Landroid/content/Intent;

    const-string v4, "ACTION_CAMCORDER_BUTTON"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 403
    .local v0, actionCamcorderString:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0           #actionCamcorderString:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->keyFilterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    const-string v3, "OOBE_MainActivity"

    const-string v4, "keyFilterReceiver registered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    const-string v3, "OOBE_MainActivity"

    const-string v4, "no Intent.ACTION_CAMERA_BUTTON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private disableStatusBar()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "OOBE_MainActivity"

    const-string v1, "disableStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    sput-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mstatusBar:Landroid/app/StatusBarManager;

    .line 375
    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mstatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 376
    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mstatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 377
    :cond_0
    return-void
.end method

.method private dismissProcessingDialog()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 537
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 539
    :cond_1
    return-void
.end method

.method private doMainFunc(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 544
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbPhoneFunc:Z

    .line 545
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mbPhoneFunc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbPhoneFunc:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setupAutoBacklight()V

    .line 549
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mWiFiMgr:Landroid/net/wifi/WifiManager;

    .line 551
    new-instance v1, Lcom/htc/android/htcsetupwizard/GoogleRestore;

    invoke-direct {v1}, Lcom/htc/android/htcsetupwizard/GoogleRestore;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mGRestore:Lcom/htc/android/htcsetupwizard/GoogleRestore;

    .line 552
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mGRestore:Lcom/htc/android/htcsetupwizard/GoogleRestore;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/GoogleRestore;->enableRestoreProvisioned()V

    .line 554
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    .line 556
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->REMOVE_WIFIDETECT_PAGE:Z

    .line 562
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setActivityList()V

    .line 564
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedInstanceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    if-eqz p1, :cond_5

    .line 567
    const-string v1, "recoverStartActivityCode"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mOOPStartActivityCode:I

    .line 568
    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mOOPStartActivityCode:I

    if-eq v1, v4, :cond_4

    .line 570
    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mOOPStartActivityCode:I

    iput v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityCode:I

    .line 571
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->handlecustomizeList()V

    .line 572
    iput v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mOOPStartActivityCode:I

    .line 575
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 576
    iget v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityCode:I

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 577
    iput v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 583
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStartActivityCode not in mExecutingActivityList, mStartActivityCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 602
    .end local v0           #i:I
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v1, :cond_2

    .line 604
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->preStartWIFIScanService()V

    .line 606
    :cond_2
    return-void

    .line 575
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    .end local v0           #i:I
    :cond_4
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_1

    .line 592
    :cond_5
    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-ne v4, v1, :cond_1

    .line 594
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsDestroyByOthers:Z

    if-ne v1, v5, :cond_6

    .line 595
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DestroyByOthers, the last step = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityStep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityStep:I

    iput v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .line 597
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->handlecustomizeList()V

    .line 599
    :cond_6
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_1
.end method

.method private dumpCustomizationValue()V
    .locals 5

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-eqz v0, :cond_0

    .line 1863
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show step ACTIVITY_CODE_LANGUAGE_SETTING = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show step ACTIVITY_CODE_SIP_INTRO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show step ACTIVITY_CODE_DATA_SYNC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show step ACTIVITY_CODE_WIFI_SETTING = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show step ACTIVITY_CODE_MAIL_ACCOUNT_SETUP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show step ACTIVITY_CODE_SOCIAL_NETWORK_SETUP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show step ACTIVITY_CODE_LOCATION_CONSENT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show step ACTIVITY_CODE_TUTORIAL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefaultDataSync() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isDefaultDataSync()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefaultSyncData() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isDefaultSyncData()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupAllowLocationConsent allowCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasAccountConfig(Exchange) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v3, "Exchange"

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasAccountConfig(GMail) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v3, "GMail"

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasAccountConfig(Other_Mail) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v3, "Other_Mail"

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSocialNetworkConfig(Facebook) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v3, "Facebook"

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSocialNetworkConfig(Flickr) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v3, "Flickr"

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSocialNetworkConfig(Twitter) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v3, "Twitter"

    invoke-virtual {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSetHTCDefaullt() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isSetHTCDefaullt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :cond_0
    return-void
.end method

.method private enableComponent(Ljava/lang/Class;I)V
    .locals 3
    .parameter
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .local v0, mainComponent:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 613
    return-void
.end method

.method private enableKeys()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "OOBE_MainActivity"

    const-string v1, "enableKeys"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->keyFilterReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->keyFilterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->keyFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 420
    const-string v0, "OOBE_MainActivity"

    const-string v1, "keyFilterReceiver unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    return-void
.end method

.method private enableStatusBar()V
    .locals 2

    .prologue
    .line 364
    const-string v0, "OOBE_MainActivity"

    const-string v1, "enableStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mstatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mstatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 368
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mstatusBar:Landroid/app/StatusBarManager;

    .line 369
    return-void
.end method

.method private enableWiFiSIMService()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 879
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isWiFiDefaultOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isFunctionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 887
    :goto_0
    return-void

    .line 884
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 885
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWifiChecked:Z

    goto :goto_0
.end method

.method private executeCurrentActivity()V
    .locals 3

    .prologue
    .line 1091
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/StepSetting;->execute()V

    .line 1098
    :goto_0
    return-void

    .line 1095
    :cond_0
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! Index out of bound: mnCurStep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->finish()V

    goto :goto_0
.end method

.method public static getExecutingActivity(I)Lcom/htc/android/htcsetupwizard/StepSetting;
    .locals 2
    .parameter "activityId"

    .prologue
    .line 3312
    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/StepSetting;

    return-object v0
.end method

.method public static getIconConnectedId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 3317
    const-string v0, "icon_connected"

    const v1, 0x7f02000a

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSimAbsent()Z
    .locals 1

    .prologue
    .line 3464
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    return v0
.end method

.method public static getTitleColor(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 3322
    const-string v0, "setting_title_color"

    const v1, 0x7f080003

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTitleDivider(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 3334
    const-string v0, "oobe_title_divider"

    const v1, 0x7f020004

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVMMInterface()Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    return-object v0
.end method

.method private goToNextActivityByDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2670
    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 2672
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    if-ne v0, v2, :cond_0

    .line 2673
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 2674
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 2679
    :goto_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeDialog(I)V

    .line 2680
    return-void

    .line 2677
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method private goToNextActivityIfNotExist(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    .line 2519
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2529
    :goto_0
    return-void

    .line 2520
    :catch_0
    move-exception v0

    .line 2521
    .local v0, e:Landroid/content/ActivityNotFoundException;
    if-nez p2, :cond_0

    .line 2522
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calibration apk doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0

    .line 2525
    :cond_0
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException, nRequestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleSIMState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3147
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3148
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneType()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getSimState()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v1, :cond_0

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLteFlag:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isVigor:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isCT:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isWorldPhone()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3156
    :cond_0
    sput-boolean v2, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    .line 3157
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Remove Sim Card insert page"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeActivityFromList(I)V

    .line 3170
    :goto_0
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle SIM State after Customization, mbSIMAbsent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    return-void

    .line 3162
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SimState_Timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 3163
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 3165
    :cond_3
    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    .line 3166
    const-string v1, "OOBE_MainActivity"

    const-string v2, "SIM state should not timeout !!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlecustomizeList()V
    .locals 0

    .prologue
    .line 1659
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->handleSIMState()V

    .line 1660
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->customizeList()V

    .line 1662
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->checkIfSkipTellHTC()V

    .line 1663
    return-void
.end method

.method private haveWIFIconnected()Z
    .locals 5

    .prologue
    .line 2876
    const/4 v2, 0x0

    .line 2877
    .local v2, result:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2878
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2879
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2880
    :cond_0
    const/4 v2, 0x0

    .line 2881
    const-string v3, "OOBE_MainActivity"

    const-string v4, "info.isConnected() is false or info ==null ,haveWIFIconnected() return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :goto_0
    return v2

    .line 2884
    :cond_1
    const/4 v2, 0x1

    .line 2885
    const-string v3, "OOBE_MainActivity"

    const-string v4, "haveWIFIconnected() return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAutoSetTimeZone()Z
    .locals 5

    .prologue
    .line 2235
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto.setting.timezone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2236
    .local v1, timezoneId:Ljava/lang/String;
    const-string v2, "gsm.nitz.time"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2237
    .local v0, strNITZ:Ljava/lang/String;
    const-string v2, "OOBE_MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timezoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NITZ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2239
    const/4 v2, 0x0

    .line 2241
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isBackupPlusEnabled()Z
    .locals 1

    .prologue
    .line 3505
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isVigor:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isVerizon:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCSLSupported()Z
    .locals 9

    .prologue
    .line 3060
    const-string v0, "45400"

    .line 3061
    .local v0, CSL1:Ljava/lang/String;
    const-string v1, "45402"

    .line 3062
    .local v1, CSL2:Ljava/lang/String;
    const-string v2, "45410"

    .line 3064
    .local v2, CSL3:Ljava/lang/String;
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3065
    .local v5, mccMnc:Ljava/lang/String;
    const-string v6, "OOBE_MainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mccMnc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-eqz v6, :cond_1

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x32

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x12

    if-ne v6, v7, :cond_1

    :cond_0
    if-eqz v5, :cond_1

    const-string v6, "45400"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "45402"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "45410"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3070
    :cond_1
    const/4 v4, 0x0

    .line 3078
    :goto_0
    return v4

    .line 3074
    :cond_2
    new-instance v3, Ljava/io/File;

    const-string v6, "/system/customize/csl_mns_map.xml"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3075
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    .line 3076
    .local v4, isFound:Z
    const-string v6, "OOBE_MainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/customize/csl_mns_map.xml found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCollectDiagnosticsSupported()Z
    .locals 1

    .prologue
    .line 3509
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isRuby:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isTMO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMFGBuild()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3295
    const-string v5, "ro.bootloader"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3296
    .local v2, version:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 3308
    :cond_0
    :goto_0
    return v4

    .line 3299
    :cond_1
    const-string v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3300
    .local v3, versions:[Ljava/lang/String;
    array-length v1, v3

    .line 3303
    .local v1, n:I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 3304
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3305
    .local v0, lastVerionNumber:I
    const/16 v5, 0x3e8

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7d0

    if-ge v0, v5, :cond_0

    .line 3306
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isMvnoSupported()Z
    .locals 16

    .prologue
    .line 3083
    const/4 v15, 0x0

    .line 3084
    .local v15, phoneType:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v15

    .line 3085
    const/4 v0, 0x2

    if-ne v15, v0, :cond_0

    .line 3087
    const-string v0, "OOBE_MainActivity"

    const-string v1, "phoneType == Phone.PHONE_TYPE_CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    const/4 v0, 0x0

    .line 3142
    :goto_0
    return v0

    .line 3091
    :cond_0
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3092
    .local v11, mccMnc:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3094
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMccMnc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    const/4 v0, 0x0

    goto :goto_0

    .line 3098
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3099
    .local v12, op:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3101
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    const/4 v0, 0x0

    goto :goto_0

    .line 3105
    :cond_2
    const/4 v10, 0x0

    .line 3107
    .local v10, isMVNO:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3108
    .local v3, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "operator"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3111
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3112
    .local v14, opnamelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_7

    .line 3113
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3115
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3116
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3117
    .local v8, id:Ljava/lang/String;
    const-string v0, "operator"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3119
    .local v13, oper:Ljava/lang/String;
    const/4 v9, 0x0

    .line 3120
    .local v9, isExisted:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 3121
    if-eqz v13, :cond_5

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3122
    const/4 v9, 0x1

    .line 3127
    :cond_3
    if-nez v9, :cond_4

    if-eqz v13, :cond_4

    .line 3128
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3130
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opnamelist.add( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 3120
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3134
    .end local v7           #i:I
    .end local v8           #id:Ljava/lang/String;
    .end local v9           #isExisted:Z
    .end local v13           #oper:Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3137
    :cond_7
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opnamelist.size() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v10, 0x1

    .line 3139
    :goto_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v10, :cond_9

    .line 3140
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3138
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 3142
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isOTA()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3041
    const/4 v0, -0x1

    .line 3042
    .local v0, reqOta:I
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_3

    .line 3044
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ota_required"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3045
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OTA_REQ = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Htc_DEVICE_flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    sget-boolean v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    .line 3054
    :cond_2
    :goto_0
    return v1

    .line 3050
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ota_required"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3051
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OTA_REQ = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Htc_DEVICE_flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    if-eq v0, v1, :cond_2

    move v1, v2

    .line 3054
    goto :goto_0
.end method

.method private isPreviousWifiPage(I)Z
    .locals 5
    .parameter "nActivityId"

    .prologue
    const/4 v2, 0x0

    .line 1346
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1348
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1350
    if-nez v0, :cond_0

    move v1, v2

    .line 1356
    :goto_1
    return v1

    .line 1351
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    .line 1352
    const/4 v1, 0x1

    goto :goto_1

    .line 1346
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1355
    :cond_2
    const-string v1, "OOBE_MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not previous Wifi page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1356
    goto :goto_1
.end method

.method public static isSkipSetupWizard()Z
    .locals 6

    .prologue
    .line 3491
    const-string v0, "skip"

    .line 3493
    .local v0, code:Ljava/lang/String;
    const-string v3, "htc.setupwizard"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3494
    .local v2, result:Ljava/lang/String;
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemProperties htc.setupwizard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3496
    const/4 v1, 0x0

    .line 3501
    :goto_0
    return v1

    .line 3499
    :cond_0
    const-string v3, "skip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3501
    .local v1, compare:Z
    goto :goto_0
.end method

.method private isTopActivityFound()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 930
    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 932
    invoke-direct {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isTopActivityFound(Landroid/content/Context;)Z

    move-result v0

    .line 934
    :cond_0
    return v0
.end method

.method private isTopActivityFound(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    .line 902
    const-string v9, "OOBE_MainActivity"

    const-string v10, "checking top activity"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v9, "activity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 905
    .local v0, activityManager:Landroid/app/ActivityManager;
    const v9, 0x7fffffff

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 906
    .local v6, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    .line 908
    .local v4, isActivityFound:Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 909
    .local v5, task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 910
    .local v1, baseActivity:Landroid/content/ComponentName;
    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 912
    .local v7, topActivity:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 915
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, baseActivityClassName:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 917
    .local v8, topActivityClassName:Ljava/lang/String;
    const-string v9, "OOBE_MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  baseActivity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string v9, "OOBE_MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  topActivity:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 921
    const/4 v4, 0x1

    .line 926
    .end local v1           #baseActivity:Landroid/content/ComponentName;
    .end local v2           #baseActivityClassName:Ljava/lang/String;
    .end local v5           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7           #topActivity:Landroid/content/ComponentName;
    .end local v8           #topActivityClassName:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method private isWIFINetworkSet()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1907
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1908
    .local v0, conMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1910
    .local v1, nwkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 1911
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWIFINetworkSet getType  == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getState == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v2, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1928
    :goto_1
    return v2

    .line 1913
    :cond_0
    const-string v3, "OOBE_MainActivity"

    const-string v4, "isWIFINetworkSet nwkInfo  ==  null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1928
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isWiFiDefaultOn()Z
    .locals 1

    .prologue
    .line 867
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isATT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isUSC:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isVMUS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isVerizon:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isMecha:Z

    if-nez v0, :cond_1

    .line 872
    :cond_0
    const/4 v0, 0x1

    .line 874
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadTellHtcCustomizeData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 13
    .parameter "context"

    .prologue
    .line 696
    const-string v2, "content://customization_settings/SettingTable/application_Crash_Report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 697
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 698
    .local v8, customizationBundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 699
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 701
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 703
    if-eqz v7, :cond_0

    .line 704
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 705
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 706
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 707
    .local v6, columnIndex:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 709
    .local v10, data:[B
    const-string v2, "OOBE_MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "columnIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 711
    .local v12, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v12, v10, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 712
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 713
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .local v9, customizationBundle:Landroid/os/Bundle;
    :try_start_1
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 720
    .end local v6           #columnIndex:I
    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .end local v10           #data:[B
    .end local v12           #parcel:Landroid/os/Parcel;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    :cond_0
    if-eqz v7, :cond_1

    .line 721
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_1
    const/4 v7, 0x0

    .line 725
    :goto_0
    return-object v8

    .line 717
    :catch_0
    move-exception v11

    .line 718
    .local v11, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v2, "OOBE_MainActivity"

    const-string v3, "loadCustomizeData fail"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 720
    if-eqz v7, :cond_2

    .line 721
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_2
    const/4 v7, 0x0

    .line 724
    goto :goto_0

    .line 720
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v7, :cond_3

    .line 721
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_3
    const/4 v7, 0x0

    throw v2

    .line 720
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v6       #columnIndex:I
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    .restart local v10       #data:[B
    .restart local v12       #parcel:Landroid/os/Parcel;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_2

    .line 717
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    :catch_1
    move-exception v11

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_1
.end method

.method private onCalibrationResult(I)V
    .locals 2
    .parameter "nResultCode"

    .prologue
    .line 1553
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 1556
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isMFGBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    const-string v0, "OOBE_MainActivity"

    const-string v1, "MFG build, finish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1562
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method private onCustomizatoinSetupResult(ILandroid/content/Intent;)V
    .locals 4
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    .line 1634
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isSkipSetupWizard()Z

    move-result v0

    .line 1635
    .local v0, isSkipSetupWizard:Z
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCustomizatoinSetupResult, isSkipSetupWizard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    if-eqz v0, :cond_0

    .line 1638
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1656
    :goto_0
    return-void

    .line 1642
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->handlecustomizeList()V

    .line 1644
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isVerizon:Z

    if-eqz v1, :cond_1

    .line 1647
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->enableHomeKeyToLauncher()V

    .line 1650
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startAutoSetDevName()V

    .line 1652
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 1655
    new-instance v1, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;Lcom/htc/android/htcsetupwizard/MainActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onGoogleLoginResult(ILandroid/content/Intent;)V
    .locals 2
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    .line 1850
    const-string v0, "OOBE_MainActivity"

    const-string v1, "Call onGoogleLoginResult!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->asyncCheckGoogleAccount()V

    .line 1854
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 1855
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 1859
    :goto_0
    return-void

    .line 1857
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method private onOtaResult(ILandroid/content/Intent;)V
    .locals 6
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1806
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 1807
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 1824
    :goto_0
    return-void

    .line 1810
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ota_result"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1811
    .local v0, result:I
    if-ne v0, v5, :cond_1

    .line 1812
    sput-boolean v4, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    .line 1813
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeAllOnLineServiceFromList()V

    .line 1822
    :goto_1
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0

    .line 1815
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 1816
    sput-boolean v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    .line 1817
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->addAllOnLineService()V

    goto :goto_1

    .line 1820
    :cond_2
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Get wrong OTA result"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onOtaVzwResult(ILandroid/content/Intent;)V
    .locals 6
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1827
    if-ne v3, p1, :cond_0

    .line 1828
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 1846
    :goto_0
    return-void

    .line 1831
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ota_result"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1832
    .local v0, result:I
    if-ne v0, v3, :cond_1

    .line 1833
    sput-boolean v5, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    .line 1834
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeAllOnLineServiceFromList()V

    .line 1844
    :goto_1
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0

    .line 1836
    :cond_1
    if-nez v0, :cond_2

    .line 1837
    sput-boolean v4, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    .line 1838
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->enableHomeKeyToLauncher()V

    .line 1839
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->addAllOnLineService()V

    goto :goto_1

    .line 1842
    :cond_2
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Get wrong OTA result"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onWIFISettingResult(I)V
    .locals 4
    .parameter "nResultCode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1594
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1595
    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 1597
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mWiFiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1598
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1599
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 1623
    .end local v0           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-void

    .line 1601
    .restart local v0       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->REMOVE_WIFIDETECT_PAGE:Z

    if-eqz v1, :cond_1

    .line 1602
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0

    .line 1604
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startWifiDetectedActivity()V

    goto :goto_0

    .line 1608
    .end local v0           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_2
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    if-ne v2, v1, :cond_4

    .line 1609
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isWIFINetworkSet()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1610
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeAllOnLineServiceFromList()V

    .line 1616
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0

    .line 1613
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->addAllOnLineService()V

    goto :goto_1

    .line 1619
    :cond_4
    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 1620
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method private onWifiDetected(ILandroid/content/Intent;)V
    .locals 4
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1567
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 1568
    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 1570
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 1591
    :goto_0
    return-void

    .line 1573
    :cond_0
    const/4 v0, 0x1

    .line 1574
    .local v0, isStartWifiSetting:Z
    if-eqz p2, :cond_1

    .line 1575
    const-string v1, "WifiDetected"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1576
    :cond_1
    if-eqz v0, :cond_2

    .line 1577
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->callWIFISetting()V

    goto :goto_0

    .line 1580
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 1582
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    if-ne v1, v2, :cond_3

    .line 1583
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 1584
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0

    .line 1588
    :cond_3
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method private preStartWIFIScanService()V
    .locals 3

    .prologue
    .line 1241
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    const-string v1, "OOBE_MainActivity"

    const-string v2, "enableTmoWifiIms = true, skip startWIFIScanService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :goto_0
    return-void

    .line 1245
    :cond_0
    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1248
    .local v0, WIFIService:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.WIFIScanAPService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    const-string v1, "LaunchBySetupWizard"

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1250
    const-string v1, "LaunchedBy"

    const-string v2, "LaunchedByOOBE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    const-string v1, "OOBE_MainActivity"

    const-string v2, "force startWifiScanService, enable Wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1255
    .end local v0           #WIFIService:Landroid/content/Intent;
    :cond_1
    const-string v1, "OOBE_MainActivity"

    const-string v2, "SystemProperties ro.kernel.qemu = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recaculateStepNumber()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1722
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1723
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/StepSetting;

    .line 1724
    .local v0, activity:Lcom/htc/android/htcsetupwizard/StepSetting;
    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->setStepNumber(I)V

    .line 1725
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1726
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/StepSetting;->setIfFinalPage(I)V

    .line 1722
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1728
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/StepSetting;->getIfFinalPage()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1729
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/htc/android/htcsetupwizard/StepSetting;->setIfFinalPage(I)V

    goto :goto_1

    .line 1733
    .end local v0           #activity:Lcom/htc/android/htcsetupwizard/StepSetting;
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->progressBarController(Ljava/util/ArrayList;)V

    .line 1734
    return-void
.end method

.method private registerQuickBootPoweroff()V
    .locals 3

    .prologue
    .line 475
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mPoweroffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    const-string v1, "OOBE_MainActivity"

    const-string v2, "registerQuickBootPoweroff()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method private registerStatusBarReadyReceiver()V
    .locals 3

    .prologue
    .line 484
    const-string v1, "OOBE_MainActivity"

    const-string v2, "registerStatusBarReadyReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 515
    :goto_0
    return-void

    .line 489
    :cond_0
    new-instance v1, Lcom/htc/android/htcsetupwizard/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$4;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 512
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.systemui.statusbar.StatusBarService.STATUS_BAR_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    const-string v1, "OOBE_MainActivity"

    const-string v2, "registerStatusBarReadyReceiver() ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCustomizedValues()V
    .locals 2

    .prologue
    .line 795
    const-string v0, "OOBE_MainActivity"

    const-string v1, "set customized values"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v0, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->enableWiFiSIMService()V

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setupAutoDataSyncValue()V

    .line 801
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setupMobileDataValue()V

    .line 802
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setupAutoSyncDataValue()V

    .line 803
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setupAllowLocationConsent()V

    .line 804
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setupAllowPrivacy()V

    .line 805
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->showWifiSetting()V

    .line 806
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->replaceGMailName()V

    .line 807
    return-void
.end method

.method public static setDefaultHome(Landroid/content/Context;Ljava/lang/String;)V
    .locals 20
    .parameter "context"
    .parameter "homeActivityName"

    .prologue
    .line 3247
    const-string v17, "OOBE_MainActivity"

    const-string v18, "setDefaultHome start ..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3249
    .local v8, homeIntent:Landroid/content/Intent;
    const-string v17, "android.intent.category.HOME"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3250
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 3252
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 3254
    .local v12, myResolveInfo:Landroid/content/pm/ResolveInfo;
    const/high16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 3256
    .local v15, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 3257
    .local v11, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 3258
    move-object v12, v11

    .line 3263
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v12, :cond_2

    .line 3292
    :goto_0
    return-void

    .line 3267
    :cond_2
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 3268
    .local v7, filter:Landroid/content/IntentFilter;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3269
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 3270
    .local v6, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 3271
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3272
    .local v5, cat:Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 3275
    .end local v5           #cat:Ljava/lang/String;
    :cond_3
    const-string v17, "android.intent.category.DEFAULT"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3277
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    .line 3278
    .local v2, N:I
    new-array v0, v2, [Landroid/content/ComponentName;

    move-object/from16 v16, v0

    .line 3279
    .local v16, set:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 3280
    .local v3, bestMatch:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v2, :cond_5

    .line 3281
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 3282
    .local v14, r:Landroid/content/pm/ResolveInfo;
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v17, v16, v9

    .line 3284
    iget v0, v14, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v3, :cond_4

    .line 3285
    iget v3, v14, Landroid/content/pm/ResolveInfo;->match:I

    .line 3280
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3288
    .end local v14           #r:Landroid/content/pm/ResolveInfo;
    :cond_5
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    .local v4, cName:Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-virtual {v13, v7, v3, v0, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3291
    const-string v17, "OOBE_MainActivity"

    const-string v18, "setDefaultHome finished."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setInputField(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 3
    .parameter "context"
    .parameter "edittext"

    .prologue
    .line 3346
    const-string v1, "common_black_inputfield_view"

    const v2, 0x208000a

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3347
    .local v0, inputfield:I
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 3348
    return-void
.end method

.method public static setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "activityId"

    .prologue
    .line 3357
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;ILcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    move-result-object v0

    return-object v0
.end method

.method public static setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;ILcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;
    .locals 17
    .parameter "context"
    .parameter "layout"
    .parameter "activityId"
    .parameter "progressbarInfo"

    .prologue
    .line 3361
    const/high16 v1, -0x4080

    .line 3362
    .local v1, ProgressBarNumber:F
    const-string v13, "oobe_progress_radio_on"

    const v14, 0x7f020034

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 3363
    .local v7, progress_radio_on:I
    new-instance v8, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    invoke-direct {v8}, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;-><init>()V

    .line 3365
    .local v8, retInfo:Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;
    if-eqz p3, :cond_1

    .line 3367
    move-object/from16 v0, p3

    iget v1, v0, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mProgressBarNumber:F

    .line 3368
    move-object/from16 v0, p3

    iget v13, v0, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mProgressBarMaxNumber:I

    sput v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    .line 3369
    move-object/from16 v0, p3

    iget v13, v0, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mDotInterspace:I

    sput v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    .line 3380
    :goto_0
    iput v1, v8, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mProgressBarNumber:F

    .line 3381
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    iput v13, v8, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mProgressBarMaxNumber:I

    .line 3382
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    iput v13, v8, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mDotInterspace:I

    .line 3391
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/high16 v15, 0x3f80

    invoke-direct {v6, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3394
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3395
    .local v4, ivFirst:Landroid/widget/ImageView;
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3396
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3397
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3399
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-nez v13, :cond_3

    .line 3401
    const/4 v11, 0x7

    .line 3402
    .local v11, tempProgressBarMaxSize:I
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    const/4 v14, 0x7

    if-ge v13, v14, :cond_0

    .line 3403
    sget v11, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    .line 3404
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v13, v11, -0x1

    if-ge v2, v13, :cond_a

    .line 3406
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3407
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3408
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3409
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3410
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3404
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3373
    .end local v2           #i:I
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #ivFirst:Landroid/widget/ImageView;
    .end local v6           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #tempProgressBarMaxSize:I
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->getExecutingActivity(I)Lcom/htc/android/htcsetupwizard/StepSetting;

    move-result-object v9

    .line 3374
    .local v9, step:Lcom/htc/android/htcsetupwizard/StepSetting;
    if-eqz v9, :cond_2

    .line 3375
    invoke-virtual {v9}, Lcom/htc/android/htcsetupwizard/StepSetting;->getProgressBarNumber()I

    move-result v13

    int-to-float v1, v13

    goto :goto_0

    .line 3378
    :cond_2
    const-string v13, "OOBE_MainActivity"

    const-string v14, "StepSetting is not in ExecutingActivityList"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3415
    .end local v9           #step:Lcom/htc/android/htcsetupwizard/StepSetting;
    .restart local v4       #ivFirst:Landroid/widget/ImageView;
    .restart local v6       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/high16 v13, 0x3f80

    sub-float v12, v1, v13

    .line 3416
    .local v12, tempProgressBarNumber:F
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    add-int/lit8 v11, v13, -0x2

    .line 3417
    .restart local v11       #tempProgressBarMaxSize:I
    const/4 v10, 0x5

    .line 3419
    .local v10, tempProgressBarDotMaxNumber:I
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    const/4 v14, 0x7

    if-ge v13, v14, :cond_4

    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    add-int/lit8 v10, v13, -0x2

    .line 3421
    :cond_4
    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-ltz v13, :cond_7

    .line 3423
    if-le v11, v10, :cond_5

    .line 3425
    int-to-float v13, v11

    div-float v13, v12, v13

    int-to-float v14, v10

    mul-float v12, v13, v14

    .line 3428
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v10, :cond_8

    .line 3430
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3431
    .restart local v3       #iv:Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3432
    int-to-float v13, v2

    cmpg-float v13, v13, v12

    if-gez v13, :cond_6

    .line 3434
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3440
    :goto_3
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3441
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3428
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3438
    :cond_6
    const v13, 0x7f020033

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 3445
    .end local v2           #i:I
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_7
    const-string v13, "OOBE_MainActivity"

    const-string v14, "tempProgressBarNumber out of range."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_8
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3448
    .local v5, ivLast:Landroid/widget/ImageView;
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3449
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-nez v13, :cond_b

    .line 3451
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3457
    :cond_9
    :goto_4
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3458
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3459
    .end local v5           #ivLast:Landroid/widget/ImageView;
    .end local v10           #tempProgressBarDotMaxNumber:I
    .end local v12           #tempProgressBarNumber:F
    :cond_a
    return-object v8

    .line 3453
    .restart local v5       #ivLast:Landroid/widget/ImageView;
    .restart local v10       #tempProgressBarDotMaxNumber:I
    .restart local v12       #tempProgressBarNumber:F
    :cond_b
    sget v13, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    int-to-float v13, v13

    cmpg-float v13, v1, v13

    if-gez v13, :cond_9

    .line 3455
    const v13, 0x7f020033

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public static setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 3327
    const/high16 v1, 0x7f0d

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3329
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getTitleColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3330
    return-void
.end method

.method public static setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 3339
    const v1, 0x7f0d0001

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3341
    .local v0, divider:Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getTitleDivider(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3342
    return-void
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "setting"
    .parameter "value"

    .prologue
    .line 686
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    const/4 v1, 0x1

    .line 690
    :goto_0
    return v1

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OOBE_MainActivity"

    const-string v2, "error in setting preference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showNotFoundDialog()V
    .locals 1

    .prologue
    .line 2586
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 2587
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeAllOnLineServiceFromList()V

    .line 2588
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->showDialog(I)V

    .line 2589
    return-void
.end method

.method private showProcessingDialog()V
    .locals 3

    .prologue
    .line 520
    const-string v0, "OOBE_MainActivity"

    const-string v1, "showProcessingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 523
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 524
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 525
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 528
    return-void
.end method

.method private startAutoSetDevName()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1669
    const-string v0, "OOBE_MainActivity"

    const-string v1, "startAutoSetDevName()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isAutoSetDevName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsAutoSetDevNameRunning:Z

    if-eqz v0, :cond_1

    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1675
    :cond_1
    const-string v0, "OOBE_MainActivity"

    const-string v1, "startAutoSetDevName(): init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsAutoSetDevNameRunning:Z

    .line 1677
    new-instance v0, Lcom/htc/android/htcsetupwizard/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity$5;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 1706
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    goto :goto_0
.end method

.method private startCalibration(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    .line 2532
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "calibration_points"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2533
    .local v0, strCalibrationFlag:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v1, "com.htc.android.htccalibrate"

    invoke-static {p0, v1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2534
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2535
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isMFGBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2536
    const-string v1, "OOBE_MainActivity"

    const-string v2, "MFG build, finish"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->finish()V

    .line 2549
    :cond_0
    :goto_0
    return-void

    .line 2542
    :cond_1
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isMFGBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2543
    const-string v1, "OOBE_MainActivity"

    const-string v2, "MFG build, finish"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->finish()V

    goto :goto_0

    .line 2547
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method private startConnectionAndSync(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    .line 2179
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startConnectionAndSync(), mbRemoveConnectionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveConnectionType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbRemoveScheduledSync="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveScheduledSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    const-string v0, "RemoveConnectionType"

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveConnectionType:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2183
    const-string v0, "RemoveScheduledSync"

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveScheduledSync:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2184
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2185
    return-void
.end method

.method private startCustomizationSetup(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    .line 2555
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v0, :cond_0

    .line 2556
    const-string v0, "OOBE_MainActivity"

    const-string v1, "Customization has not run."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2568
    :goto_0
    return-void

    .line 2559
    :cond_0
    const-string v0, "OOBE_MainActivity"

    const-string v1, "Customization has run. Called by launch icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->handlecustomizeList()V

    .line 2563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 2566
    new-instance v0, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;Lcom/htc/android/htcsetupwizard/MainActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity$PreloadMailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startGoogleRestore()V
    .locals 3

    .prologue
    .line 316
    const-string v1, "OOBE_MainActivity"

    const-string v2, "start google restore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 318
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.AutoRestoreService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 320
    return-void
.end method

.method private startGuidedTours(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    .line 2391
    const-string v0, "LaunchedBy"

    const-string v1, "LaunchedByOOBE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2393
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2394
    return-void
.end method

.method private startInsertSIMCard(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    const/4 v3, 0x1

    .line 2500
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startInsertSIMCard(): mbSIMAbsent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    if-ne v3, v0, :cond_1

    .line 2503
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isBlockNoSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2505
    const-string v0, "ShowNextButton"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2507
    :cond_0
    const-string v0, "PhoneFunction"

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbPhoneFunc:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2508
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2515
    :goto_0
    return-void

    .line 2513
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method private startLanguageSetting(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    const/4 v3, 0x3

    .line 2406
    const-string v1, "ProgressBarNumber"

    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/StepSetting;->getProgressBarNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2408
    const-string v0, "ProgressBarMaxNumber"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2409
    const-string v0, "ProgressBarDotMaxNumber"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2410
    const-string v0, "ProgressBarDotInterspace"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2411
    invoke-direct {p0, p1, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2412
    return-void
.end method

.method private startMailHuxServiceActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2363
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.huxservice.HuxService"

    invoke-static {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isActivityAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2367
    const-string v2, "OOBE_MainActivity"

    const-string v3, "Not found Activity HuxService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 2387
    :goto_0
    return-void

    .line 2372
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2373
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.huxservice.HuxService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2375
    const-string v2, "CallingActivity"

    const/16 v3, 0x5e

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2376
    const-string v2, "isRestoreAccountOnly"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2379
    const/16 v2, 0x191

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2382
    :catch_0
    move-exception v0

    .line 2384
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "OOBE_MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException!, intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startOperatorSetting(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    const/4 v3, 0x2

    .line 2397
    const-string v1, "ProgressBarNumber"

    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/StepSetting;->getProgressBarNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2399
    const-string v0, "ProgressBarMaxNumber"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2400
    const-string v0, "ProgressBarDotMaxNumber"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2401
    const-string v0, "ProgressBarDotInterspace"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2402
    invoke-direct {p0, p1, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2403
    return-void
.end method

.method private startTellHtc(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    .line 2189
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTellHtc(), mLaunchByIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    const-string v0, "FirstTellHtc"

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mFirstTellHtc:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2191
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2192
    return-void
.end method

.method private startVodafone360(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    const/16 v3, 0x16

    .line 2415
    const-string v1, "ProgressBarNumber"

    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/StepSetting;->getProgressBarNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2417
    const-string v0, "ProgressBarMaxNumber"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2418
    const-string v0, "ProgressBarDotMaxNumber"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2419
    const-string v0, "ProgressBarDotInterspace"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2420
    invoke-direct {p0, p1, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2421
    return-void
.end method

.method private startVzwBackupAssistant(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    const/16 v3, 0x17

    .line 2424
    const-string v1, "ProgressBarNumber"

    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/StepSetting;->getProgressBarNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2426
    const-string v0, "ProgressBarMaxNumber"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2427
    const-string v0, "ProgressBarDotMaxNumber"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2428
    const-string v0, "ProgressBarDotInterspace"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2429
    invoke-direct {p0, p1, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2430
    return-void
.end method

.method private startVzwSSO(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    const/16 v3, 0x19

    .line 2433
    const-string v1, "ProgressBarNumber"

    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/StepSetting;->getProgressBarNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2435
    const-string v0, "ProgressBarMaxNumber"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2436
    const-string v0, "ProgressBarDotMaxNumber"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2437
    const-string v0, "ProgressBarDotInterspace"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2438
    invoke-direct {p0, p1, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2439
    return-void
.end method

.method private startWifiDetectedActivity()V
    .locals 3

    .prologue
    .line 2571
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2572
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.activity.WiFiNetworksDetectedActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2573
    const-string v1, "LaunchBySetupWizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2574
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2575
    return-void
.end method

.method private stopAutoSetDevName()V
    .locals 4

    .prologue
    .line 1710
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device Name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsAutoSetDevNameRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    if-nez v0, :cond_1

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1715
    :cond_1
    const-string v0, "OOBE_MainActivity"

    const-string v1, "stopAutoSetDevName()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 1717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 1718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsAutoSetDevNameRunning:Z

    goto :goto_0
.end method

.method public static switchKeyFocus(Landroid/app/Activity;II)V
    .locals 4
    .parameter "activity"
    .parameter "back"
    .parameter "next"

    .prologue
    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, btnBack:Landroid/widget/Button;
    const/4 v1, 0x0

    .line 1054
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btnBack:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1055
    .restart local v0       #btnBack:Landroid/widget/Button;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #btnNext:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 1057
    .restart local v1       #btnNext:Landroid/widget/Button;
    :cond_1
    if-nez v1, :cond_2

    .line 1069
    :goto_0
    return-void

    .line 1058
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 1061
    :cond_3
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 1062
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0

    .line 1066
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 1067
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0
.end method

.method private unregisterPoweroffReceiver()V
    .locals 4

    .prologue
    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mPoweroffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 462
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mPoweroffReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 466
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while unregisterReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected addAllOnLineService()V
    .locals 13

    .prologue
    .line 1990
    const-string v11, "OOBE_MainActivity"

    const-string v12, "addAllOnLineService"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget-object v11, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1993
    .local v9, nSize:I
    const/4 v4, 0x0

    .line 1994
    .local v4, bSetupAdditionalAccounts:Z
    const/4 v2, 0x0

    .line 1995
    .local v2, bGoogleLogin:Z
    const/4 v0, 0x0

    .line 1996
    .local v0, bAccountMgr:Z
    const/4 v6, 0x0

    .line 1997
    .local v6, bSocialNetwork:Z
    const/4 v3, 0x0

    .line 1998
    .local v3, bHTCAcount:Z
    const/4 v5, 0x0

    .line 1999
    .local v5, bSetupMailSocialNetwork:Z
    const/4 v1, 0x0

    .line 2001
    .local v1, bFacebook:Z
    iget v10, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .line 2003
    .local v10, stepBeforeOnlineService:I
    iget v7, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 2005
    iget-object v11, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v11}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v8

    .line 2006
    .local v8, nActivityId:I
    sparse-switch v8, :sswitch_data_0

    .line 2003
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2009
    :sswitch_0
    const/4 v2, 0x1

    .line 2010
    goto :goto_1

    .line 2013
    :sswitch_1
    const/4 v0, 0x1

    .line 2014
    goto :goto_1

    .line 2017
    :sswitch_2
    const/4 v6, 0x1

    .line 2018
    goto :goto_1

    .line 2021
    :sswitch_3
    const/4 v3, 0x1

    .line 2022
    goto :goto_1

    .line 2025
    :sswitch_4
    const/4 v4, 0x1

    .line 2026
    goto :goto_1

    .line 2029
    :sswitch_5
    const/4 v5, 0x1

    .line 2030
    goto :goto_1

    .line 2033
    :sswitch_6
    const/4 v1, 0x1

    .line 2034
    goto :goto_1

    .line 2039
    :sswitch_7
    move v10, v7

    goto :goto_1

    .line 2044
    .end local v8           #nActivityId:I
    :cond_0
    if-nez v2, :cond_1

    .line 2046
    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0xa

    invoke-direct {p0, v11, v12}, Lcom/htc/android/htcsetupwizard/MainActivity;->addActivityToList(II)V

    .line 2049
    :cond_1
    if-nez v4, :cond_2

    .line 2051
    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0x1a

    invoke-direct {p0, v11, v12}, Lcom/htc/android/htcsetupwizard/MainActivity;->addActivityToList(II)V

    .line 2054
    :cond_2
    if-nez v6, :cond_3

    .line 2056
    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lcom/htc/android/htcsetupwizard/MainActivity;->addActivityToList(II)V

    .line 2059
    :cond_3
    if-nez v0, :cond_4

    .line 2061
    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lcom/htc/android/htcsetupwizard/MainActivity;->addActivityToList(II)V

    .line 2064
    :cond_4
    if-nez v3, :cond_5

    .line 2066
    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0x15

    invoke-direct {p0, v11, v12}, Lcom/htc/android/htcsetupwizard/MainActivity;->addActivityToList(II)V

    .line 2069
    :cond_5
    if-nez v5, :cond_6

    .line 2071
    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0x1f

    invoke-direct {p0, v11, v12}, Lcom/htc/android/htcsetupwizard/MainActivity;->addActivityToList(II)V

    .line 2074
    :cond_6
    if-nez v1, :cond_7

    .line 2076
    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0x1d

    invoke-direct {p0, v11, v12}, Lcom/htc/android/htcsetupwizard/MainActivity;->addActivityToList(II)V

    .line 2079
    :cond_7
    return-void

    .line 2006
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_7
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0x15 -> :sswitch_3
        0x1a -> :sswitch_4
        0x1d -> :sswitch_6
        0x1e -> :sswitch_7
        0x1f -> :sswitch_5
    .end sparse-switch
.end method

.method public attemptScan()V
    .locals 4

    .prologue
    const/16 v3, 0xc9

    const/16 v2, 0x65

    .line 2841
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2843
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isWIFINetworkAvailable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2844
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeDialog(I)V

    .line 2845
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->callWIFISetting()V

    .line 2859
    :goto_0
    return-void

    .line 2848
    :cond_0
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mScanRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mScanRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 2849
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-Scan mScanRetryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mScanRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2854
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeDialog(I)V

    .line 2855
    const-string v0, "OOBE_MainActivity"

    const-string v1, "show Not Found Dialog by attemptScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->showNotFoundDialog()V

    goto :goto_0
.end method

.method protected backToValidStepAndSetDefValue()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1158
    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .line 1159
    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-gez v3, :cond_1

    .line 1160
    iput v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    const/4 v2, 0x0

    .line 1165
    .local v2, nJumpStep:I
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_6

    .line 1166
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v3}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    .line 1167
    .local v1, nActivityCode:I
    const/16 v3, 0x8

    if-ne v3, v1, :cond_4

    sget-boolean v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    if-ne v4, v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isWIFINetworkAvailable()Z

    move-result v3

    if-eq v4, v3, :cond_4

    .line 1170
    :cond_2
    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWifiChecked:Z

    .line 1165
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1173
    :cond_4
    const/4 v3, 0x4

    if-ne v3, v1, :cond_5

    sget-boolean v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    if-nez v3, :cond_5

    .line 1175
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1177
    :cond_5
    const/16 v3, 0xd

    if-ne v3, v1, :cond_6

    .line 1178
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isAutoSetTimeZone()Z

    move-result v3

    if-ne v4, v3, :cond_3

    .line 1179
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1186
    .end local v1           #nActivityCode:I
    :cond_6
    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .line 1187
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backToValidStep, mnCurStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nJumpStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-gez v3, :cond_0

    .line 1189
    iput v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    goto :goto_0
.end method

.method protected broadcastDataSyncOption()V
    .locals 2

    .prologue
    .line 1289
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->isFunctionSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1292
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.htc.intent.action.AUTO_DATA_SYNC_CHECKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected broadcastGoogleRestoreStarted()V
    .locals 3

    .prologue
    .line 1283
    const-string v1, "OOBE_MainActivity"

    const-string v2, "broadcastGoogleRestoreStarted()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.htc.intent.action.GOOGLERESTORE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1286
    return-void
.end method

.method protected broadcastHome()V
    .locals 3

    .prologue
    .line 1335
    const-string v1, "OOBE_MainActivity"

    const-string v2, "broadcastHome"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1337
    .local v0, home:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1341
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1342
    return-void
.end method

.method protected broadcastSetupCompleted()V
    .locals 3

    .prologue
    .line 1310
    const-string v1, "OOBE_MainActivity"

    const-string v2, "broadcastSetupCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.android.ACTION_SETUP_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1312
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1313
    return-void
.end method

.method protected broadcastSetupWizardFinished()V
    .locals 3

    .prologue
    .line 1297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.htc.intent.action.SETUP_WIZARD_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1299
    const-string v1, "SetupWizardLaunchedBy"

    const-string v2, "LaunchedByIcon"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1305
    return-void

    .line 1302
    :cond_0
    const-string v1, "SetupWizardLaunchedBy"

    const-string v2, "LaunchedBySystem"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected checkSetupWizardHasRun()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 770
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "setup_wizard_has_run"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 772
    .local v0, hasSetupWizRun:I
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasSetupWizRun = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected customizeList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1737
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-nez v4, :cond_0

    .line 1738
    new-instance v4, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v4, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    .line 1740
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xcc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1743
    :cond_0
    const/4 v0, 0x0

    .line 1744
    .local v0, count:I
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1745
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 1747
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v4}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v2

    .line 1748
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->isFunctionSupported(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1751
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1753
    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    .line 1755
    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveTimezonePage:Z

    .line 1745
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1760
    :cond_2
    const/16 v4, 0x1d

    if-ne v2, v4, :cond_3

    .line 1762
    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbHasFacebookPage:Z

    .line 1764
    :cond_3
    const/16 v4, 0x11

    if-eq v2, v4, :cond_4

    const/16 v4, 0x21

    if-ne v2, v4, :cond_5

    .line 1767
    :cond_4
    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbHaveOtaPage:Z

    .line 1769
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1773
    .end local v2           #id:I
    :cond_6
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1774
    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveConnectionType:Z

    .line 1775
    :cond_7
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1776
    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveScheduledSync:Z

    .line 1778
    :cond_8
    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveConnectionType:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveScheduledSync:Z

    if-eqz v4, :cond_9

    .line 1780
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeActivityFromList(I)V

    .line 1783
    :cond_9
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->recaculateStepNumber()V

    .line 1786
    sget-boolean v4, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    if-ne v6, v4, :cond_a

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isWIFINetworkSet()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1787
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeAllOnLineServiceFromList()V

    .line 1790
    :cond_a
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v4, :cond_b

    .line 1792
    const-string v4, "OOBE_MainActivity"

    const-string v5, "Wifi-only, remove relative pages"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeWifiOnlyRelatedFromList()V

    .line 1803
    :cond_b
    return-void
.end method

.method protected disableAddGoogleAccount()V
    .locals 3

    .prologue
    .line 858
    const-string v0, "OOBE_MainActivity"

    const-string v1, "disableAddGoogleAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "last_setup_shown"

    const-string v2, "eclair_1"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 860
    return-void
.end method

.method protected disableGoogleSetupWizard()V
    .locals 5

    .prologue
    .line 846
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.setupwizard"

    const-string v3, "com.android.setupwizard.SetupWizardActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    .local v1, mainComponent:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 849
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "OOBE_MainActivity"

    const-string v3, "can not find Google Setup Wizard"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected disableSelf(Z)V
    .locals 5
    .parameter "bDisableSelf"

    .prologue
    const/4 v4, 0x1

    .line 1320
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableSelf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    if-eqz p1, :cond_0

    .line 1323
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1324
    .local v0, mainComponent:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1327
    .end local v0           #mainComponent:Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1329
    return-void
.end method

.method protected disableWiFiIfNoWiFiNwk()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2891
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mWiFiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2893
    .local v0, arWifiConf:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v2, "OOBE_MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableWiFiIfNoWiFiNwk()  mbWiFiHaveBeenConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->haveWIFIconnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    if-eqz v2, :cond_3

    .line 2899
    :cond_1
    if-eqz v0, :cond_2

    .line 2901
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2902
    .local v1, nsize:I
    const-string v2, "OOBE_MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total wifi configurated network number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    .end local v1           #nsize:I
    :goto_0
    return-void

    .line 2904
    :cond_2
    const-string v2, "OOBE_MainActivity"

    const-string v3, "arWifiConf == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2910
    :cond_3
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mWiFiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2911
    const-string v2, "OOBE_MainActivity"

    const-string v3, "Set wifi disable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v2, :cond_4

    .line 2913
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mWiFiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2915
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method enableHomeKeyToLauncher()V
    .locals 2

    .prologue
    .line 1627
    const-string v0, "OOBE_MainActivity"

    const-string v1, "enableHomeKeyToLauncher()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbEnableHomeKeyToLauncher:Z

    .line 1629
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1201
    const-string v2, "OOBE_MainActivity"

    const-string v3, "finish"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExceptionCase:Z

    if-eqz v2, :cond_0

    .line 1206
    const-class v2, Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct {p0, v2, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->disableComponent(Ljava/lang/Class;I)V

    .line 1207
    const-class v2, Lcom/htc/android/htcsetupwizard/PostSetup;

    invoke-direct {p0, v2, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->disableComponent(Ljava/lang/Class;I)V

    .line 1208
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "setup_wizard_has_run"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1209
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExceptionCase:Z

    .line 1212
    :cond_0
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->isFinishCalled:Z

    if-ne v2, v0, :cond_1

    .line 1214
    const-string v0, "OOBE_MainActivity"

    const-string v1, "finish is called before, should not call again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :goto_0
    return-void

    .line 1217
    :cond_1
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->isFinishCalled:Z

    .line 1219
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mPoweroffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 1221
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->unregisterPoweroffReceiver()V

    .line 1226
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->broadcastDataSyncOption()V

    .line 1227
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->broadcastSetupWizardFinished()V

    .line 1230
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isShooter:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isSprint:Z

    if-eqz v2, :cond_3

    .line 1231
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->broadcastSetupCompleted()V

    .line 1233
    :cond_3
    iget v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-ltz v2, :cond_4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->disableSelf(Z)V

    .line 1234
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->broadcastHome()V

    .line 1235
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1233
    goto :goto_1
.end method

.method protected informActivityBackKeySelfFinish(Landroid/content/Intent;I)V
    .locals 6
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2443
    const/4 v0, 0x0

    .line 2444
    .local v0, bFinishBackKey:Z
    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-nez v1, :cond_1

    .line 2445
    const/4 v0, 0x1

    .line 2462
    :cond_0
    :goto_0
    const-string v1, "SelfFinishBackKeyPressed"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2463
    const-string v1, "LaunchByIcon"

    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2464
    const-string v1, "LaunchedNotByOOBE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2465
    const-string v4, "GoToNextStep"

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToPrevious:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2467
    if-ne v2, v0, :cond_5

    .line 2468
    iput p2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mFirstActivity:I

    .line 2469
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish by back key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Launch by icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFirstActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mFirstActivity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :goto_2
    return-void

    .line 2446
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    if-nez v1, :cond_2

    .line 2447
    const/4 v0, 0x1

    goto :goto_0

    .line 2448
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 2449
    const/4 v0, 0x1

    goto :goto_0

    .line 2450
    :cond_3
    const/16 v4, 0x12d

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    if-ne v4, v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsCslFirstActivity:Z

    if-nez v1, :cond_0

    .line 2452
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 2465
    goto :goto_1

    .line 2471
    :cond_5
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Need to back to previous activity aftert back key pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected isFunctionSupported(I)Z
    .locals 4
    .parameter "nActivityCode"

    .prologue
    const/4 v3, 0x1

    .line 2920
    const/4 v0, 0x1

    .line 2921
    .local v0, result:Z
    sget-object v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 2922
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-eqz v1, :cond_1

    .line 2923
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v1, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowStep(I)Z

    move-result v0

    .line 2929
    :goto_0
    if-ne v0, v3, :cond_0

    .line 2931
    const/16 v1, 0x12d

    if-ne p1, v1, :cond_2

    .line 2932
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isCSLSupported()Z

    move-result v0

    .line 2933
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCSLSupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    :cond_0
    :goto_1
    return v0

    .line 2926
    :cond_1
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Before customizeList, customizationReader is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2938
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 2939
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isMvnoSupported()Z

    move-result v0

    .line 2940
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMvnoSupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2945
    :cond_3
    const/16 v1, 0xf

    if-ne p1, v1, :cond_4

    .line 2946
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    .line 2947
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Back up page supported? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2952
    :cond_4
    const/16 v1, 0x15

    if-ne p1, v1, :cond_5

    .line 2953
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 2954
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is HTC Account page supported? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2959
    :cond_5
    const/16 v1, 0xd

    if-ne p1, v1, :cond_7

    .line 2960
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isAutoSetTimeZone()Z

    move-result v1

    if-ne v3, v1, :cond_6

    .line 2961
    const/4 v0, 0x0

    .line 2962
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Auto Set Time Zone? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2965
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2970
    :cond_7
    const/16 v1, 0x11

    if-ne p1, v1, :cond_9

    .line 2972
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isOTA()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2973
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2975
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2980
    :cond_9
    const/16 v1, 0x21

    if-ne p1, v1, :cond_b

    .line 2982
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isOTA()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2983
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2985
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2990
    :cond_b
    const/16 v1, 0x16

    if-ne p1, v1, :cond_c

    .line 2991
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVF360Flag:Z

    .line 2992
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Vodafone 360 page supported? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2997
    :cond_c
    const/16 v1, 0x31

    if-ne p1, v1, :cond_e

    .line 2998
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isCollectDiagnosticsSupported()Z

    move-result v0

    .line 2999
    if-eqz v0, :cond_d

    .line 3000
    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->queryCIQEnabled(Landroid/content/Context;)V

    .line 3002
    :cond_d
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCollectDiagnosticsSupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3005
    :cond_e
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-eqz v1, :cond_11

    .line 3008
    const/16 v1, 0x14

    if-ne p1, v1, :cond_f

    .line 3009
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v1, "com.futuredial"

    invoke-static {p0, v1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3010
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Transfer Data package exist? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3014
    :cond_f
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_10

    .line 3016
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v1, "com.htc.feedback"

    invoke-static {p0, v1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3017
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcFeedback exist? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3021
    :cond_10
    const/16 v1, 0x1d

    if-ne p1, v1, :cond_0

    .line 3023
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v1, "com.facebook.katana"

    invoke-static {p0, v1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3024
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.facebook.katana exist? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3029
    :cond_11
    const-string v1, "OOBE_MainActivity"

    const-string v2, "customize == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3034
    :cond_12
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not in executing activity map, activity id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method protected isWIFINetworkAvailable()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2082
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->isFunctionSupported(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2103
    :goto_0
    return v4

    .line 2086
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mWiFiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 2087
    .local v0, APlist:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_2

    .line 2088
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2089
    .local v3, nAPSize:I
    const-string v5, "OOBE_MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWIFINetworkAvailable nAPSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2092
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2093
    .local v1, ap:Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[IBSS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2097
    const-string v4, "OOBE_MainActivity"

    const-string v5, "network found"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const/4 v4, 0x1

    goto :goto_0

    .line 2091
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2102
    .end local v1           #ap:Landroid/net/wifi/ScanResult;
    .end local v2           #i:I
    .end local v3           #nAPSize:I
    :cond_2
    const-string v5, "OOBE_MainActivity"

    const-string v6, "network NOT found"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logForUserProfile()V
    .locals 4

    .prologue
    .line 2210
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 2213
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "is_sysTimeChanged"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "is_timechanged"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 2218
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 2221
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 2222
    return-void
.end method

.method protected nextActivity(Z)V
    .locals 3
    .parameter "bNext"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1102
    monitor-enter p0

    .line 1103
    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    :try_start_0
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToPrevious:Z

    .line 1104
    if-ne v1, p1, :cond_2

    .line 1105
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .line 1124
    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1131
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbBack:Z

    if-eqz v0, :cond_4

    .line 1132
    const/high16 v0, 0x7f04

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->overridePendingTransition(II)V

    .line 1136
    :goto_1
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnActivityResult:Z

    if-eqz v0, :cond_5

    .line 1138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnActivityResult:Z

    .line 1139
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1154
    :goto_2
    monitor-exit p0

    .line 1155
    :goto_3
    return-void

    .line 1108
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->backToValidStepAndSetDefValue()V

    .line 1109
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-nez v0, :cond_1

    .line 1110
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-eqz v0, :cond_3

    .line 1111
    const-string v0, "OOBE_MainActivity"

    const-string v1, "Setup is finished by reaching to customization activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExceptionCase:Z

    .line 1113
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1114
    monitor-exit p0

    goto :goto_3

    .line 1154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1117
    :cond_3
    :try_start_1
    const-string v0, "OOBE_MainActivity"

    const-string v1, "Back to customization activity, go to the 2rd page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnActivityResult:Z

    .line 1119
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    goto :goto_0

    .line 1134
    :cond_4
    const v0, 0x7f040001

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 1142
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->executeCurrentActivity()V

    goto :goto_2

    .line 1146
    :cond_6
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnCurStep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExecutingActivityList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnActivityResult:Z

    if-eqz v0, :cond_7

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnActivityResult:Z

    .line 1150
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1152
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/16 v7, 0x12e

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1362
    iput-boolean v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnActivityResult:Z

    .line 1363
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    if-ne p2, v6, :cond_2

    .line 1367
    iput-boolean v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbBack:Z

    .line 1368
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/MainActivity;->isPreviousWifiPage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1370
    iput-boolean v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 1376
    :goto_0
    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityCode:I

    if-eq v1, p1, :cond_0

    .line 1377
    const/16 v1, 0x10

    if-ne p1, v1, :cond_3

    .line 1387
    :cond_0
    if-nez p2, :cond_4

    .line 1388
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Activity RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 1550
    :goto_1
    :sswitch_0
    return-void

    .line 1372
    :cond_1
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    goto :goto_0

    .line 1374
    :cond_2
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbBack:Z

    goto :goto_0

    .line 1382
    :cond_3
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nRequestCode != mStartActivityCode, mStartActivityCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1393
    :cond_4
    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mFirstActivity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mFirstActivity:I

    if-ne v1, p1, :cond_5

    if-ne v6, p2, :cond_5

    .line 1395
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Finished by first activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExceptionCase:Z

    .line 1397
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1401
    :cond_5
    const/4 v1, 0x3

    if-ne v1, p2, :cond_6

    .line 1402
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Finished by TMO desktop ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1407
    :cond_6
    sparse-switch p1, :sswitch_data_0

    .line 1538
    :cond_7
    :goto_2
    if-ne v6, p2, :cond_16

    .line 1541
    iput-boolean v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 1542
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_1

    .line 1412
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->onCalibrationResult(I)V

    goto :goto_1

    .line 1417
    :sswitch_2
    const/16 v1, 0x20

    if-ne p2, v1, :cond_8

    .line 1418
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LocationConsentHasRun"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1419
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "InternetConnectionHasRun"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1422
    :cond_8
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcsetupwizard/MainActivity;->onCustomizatoinSetupResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 1426
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isMvnoSupported()Z

    move-result v0

    .line 1427
    .local v0, result:Z
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onActivityResult for CSL isMvnoSupported()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    if-nez v0, :cond_9

    .line 1429
    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeActivityFromList(I)V

    .line 1430
    :cond_9
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 1431
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto/16 :goto_1

    .line 1435
    .end local v0           #result:Z
    :sswitch_4
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcsetupwizard/MainActivity;->onWifiDetected(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1439
    :sswitch_5
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWifiChecked:Z

    .line 1440
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isAutoSetTimeZone()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeActivityFromList(I)V

    .line 1442
    :cond_a
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    if-nez v1, :cond_b

    .line 1443
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->haveWIFIconnected()Z

    move-result v1

    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    .line 1444
    const-string v1, "OOBE_MainActivity"

    const-string v2, " onActivityResult [Wifi_Setting]for mbWiFiHaveBeenConnected set from false to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_b
    invoke-direct {p0, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->onWIFISettingResult(I)V

    goto/16 :goto_1

    .line 1450
    :sswitch_6
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcsetupwizard/MainActivity;->onOtaResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1454
    :sswitch_7
    const-string v1, "OOBE_MainActivity"

    const-string v2, "##########  HTCSetupWizardConstants.ACTIVITY_CODE_OTAVZW enableHomeKeyToLauncher() ###"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcsetupwizard/MainActivity;->onOtaVzwResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1460
    :sswitch_8
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isBackupPlusEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1462
    if-ne p2, v6, :cond_c

    .line 1463
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto/16 :goto_1

    .line 1465
    :cond_c
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startMailHuxServiceActivity()V

    goto/16 :goto_1

    .line 1470
    :cond_d
    if-ne v6, p2, :cond_e

    .line 1471
    const-string v1, "OOBE_MainActivity"

    const-string v2, "nextActivity false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iput-boolean v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 1473
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto/16 :goto_1

    .line 1475
    :cond_e
    const-string v1, "OOBE_MainActivity"

    const-string v2, "nextActivity true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 1477
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto/16 :goto_1

    .line 1484
    :sswitch_9
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isBackupPlusEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1486
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    if-nez v1, :cond_f

    .line 1487
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->haveWIFIconnected()Z

    move-result v1

    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    .line 1488
    const-string v1, "OOBE_MainActivity"

    const-string v2, " onActivityResult [GoogleLoginResult]for mbWiFiHaveBeenConnected set from false to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_f
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcsetupwizard/MainActivity;->onGoogleLoginResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1494
    :cond_10
    if-ne v6, p2, :cond_11

    .line 1495
    const-string v1, "OOBE_MainActivity"

    const-string v2, "nextActivity false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iput-boolean v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 1497
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto/16 :goto_1

    .line 1499
    :cond_11
    const-string v1, "OOBE_MainActivity"

    const-string v2, "nextActivity true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 1501
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto/16 :goto_1

    .line 1507
    :sswitch_a
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    if-nez v1, :cond_12

    .line 1508
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->haveWIFIconnected()Z

    move-result v1

    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    .line 1509
    const-string v1, "OOBE_MainActivity"

    const-string v2, " onActivityResult [GoogleLoginResult]for mbWiFiHaveBeenConnected set from false to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_12
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcsetupwizard/MainActivity;->onGoogleLoginResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1515
    :sswitch_b
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isBackupPlusEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1517
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    if-nez v1, :cond_13

    .line 1518
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->haveWIFIconnected()Z

    move-result v1

    sput-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWiFiHaveBeenConnected:Z

    .line 1519
    const-string v1, "OOBE_MainActivity"

    const-string v2, " onActivityResult [GoogleLoginResult]for mbWiFiHaveBeenConnected set from false to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_13
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcsetupwizard/MainActivity;->onGoogleLoginResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1525
    :cond_14
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->asyncCheckGoogleAccount()V

    .line 1526
    if-ne p2, v6, :cond_15

    .line 1527
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto/16 :goto_1

    .line 1528
    :cond_15
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startMailHuxServiceActivity()V

    goto/16 :goto_1

    .line 1533
    :sswitch_c
    if-eq p2, v6, :cond_7

    .line 1535
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mFirstTellHtc:Z

    goto/16 :goto_2

    .line 1545
    :cond_16
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    .line 1546
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto/16 :goto_1

    .line 1407
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x8 -> :sswitch_5
        0xa -> :sswitch_b
        0x10 -> :sswitch_4
        0x11 -> :sswitch_6
        0x17 -> :sswitch_8
        0x1a -> :sswitch_9
        0x1e -> :sswitch_c
        0x1f -> :sswitch_a
        0x21 -> :sswitch_7
        0x12d -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 891
    const-string v0, "OOBE_MainActivity"

    const-string v1, "onConigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 893
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 625
    const-string v4, "OOBE_MainActivity"

    const-string v5, "onCreate OOBE 1.1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->disableKeys()V

    .line 628
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->disableAddGoogleAccount()V

    .line 629
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->disableGoogleSetupWizard()V

    .line 630
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 632
    const-string v4, "OOBE_MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcBuildFlag.Htc_DEVICE_flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v4, "OOBE_MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcBuildFlag.Htc_PROJECT_flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->checkSetupWizardHasRun()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 638
    iput v8, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    .line 639
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->finish()V

    .line 681
    :goto_0
    return-void

    .line 643
    :cond_0
    iput-boolean v7, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsExist:Z

    .line 646
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isBackupPlusEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 647
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.vmm.service.VMMForOOBEService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v3, serviceIntent:Landroid/content/Intent;
    new-instance v4, Lcom/htc/android/htcsetupwizard/MainActivity$VMMForBootUpServiceConnection;

    invoke-direct {v4}, Lcom/htc/android/htcsetupwizard/MainActivity$VMMForBootUpServiceConnection;-><init>()V

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 649
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v7}, Lcom/htc/android/htcsetupwizard/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 652
    .end local v3           #serviceIntent:Landroid/content/Intent;
    :cond_1
    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v4, :cond_3

    .line 654
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->registerQuickBootPoweroff()V

    .line 655
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->registerStatusBarReadyReceiver()V

    .line 656
    iput-boolean v7, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mFirstTellHtc:Z

    .line 680
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/MainActivity;->doMainFunc(Landroid/os/Bundle;)V

    goto :goto_0

    .line 661
    :cond_3
    new-instance v2, Landroid/content/ComponentName;

    const-class v4, Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 662
    .local v2, mainComponent:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 663
    .local v0, enabled_state:I
    const-string v4, "OOBE_MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enabled_state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setup_wizard_has_run"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 667
    .local v1, hasSetupWizRun:I
    const-string v4, "OOBE_MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasSetupWizRun = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    if-nez v1, :cond_2

    .line 671
    iput-boolean v7, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExceptionCase:Z

    .line 672
    const-string v4, "OOBE_MainActivity"

    const-string v5, "Exception ! setup_wizard_has_run had been reset !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-class v4, Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct {p0, v4, v7}, Lcom/htc/android/htcsetupwizard/MainActivity;->enableComponent(Ljava/lang/Class;I)V

    .line 675
    const-class v4, Lcom/htc/android/htcsetupwizard/PostSetup;

    invoke-direct {p0, v4, v7}, Lcom/htc/android/htcsetupwizard/MainActivity;->enableComponent(Ljava/lang/Class;I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 2593
    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    .line 2594
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->createScanAPDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 2601
    :goto_0
    return-object v0

    .line 2595
    :cond_0
    const/16 v0, 0x66

    if-ne v0, p1, :cond_1

    .line 2596
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->createWIFIConfirmation()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2597
    :cond_1
    const/16 v0, 0x67

    if-ne v0, p1, :cond_2

    .line 2598
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->createWIFIScanAPResult()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2601
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/16 v5, 0xcc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 986
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 988
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsExist:Z

    .line 989
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isFinishing()Z

    move-result v1

    if-ne v4, v1, :cond_5

    .line 990
    const-string v1, "OOBE_MainActivity"

    const-string v2, "onDestroy, Finish by self"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    sput-boolean v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsDestroyByOthers:Z

    .line 997
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->enableStatusBar()V

    .line 1000
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isBackupPlusEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1004
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbRemoveTimezonePage:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v1, :cond_1

    .line 1006
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Start log, is_timechanged = true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->logForUserProfile()V

    .line 1010
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->stopAutoSetDevName()V

    .line 1013
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isWiFiDefaultOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1021
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mWiFiMgr:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    .line 1022
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->disableWiFiIfNoWiFiNwk()V

    .line 1025
    :cond_2
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeDialog(I)V

    .line 1026
    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeDialog(I)V

    .line 1027
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeDialog(I)V

    .line 1028
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->dismissProcessingDialog()V

    .line 1030
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1031
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1032
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1033
    const-string v1, "OOBE_MainActivity"

    const-string v2, "set customized values doesn\'t complete"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1037
    :cond_3
    sget-object v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1039
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1041
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_4

    .line 1042
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1043
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1045
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->enableKeys()V

    .line 1047
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1048
    return-void

    .line 993
    :cond_5
    const-string v1, "OOBE_MainActivity"

    const-string v2, "onDestroy, Finish by others"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    sput-boolean v4, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsDestroyByOthers:Z

    goto/16 :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Stop wifi scan service exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1074
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    sparse-switch p1, :sswitch_data_0

    .line 1084
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1082
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1076
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 976
    const-string v0, "OOBE_MainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnPause:Z

    .line 978
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 980
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 981
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2607
    const-string v0, "OOBE_MainActivity"

    const-string v1, "onPrepareDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2609
    const/16 v0, 0x67

    if-ne v0, p1, :cond_0

    .line 2610
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbStopAPResultDlg:Ljava/lang/Boolean;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbStopAPResultDlg:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2611
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2613
    :cond_0
    return-void

    .line 2610
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 956
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0xcd

    .line 939
    const-string v0, "OOBE_MainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbOnPause:Z

    .line 943
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 945
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 897
    const-string v0, "OOBE_MainActivity"

    const-string v1, "onRetainNonConfigurationInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 961
    const-string v0, "OOBE_MainActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const-string v0, "recoverStartActivityCode"

    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 964
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " outState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 970
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 971
    const-string v0, "OOBE_MainActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 950
    const-string v0, "OOBE_MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 952
    return-void
.end method

.method protected progressBarController(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcsetupwizard/StepSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3207
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcsetupwizard/StepSetting;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3208
    .local v4, size:I
    const/4 v5, 0x1

    .line 3209
    .local v5, startingStep:I
    const/4 v1, -0x1

    .line 3211
    .local v1, insertSimcardStep:I
    if-lez v4, :cond_5

    .line 3213
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 3215
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v6}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 3217
    move v1, v0

    .line 3213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3221
    :cond_1
    sub-int v6, v4, v5

    sput v6, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    .line 3222
    const/4 v3, 0x1

    .line 3225
    .local v3, progressBarNumber:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 3227
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v6, v3}, Lcom/htc/android/htcsetupwizard/StepSetting;->setProgressBarNumber(I)V

    .line 3228
    if-ne v2, v1, :cond_4

    .line 3230
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    if-nez v6, :cond_3

    .line 3232
    sget v6, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    .line 3233
    const-string v6, "OOBE_MainActivity"

    const-string v7, "skip insert sim card page ..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3236
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3238
    :cond_4
    if-lt v2, v5, :cond_2

    .line 3240
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3244
    .end local v0           #i:I
    .end local v2           #j:I
    .end local v3           #progressBarNumber:I
    :cond_5
    return-void
.end method

.method protected removeActivityFromList(I)V
    .locals 5
    .parameter "requestCode"

    .prologue
    .line 1891
    const-string v2, "OOBE_MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeActivityFromList("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1894
    .local v1, nSize:I
    iget v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-gez v2, :cond_1

    const/4 v0, 0x0

    .line 1895
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1897
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 1899
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1903
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->recaculateStepNumber()V

    .line 1904
    return-void

    .line 1894
    .end local v0           #i:I
    :cond_1
    iget v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    goto :goto_0

    .line 1895
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected removeAllOnLineServiceFromList()V
    .locals 6

    .prologue
    .line 1956
    const-string v3, "OOBE_MainActivity"

    const-string v4, "removeAllOnLineServiceFromList"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1959
    .local v2, nSize:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-lt v0, v3, :cond_1

    if-ltz v0, :cond_1

    .line 1961
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v3}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    .line 1962
    .local v1, nActivityId:I
    sparse-switch v1, :sswitch_data_0

    .line 1959
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1971
    :sswitch_0
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAllOnLineServiceFromList nActivityId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mOOPStartActivityCode:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mOOPStartActivityCode:I

    if-ne v1, v3, :cond_0

    .line 1975
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "always add, mOOPStartActivityCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mOOPStartActivityCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1979
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1985
    .end local v1           #nActivityId:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->recaculateStepNumber()V

    .line 1986
    return-void

    .line 1962
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x15 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method protected removeWifiOnlyRelatedFromList()V
    .locals 6

    .prologue
    .line 1933
    const-string v3, "OOBE_MainActivity"

    const-string v4, "removeWifiOnlyRelatedFromList"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1936
    .local v2, nSize:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-lt v0, v3, :cond_0

    if-ltz v0, :cond_0

    .line 1938
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v3}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    .line 1939
    .local v1, nActivityId:I
    sparse-switch v1, :sswitch_data_0

    .line 1936
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1946
    :sswitch_0
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeWifiOnlyRelatedFromList nActivityId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1951
    .end local v1           #nActivityId:I
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->recaculateStepNumber()V

    .line 1952
    return-void

    .line 1939
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method replaceGMailName()V
    .locals 6

    .prologue
    .line 3468
    sget-boolean v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    if-eqz v3, :cond_0

    .line 3469
    const/4 v2, 0x0

    .line 3470
    .local v2, mcc:I
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getBlockNoSIMCountry()Ljava/lang/String;

    move-result-object v1

    .line 3471
    .local v1, country:Ljava/lang/String;
    const-string v3, "de"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3472
    const/16 v2, 0x106

    .line 3478
    :goto_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 3479
    .local v0, config:Landroid/content/res/Configuration;
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 3481
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 3482
    const-string v3, "OOBE_MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replace GMail name for de & uk, mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3487
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #country:Ljava/lang/String;
    .end local v2           #mcc:I
    :cond_0
    :goto_1
    return-void

    .line 3473
    .restart local v1       #country:Ljava/lang/String;
    .restart local v2       #mcc:I
    :cond_1
    const-string v3, "uk"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3474
    const/16 v2, 0xea

    goto :goto_0

    .line 3483
    .restart local v0       #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected setActivityList()V
    .locals 5

    .prologue
    .line 3175
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3176
    .local v0, classNames:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 3178
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 3180
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mActivityListFromXml:Ljava/util/ArrayList;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3182
    new-instance v2, Lcom/htc/android/htcsetupwizard/StepSetting;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mActivityListFromXml:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/htc/android/htcsetupwizard/StepSetting;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;Ljava/lang/String;)V

    .line 3183
    .local v2, stepSetting:Lcom/htc/android/htcsetupwizard/StepSetting;
    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/StepSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/StepSetting;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isActivityAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3187
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3188
    sget-object v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3192
    .end local v1           #i:I
    .end local v2           #stepSetting:Lcom/htc/android/htcsetupwizard/StepSetting;
    :cond_1
    return-void
.end method

.method protected setupAllowLocationConsent()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 828
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network"

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isAllowLocationConsent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 831
    :cond_0
    return-void

    .line 829
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupAllowPrivacy()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 834
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oobe_allow_privacy"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oobe_allow_privacy"

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isAllowPrivacy()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 837
    :cond_0
    return-void

    .line 835
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupAutoBacklight()V
    .locals 0

    .prologue
    .line 792
    return-void
.end method

.method protected setupAutoDataSyncValue()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 810
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oobe_auto_data_sync_check"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oobe_auto_data_sync_check"

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isDefaultDataSync()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 813
    :cond_0
    return-void

    .line 811
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupAutoSyncDataValue()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 822
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oobe_auto_sync_data_check"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oobe_auto_sync_data_check"

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isDefaultSyncData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 825
    :cond_0
    return-void

    .line 823
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupMobileDataValue()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 816
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oobe_mobile_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oobe_mobile_data"

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isDefaultMobileData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 819
    :cond_0
    return-void

    .line 817
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showWifiSetting()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 840
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oobe_show_wifi_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oobe_show_wifi_setting"

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isShowWifiSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 843
    :cond_0
    return-void

    .line 841
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    const/16 v4, 0xd

    .line 2247
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityForResult nRequestCode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnCurStep == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isExist == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iput p2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityCode:I

    .line 2251
    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    sput v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mStartActivityStep:I

    .line 2253
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2254
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2359
    :goto_0
    return-void

    .line 2258
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsExist:Z

    if-nez v1, :cond_1

    .line 2259
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2263
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2267
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isSkipSetupWizard()Z

    move-result v0

    .line 2268
    .local v0, isSkipSetupWizard:Z
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityForResult, isSkipSetupWizard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    if-eqz v0, :cond_2

    .line 2271
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2276
    .end local v0           #isSkipSetupWizard:Z
    :cond_2
    iget v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mnCurStep:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/StepSetting;->getId()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 2279
    const-string v1, "OOBE_MainActivity"

    const-string v2, "The step is before timezone, check isAutoSetTimeZone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isAutoSetTimeZone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2281
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeActivityFromList(I)V

    .line 2285
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->informActivityBackKeySelfFinish(Landroid/content/Intent;I)V

    .line 2287
    sparse-switch p2, :sswitch_data_0

    .line 2356
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2290
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startCalibration(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2294
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startCustomizationSetup(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2298
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startOperatorSetting(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2302
    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startLanguageSetting(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2306
    :sswitch_4
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startInsertSIMCard(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2310
    :sswitch_5
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startConnectionAndSync(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2320
    :sswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startOnlineService(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2324
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startSetTimeZone(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2328
    :sswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startTutorial(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2332
    :sswitch_9
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startCslSelection(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2336
    :sswitch_a
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startVodafone360(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2340
    :sswitch_b
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startVzwBackupAssistant(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2344
    :sswitch_c
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startVzwSSO(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2348
    :sswitch_d
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startTellHtc(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2352
    :sswitch_e
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startGuidedTours(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2287
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_8
        0x15 -> :sswitch_6
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x19 -> :sswitch_c
        0x1a -> :sswitch_6
        0x1e -> :sswitch_d
        0x1f -> :sswitch_6
        0x20 -> :sswitch_e
        0x23 -> :sswitch_5
        0x12d -> :sswitch_9
    .end sparse-switch
.end method

.method protected startCslSelection(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    .line 2225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mIsCslFirstActivity:Z

    .line 2226
    const-string v1, "ProgressBarNumber"

    sget-object v0, Lcom/htc/android/htcsetupwizard/MainActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/StepSetting;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/StepSetting;->getProgressBarNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2228
    const-string v0, "ProgressBarMaxNumber"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mProgressbarMaxSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2229
    const-string v0, "ProgressBarDotMaxNumber"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2230
    const-string v0, "ProgressBarDotInterspace"

    sget v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mDotInterspace:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2231
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2232
    return-void
.end method

.method protected startOnlineService(Landroid/content/Intent;I)V
    .locals 6
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2108
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In startOnlineService, mbWifiChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWifiChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nRequestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const/16 v1, 0x8

    if-ne p2, v1, :cond_5

    .line 2111
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isWIFINetworkAvailable()Z

    move-result v1

    if-ne v4, v1, :cond_2

    .line 2113
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbWifiChecked:Z

    .line 2114
    invoke-direct {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 2116
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mWiFiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2117
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2118
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->callWIFISetting()V

    .line 2175
    .end local v0           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-void

    .line 2120
    .restart local v0       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->REMOVE_WIFIDETECT_PAGE:Z

    if-eqz v1, :cond_1

    .line 2121
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->callWIFISetting()V

    goto :goto_0

    .line 2123
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->startWifiDetectedActivity()V

    goto :goto_0

    .line 2155
    .end local v0           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_2
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In startOnlineService, mBackToWifi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mbSIMAbsent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mBackToWifi:Z

    if-nez v1, :cond_4

    .line 2157
    invoke-direct {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V

    .line 2158
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mbSIMAbsent:Z

    if-ne v4, v1, :cond_3

    .line 2159
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeAllOnLineServiceFromList()V

    .line 2161
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0

    .line 2164
    :cond_4
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0

    .line 2169
    :cond_5
    const/16 v1, 0x1f

    if-ne p2, v1, :cond_6

    .line 2171
    const-string v1, "HasFacebookPage"

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mbHasFacebookPage:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2173
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected startSetTimeZone(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    .line 2199
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->isAutoSetTimeZone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2200
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2205
    :goto_0
    return-void

    .line 2202
    :cond_0
    const-string v0, "OOBE_MainActivity"

    const-string v1, "skip the Timezone page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method protected startTutorial(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "nRequestCode"

    .prologue
    .line 2195
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityIfNotExist(Landroid/content/Intent;I)V

    .line 2196
    return-void
.end method
