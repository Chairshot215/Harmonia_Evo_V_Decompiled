.class public Lcom/android/settings/MobileDataEnabler;
.super Ljava/lang/Object;
.source "MobileDataEnabler.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MobileDataEnabler$10;
    }
.end annotation


# static fields
.field private static final ACTION_MODEMLINK_DISABLED:Ljava/lang/String; = "com.htc.is.disabled"

.field private static final ACTION_MODEMLINK_ENABLED:Ljava/lang/String; = "com.htc.is.enabled"

.field private static final EVENT_UPDATE_DISPLAY_POLICY:I = 0x2

.field private static final EVENT_UPDATE_NETWORK_STATE:I = 0x1

.field private static final LOCAL_LOGD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final MODEM_LINK_CHECK:Z = false

.field private static final OriginalSummaryId:I = 0x7f0c01bf

.field private static final SENDER:Ljava/lang/String; = "MobileDataEnabler"

.field private static SERVICE_STATE_CHECK:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SPRINT_ROAMING:Z = false

.field private static final TAG:Ljava/lang/String; = "SettingsMobileDataEnabler"

.field private static isConnecting:Z


# instance fields
.field private connectivity:Landroid/net/ConnectivityManager;

.field private isTempUnchecked:Z

.field private mAlwaysEnableUI:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDataRoamingConfirmClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataRoamingWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mMobileDataEnableWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMobileDataEnabledSetting:Z

.field private mMobileDataInService:Z

.field private mMobileDataPreferenceDependency:Ljava/lang/String;

.field private final mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSummary:Landroid/widget/TextView;

.field private mSupportDataServiceState:Z

.field private mSwitch:Lcom/htc/widget/HtcToggleButton;

.field private mSwitchHeader:Landroid/view/View;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/MobileDataEnabler;->SPRINT_ROAMING:Z

    .line 84
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4010

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/MobileDataEnabler;->SERVICE_STATE_CHECK:Z

    .line 85
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/settings/MobileDataEnabler;->MODEM_LINK_CHECK:Z

    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0

    :cond_1
    move v0, v2

    .line 84
    goto :goto_1

    :cond_2
    move v1, v2

    .line 85
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "switchHeader"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 375
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/MobileDataEnabler;->mAlwaysEnableUI:Z

    .line 97
    new-instance v0, Lcom/android/settings/MobileDataEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$1;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMainThreadHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/settings/MobileDataEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$2;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mDataRoamingConfirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 132
    new-instance v0, Lcom/android/settings/MobileDataEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$3;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mDataRoamingWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 143
    new-instance v0, Lcom/android/settings/MobileDataEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$4;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnableWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 149
    new-instance v0, Lcom/android/settings/MobileDataEnabler$5;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$5;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    iput-boolean v1, p0, Lcom/android/settings/MobileDataEnabler;->isTempUnchecked:Z

    .line 307
    iput-boolean v1, p0, Lcom/android/settings/MobileDataEnabler;->mSupportDataServiceState:Z

    .line 309
    new-instance v0, Lcom/android/settings/MobileDataEnabler$6;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileDataEnabler$6;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 376
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    .line 377
    iput-object p2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitchHeader:Landroid/view/View;

    .line 378
    instance-of v0, p2, Lcom/htc/widget/HtcToggleButton;

    if-eqz v0, :cond_2

    .line 379
    check-cast p2, Lcom/htc/widget/HtcToggleButton;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 387
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 388
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.is.enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.is.disabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 398
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v1, "htctelephony"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcTelephonyManager;

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 399
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;

    .line 401
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getPersistedMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    .line 404
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_1

    .line 406
    iput-boolean v3, p0, Lcom/android/settings/MobileDataEnabler;->mAlwaysEnableUI:Z

    .line 409
    :cond_1
    const-string v0, "1"

    const-string v1, "debug.mobile"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    const-string v0, "SettingsMobileDataEnabler"

    const-string v1, "enable always on UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iput-boolean v3, p0, Lcom/android/settings/MobileDataEnabler;->mAlwaysEnableUI:Z

    .line 415
    :goto_1
    return-void

    .line 381
    .restart local p2
    :cond_2
    new-instance v0, Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    goto/16 :goto_0

    .line 413
    .end local p2
    :cond_3
    const-string v0, "SettingsMobileDataEnabler"

    const-string v1, "disable always on UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MobileDataEnabler;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/MobileDataEnabler;->updateNetworkState(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/MobileDataEnabler;Landroid/net/NetworkInfo$State;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MobileDataEnabler;->updateNetworkState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/MobileDataEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mSupportDataServiceState:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/MobileDataEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/settings/MobileDataEnabler;->mSupportDataServiceState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/MobileDataEnabler;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/MobileDataEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/MobileDataEnabler;->updateServiceState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MobileDataEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/MobileDataEnabler;->persistMobileDataSettingEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MobileDataEnabler;)Lcom/htc/widget/HtcToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/MobileDataEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/MobileDataEnabler;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/MobileDataEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/MobileDataEnabler;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->enableMobileData()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/MobileDataEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/MobileDataEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/MobileDataEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/MobileDataEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    return-void
.end method

.method private enableMobileData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 552
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->persistMobileDataSettingEnabled(Z)V

    .line 553
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 554
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.showme.LOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "callingApp"

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v2, "actionCoverage"

    const-string v3, "topic_tag-connections_internet-data"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 559
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->isNetworkAvailable(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 561
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 562
    const v2, 0x7f0c01c6

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    .line 570
    :goto_0
    return-void

    .line 564
    :cond_2
    const v2, 0x7f0c01c0

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 441
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 443
    :cond_0
    :goto_0
    return v1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 448
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 450
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone$DataState;

    .line 452
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 763
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    .line 764
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.apn.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPersistedAirplaneModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 457
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getPersistedMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private isNetworkAvailable(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/MobileDataEnabler;->connectivity:Landroid/net/ConnectivityManager;

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    .line 470
    const-string v1, "SettingsMobileDataEnabler"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 473
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 475
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUnderDataRoamingArea()Z
    .locals 5

    .prologue
    .line 774
    const/4 v2, 0x0

    .line 775
    .local v2, roamArea:Z
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 776
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 785
    :goto_0
    return v2

    .line 780
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 781
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 782
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 783
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #mConnMgr:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private persistMobileDataSettingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    .line 494
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    const-string v1, "sender"

    const-string v2, "MobileDataEnabler"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    return-void
.end method

.method private setDataRoamingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/16 v4, 0xd2

    const/16 v3, 0x50

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 576
    if-eqz p1, :cond_2

    .line 578
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_1

    .line 581
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c01cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a89

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01cf

    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnableWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01d0

    new-instance v3, Lcom/android/settings/MobileDataEnabler$8;

    invoke-direct {v3, p0}, Lcom/android/settings/MobileDataEnabler$8;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/settings/MobileDataEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/MobileDataEnabler$7;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 644
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->enableMobileData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SettingsMobileDataEnabler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 642
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 609
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v4, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_4

    .line 612
    :cond_3
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c01ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a89

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01d1

    new-instance v3, Lcom/android/settings/MobileDataEnabler$9;

    invoke-direct {v3, p0}, Lcom/android/settings/MobileDataEnabler$9;-><init>(Lcom/android/settings/MobileDataEnabler;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 624
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/MobileDataEnabler;->persistMobileDataSettingEnabled(Z)V

    .line 634
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/MobileDataEnabler;->updateNetworkState(Landroid/net/NetworkInfo;)V

    .line 637
    const v1, 0x7f0c01bf

    invoke-direct {p0, v1}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateNetworkState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Z)V
    .locals 9
    .parameter "state"
    .parameter "reason"
    .parameter "unavailable"

    .prologue
    const v8, 0x7f0c01c4

    const v7, 0x7f0c01c6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v6, 0x7f0c01bf

    .line 798
    if-nez p2, :cond_0

    const-string p2, "unspecified"

    .line 799
    :cond_0
    sget-object v4, Lcom/android/settings/MobileDataEnabler$10;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 965
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MobileDataEnabler;->checkMobileNetworkDisplayPolicy()V

    .line 966
    :cond_1
    return-void

    .line 802
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v4, :cond_1

    .line 806
    sput-boolean v2, Lcom/android/settings/MobileDataEnabler;->isConnecting:Z

    .line 808
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const-string v5, "radioTurnedOff"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 811
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 813
    const v2, 0x7f0c01c1

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto :goto_0

    .line 817
    :pswitch_1
    sput-boolean v2, Lcom/android/settings/MobileDataEnabler;->isConnecting:Z

    .line 819
    const/4 v0, 0x1

    .line 820
    .local v0, checked:Z
    if-eqz p3, :cond_16

    .line 821
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 822
    const/4 v0, 0x0

    .line 823
    const v2, 0x7f0c01cb

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto :goto_0

    .line 826
    :cond_3
    const-string v2, "pdpTeardown"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 827
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getPersistedAirplaneModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 828
    const/4 v0, 0x0

    .line 829
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto :goto_0

    .line 831
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto :goto_0

    .line 833
    :cond_5
    const-string v2, "datt not subcribed"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 834
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_6

    .line 835
    const v2, 0x7f0c01c3

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto :goto_0

    .line 837
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto :goto_0

    .line 839
    :cond_7
    const-string v2, "roamingOn"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 840
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_a

    .line 841
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 842
    invoke-direct {p0, v3}, Lcom/android/settings/MobileDataEnabler;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 843
    invoke-direct {p0, v7}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 845
    :cond_8
    invoke-direct {p0, v8}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 848
    :cond_9
    const v2, 0x7f0c01c5

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 851
    :cond_a
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 853
    :cond_b
    const-string v2, "roamingDisabled"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 854
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_e

    .line 855
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 856
    invoke-direct {p0, v3}, Lcom/android/settings/MobileDataEnabler;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 857
    invoke-direct {p0, v7}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 859
    :cond_c
    invoke-direct {p0, v8}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 862
    :cond_d
    const v2, 0x7f0c01c5

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 865
    :cond_e
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 867
    :cond_f
    const-string v2, "apnChanged"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 868
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_10

    .line 869
    invoke-direct {p0, v8}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 871
    :cond_10
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 873
    :cond_11
    const-string v2, "dataConnectionDenied"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 874
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_12

    .line 875
    const v2, 0x7f0c01ca

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 877
    :cond_12
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 880
    :cond_13
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_15

    .line 881
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->isUnderDataRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getDataOnRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 882
    const v2, 0x7f0c01c5

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 884
    :cond_14
    invoke-direct {p0, v7}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 887
    :cond_15
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 891
    :cond_16
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    iget-boolean v3, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 893
    const-string v2, "apnChanged"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "pdpDisconnect"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 894
    :cond_17
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_18

    .line 895
    invoke-direct {p0, v8}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 897
    :cond_18
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 899
    :cond_19
    const-string v2, "datt not subcribed"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 900
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_1a

    .line 901
    const v2, 0x7f0c01c3

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 903
    :cond_1a
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 905
    :cond_1b
    const-string v2, "dataConnectionDenied"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 906
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_1c

    .line 907
    const v2, 0x7f0c01ca

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 909
    :cond_1c
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 911
    :cond_1d
    const-string v2, "roamingDisabled"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 912
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_1e

    .line 913
    const v2, 0x7f0c01c5

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 915
    :cond_1e
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 919
    :cond_1f
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 920
    const/4 v0, 0x0

    .line 921
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 922
    :cond_20
    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v2, :cond_22

    .line 923
    const/4 v1, 0x0

    .line 924
    .local v1, currentGprsState:I
    if-eqz v1, :cond_21

    .line 925
    const v2, 0x7f0c01ca

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 927
    :cond_21
    invoke-direct {p0, v7}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 930
    .end local v1           #currentGprsState:I
    :cond_22
    invoke-direct {p0, v6}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    .line 951
    .end local v0           #checked:Z
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v4, :cond_1

    .line 954
    sput-boolean v3, Lcom/android/settings/MobileDataEnabler;->isConnecting:Z

    .line 956
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const-string v5, "radioTurnedOff"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    iget-boolean v5, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v5, :cond_23

    :goto_1
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 957
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 958
    const v2, 0x7f0c01c0

    invoke-direct {p0, v2}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto/16 :goto_0

    :cond_23
    move v3, v2

    .line 956
    goto :goto_1

    .line 961
    :pswitch_3
    sput-boolean v2, Lcom/android/settings/MobileDataEnabler;->isConnecting:Z

    goto/16 :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateNetworkState(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "networkInfo"

    .prologue
    .line 792
    if-eqz p1, :cond_0

    .line 793
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MobileDataEnabler;->updateNetworkState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Z)V

    .line 795
    :cond_0
    return-void
.end method

.method private updateServiceState(I)V
    .locals 3
    .parameter "currentStatus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 708
    packed-switch p1, :pswitch_data_0

    .line 754
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MobileDataEnabler;->checkMobileNetworkDisplayPolicy()V

    .line 756
    return-void

    .line 710
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataInService:Z

    .line 711
    sget-boolean v0, Lcom/android/settings/MobileDataEnabler;->isConnecting:Z

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 720
    :goto_1
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    iget-boolean v1, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_1

    .line 725
    :pswitch_1
    const v0, 0x7f0c01ca

    invoke-direct {p0, v0}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    .line 726
    sput-boolean v1, Lcom/android/settings/MobileDataEnabler;->isConnecting:Z

    .line 727
    iput-boolean v1, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataInService:Z

    .line 728
    iget-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mAlwaysEnableUI:Z

    if-nez v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 731
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 735
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    iget-boolean v1, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 739
    :pswitch_2
    const v0, 0x7f0c01cb

    invoke-direct {p0, v0}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    .line 740
    sput-boolean v1, Lcom/android/settings/MobileDataEnabler;->isConnecting:Z

    .line 741
    iput-boolean v1, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataInService:Z

    .line 742
    iget-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mAlwaysEnableUI:Z

    if-nez v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 745
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 749
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    iget-boolean v1, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSummary(I)V
    .locals 2
    .parameter "summaryResId"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 544
    :goto_0
    return-void

    .line 539
    :cond_0
    const-string v0, "SettingsMobileDataEnabler"

    const-string v1, "mSummary is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public CheckMNetworkFunction()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getPersistedAirplaneModeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v2, :cond_2

    :cond_0
    move v0, v2

    .line 276
    .local v0, disable:Z
    :goto_0
    const-string v3, "SettingsMobileDataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckMNetworkFunction(): air:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getPersistedAirplaneModeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; sim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz v0, :cond_3

    .line 279
    const v3, 0x7f0c01cb

    invoke-direct {p0, v3}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    .line 280
    iput-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->isTempUnchecked:Z

    .line 281
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 282
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 291
    :goto_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1

    .line 292
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 297
    :cond_1
    return-void

    .end local v0           #disable:Z
    :cond_2
    move v0, v1

    .line 274
    goto :goto_0

    .line 284
    .restart local v0       #disable:Z
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/MobileDataEnabler;->isTempUnchecked:Z

    .line 285
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 286
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public checkMobileNetworkDisplayPolicy()V
    .locals 11

    .prologue
    const v10, 0x7f0c01ca

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 647
    const/4 v3, -0x1

    .line 648
    .local v3, serviceState:I
    const/4 v2, -0x1

    .line 649
    .local v2, gprsState:I
    const/4 v4, -0x1

    .line 650
    .local v4, simState:I
    const/4 v1, 0x1

    .line 651
    .local v1, enableState:Z
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    .line 653
    .local v0, airState:Z
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v5, :cond_0

    .line 654
    const-string v5, "SettingsMobileDataEnabler"

    const-string v8, "mHtcTelephonyManager is null, rebind it."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v8, "htctelephony"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/HtcTelephonyManager;

    iput-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 657
    :cond_0
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_1

    .line 658
    const-string v5, "SettingsMobileDataEnabler"

    const-string v8, "mTelephonyManager is null, rebind it."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 661
    :cond_1
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v5, :cond_2

    .line 662
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v5}, Lcom/htc/service/HtcTelephonyManager;->getServiceState()I

    move-result v3

    .line 663
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v5}, Lcom/htc/service/HtcTelephonyManager;->getGprsState()I

    move-result v2

    .line 665
    :cond_2
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_3

    .line 666
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 668
    :cond_3
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_5

    .line 669
    :cond_4
    const-string v8, "SettingsMobileDataEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHtcTelephonyManager is null:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v5, :cond_9

    move v5, v6

    :goto_0
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "mTelephonyManager is null:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_a

    move v5, v6

    :goto_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 675
    :cond_6
    if-nez v2, :cond_7

    if-nez v0, :cond_7

    if-eq v4, v6, :cond_7

    sget-boolean v5, Lcom/android/settings/MobileDataEnabler;->MODEM_LINK_CHECK:Z

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 677
    :cond_7
    const/4 v1, 0x0

    .line 685
    :cond_8
    :goto_2
    const-string v5, "SettingsMobileDataEnabler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; gprsState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; airState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; simState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; modemlink:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; enable:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    if-eqz v1, :cond_d

    .line 689
    iput-boolean v7, p0, Lcom/android/settings/MobileDataEnabler;->isTempUnchecked:Z

    .line 690
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 691
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    iget-object v6, p0, Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 705
    :goto_3
    return-void

    :cond_9
    move v5, v7

    .line 669
    goto/16 :goto_0

    :cond_a
    move v5, v7

    goto/16 :goto_1

    .line 680
    :cond_b
    if-nez v3, :cond_c

    if-nez v0, :cond_c

    if-eq v4, v6, :cond_c

    sget-boolean v5, Lcom/android/settings/MobileDataEnabler;->MODEM_LINK_CHECK:Z

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 682
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 693
    :cond_d
    if-nez v3, :cond_e

    if-eqz v2, :cond_10

    .line 694
    :cond_e
    invoke-direct {p0, v10}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    .line 700
    :cond_f
    :goto_4
    iput-boolean v6, p0, Lcom/android/settings/MobileDataEnabler;->isTempUnchecked:Z

    .line 701
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 702
    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_3

    .line 695
    :cond_10
    if-ne v4, v6, :cond_11

    .line 696
    invoke-direct {p0, v10}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto :goto_4

    .line 697
    :cond_11
    if-eqz v0, :cond_f

    .line 698
    const v5, 0x7f0c01cb

    invoke-direct {p0, v5}, Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V

    goto :goto_4
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v7, 0x7f0c01d2

    const v6, 0x1080027

    const/4 v5, 0x1

    .line 972
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 973
    .local v1, enabled:Z
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getPersistedMobileDataEnabled()Z

    move-result v2

    .line 976
    .local v2, isMobileSettingsOn:Z
    iget-boolean v3, p0, Lcom/android/settings/MobileDataEnabler;->isTempUnchecked:Z

    if-nez v3, :cond_0

    if-ne v2, v1, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->isUnderDataRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/settings/MobileDataEnabler;->SPRINT_ROAMING:Z

    if-nez v3, :cond_7

    .line 992
    const/4 v0, 0x0

    .line 993
    .local v0, customizationStringEnableDataRoamingWarning:Ljava/lang/CharSequence;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 994
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 997
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getDataOnRoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1002
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_HTC_WARNING_FOR_ROAMING:Z

    if-ne v3, v5, :cond_4

    .line 1008
    if-nez v0, :cond_3

    .line 1009
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    :cond_3
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c01d3

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mDataRoamingConfirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c01d4

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mDataRoamingConfirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 1017
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/settings/MobileDataEnabler;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 1029
    :cond_5
    if-nez v0, :cond_6

    .line 1030
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1032
    :cond_6
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mDataRoamingWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler;->mDataRoamingWarningClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1039
    .end local v0           #customizationStringEnableDataRoamingWarning:Ljava/lang/CharSequence;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings/MobileDataEnabler;->setMobileDataEnabled(Z)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 486
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 504
    const-string v0, "SettingsMobileDataEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume(), mMobileDataEnabledSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getPersistedMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z

    .line 507
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 514
    sget-boolean v0, Lcom/android/settings/MobileDataEnabler;->SERVICE_STATE_CHECK:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 520
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 526
    const-string v0, ""

    invoke-direct {p0}, Lcom/android/settings/MobileDataEnabler;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/MobileDataEnabler;->mAlwaysEnableUI:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/MobileDataEnabler;->SPRINT_ROAMING:Z

    if-nez v0, :cond_1

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler;->mMainThreadHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 533
    return-void
.end method

.method public setSwitch(Landroid/view/View;)V
    .locals 6
    .parameter "switchHeader"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 418
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitchHeader:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitchHeader:Landroid/view/View;

    .line 421
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 422
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitchHeader:Landroid/view/View;

    const v4, 0x7f080110

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcToggleButton;

    iput-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 423
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 424
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 425
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSwitchHeader:Landroid/view/View;

    const v4, 0x1020010

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSummary:Landroid/widget/TextView;

    .line 427
    const-string v4, "SettingsMobileDataEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSwitch(), mSummary:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mSummary:Landroid/widget/TextView;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 430
    .local v0, ni:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 431
    invoke-direct {p0, v0}, Lcom/android/settings/MobileDataEnabler;->updateNetworkState(Landroid/net/NetworkInfo;)V

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0           #ni:Landroid/net/NetworkInfo;
    :cond_2
    move v1, v3

    .line 427
    goto :goto_1
.end method
