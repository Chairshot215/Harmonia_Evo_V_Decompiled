.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$StatusBarHandler;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;
    }
.end annotation


# static fields
.field private static final ACTION_SLEEP_MODE_END:Ljava/lang/String; = "com.android.systemui.statusbar.action.sleep_mode_end"

.field private static final ACTION_SLEEP_MODE_START:Ljava/lang/String; = "com.android.systemui.statusbar.action.sleep_mode_start"

.field private static final AM_PM_STYLE:I = 0x2

.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final BATTERY_WIRELESS_CHARGNING_START:I = 0x1

.field private static final BATTERY_WIRELESS_CHARGNING_STOP:I = 0x2

.field public static final EVENT_ATT_DATA_CHANGE_TIMEOUT:I = 0x384

.field private static final EVENT_FORCE_UPDATE_DATA_ICON:I = 0x33

.field private static final EVENT_STOP_LOW_BATTERY_TONE:I = 0x32

.field private static final HTC_DEBUG:Z = false

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final PROP_KEY_HSDPA_CATEGORY:Ljava/lang/String; = "ro.ril.hsdpa.category"

.field private static final SLEEP_MODE_END_REQUEST_CODE:I = 0x1f91

.field private static final SLEEP_MODE_START_REQUEST_CODE:I = 0x1f90

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_5_LEVEL_SIGNAL:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarPolicy"

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

#the value of this static final field might be set in the static constructor
.field private static final USE_VZW_CUSTOM_3G_ICON:Z = false

#the value of this static final field might be set in the static constructor
.field private static final USE_VZW_CUSTOM_3G_ICON_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field static final WORLD_PHONE_CONFIG:Z = false

.field private static final htcGsm6SignalImages:[[I = null

.field private static final htcGsm6SignalImages_r:[[I = null

.field private static final s5LevelSignalImages:[I = null

.field private static final s5LevelSignalImages_r:[I = null

.field private static sAlarmWakeLock:Landroid/os/PowerManager$WakeLock; = null

.field private static sBCheckSleepMode:Ljava/lang/Boolean; = null

.field private static final sCWConnected:[I = null

.field private static final sCWRegistered:[I = null

.field private static final sDataNetCapability:[I = null

.field private static final sDataNetType_1x:[[I = null

.field private static final sDataNetType_2g:[[I = null

.field private static final sDataNetType_3_5g:[[I = null

.field private static final sDataNetType_3g:[[I = null

.field private static final sDataNetType_3g_plus:[[I = null

.field private static final sDataNetType_4g:[[I = null

.field private static final sDataNetType_e:[[I = null

.field private static final sDataNetType_g:[[I = null

.field private static final sDataNetType_h:[[I = null

.field private static final sDataNetType_lte:[[I = null

.field private static final sDataNetType_td:[[I = null

.field private static final sDataNetType_vzw_lte:[[I = null

.field private static final sMetaCAPSImages:[I = null

.field private static final sMetaFNImages:[I = null

.field private static final sRoamingIndicatorImages_cdma:[I = null

.field private static final sSignalImages:[[I = null

.field private static final sSignalImages_r:[[I = null

.field private static final sWifiSignalImages:[[I = null

.field private static final sWifiTemporarilyNotConnectedImage:I = 0x7f0201ff


# instance fields
.field final WIRELESS_CHARGING_NOTFICATION_ID:I

.field final WIRELESS_CHARGING_NOTFICATION_TAG:Ljava/lang/String;

.field private createStorageManager:Ljava/lang/Runnable;

.field private isShowingWirelessCharging:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlwaysUseCdmaRssi:Z

.field private mAttPdpHandler:Landroid/os/Handler;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mCAPSVisible:Z

.field private mCWIconList:[I

.field private mCWModeState:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPos:I

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private mFNVisible:Z

.field mHIcon:I

.field private mHTCWirelessSleepEndTimeSecond:I

.field private mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;

.field private mHTCWirelessSleepStartTimeSecond:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetIntent:Landroid/content/Intent;

.field private mHspaDataDistinguishable:Z

.field mHtcATTDataCategory:I

.field private mHtcCdmaStatusBar:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

.field private mHtcTtyStatus:Z

.field private mHtcWimaxStatusBar:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

.field private mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

.field private mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

.field private mImgLength:I

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCWRegistered:Z

.field private mIsWifiConnected:Z

.field private mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

.field mLastHtcATTDataCategory:I

.field mLastHtcAttDataActivity:I

.field private mLastWifiSignalLevel:I

.field private mLowCategoryHspa:Z

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

.field private mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

.field private final mService:Landroid/app/StatusBarManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mServiceStateData:[Landroid/telephony/ServiceState;

.field mServiceStateVoice:[Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mVolumeVisible:Z

.field private mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x4

    new-array v0, v5, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v1

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages:[[I

    new-array v0, v5, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_2

    aput-object v3, v0, v1

    new-array v3, v6, [I

    fill-array-data v3, :array_3

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages_r:[[I

    const/16 v0, 0x54

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_g:[[I

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v0, v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->USE_VZW_CUSTOM_3G_ICON_DEVICE:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->USE_VZW_CUSTOM_3G_ICON_DEVICE:Z

    if-eqz v0, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_4

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->USE_VZW_CUSTOM_3G_ICON:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->USE_VZW_CUSTOM_3G_ICON:Z

    if-eqz v0, :cond_5

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v0, v2

    :goto_2
    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_a

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_e:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_c

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_h:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3_5g:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_f

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_td:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g_plus:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_2g:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->s5LevelSignalImages:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->s5LevelSignalImages_r:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_19

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    new-array v0, v5, [[I

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1a

    aput-object v3, v0, v1

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1b

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->htcGsm6SignalImages:[[I

    new-array v0, v5, [[I

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    aput-object v3, v0, v1

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1d

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->htcGsm6SignalImages_r:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_1e

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_1f

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_vzw_lte:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_20

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_21

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_lte:[[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_22

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_23

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_1x:[[I

    new-array v0, v5, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sMetaFNImages:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_25

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sMetaCAPSImages:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sCWRegistered:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_27

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sCWConnected:[I

    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_28

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_29

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBCheckSleepMode:Ljava/lang/Boolean;

    const-wide/high16 v3, 0x400c

    invoke-static {v3, v4}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x40

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x31

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-eq v0, v3, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    if-nez v0, :cond_6

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->SUPPORT_5_LEVEL_SIGNAL:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->WORLD_PHONE_CONFIG:Z

    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    new-array v0, v5, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_2a

    aput-object v3, v0, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_2b

    aput-object v3, v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    nop

    :array_0
    .array-data 0x4
        0xdct 0x1t 0x2t 0x7ft
        0xdet 0x1t 0x2t 0x7ft
        0xe0t 0x1t 0x2t 0x7ft
        0xe2t 0x1t 0x2t 0x7ft
        0xe4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xddt 0x1t 0x2t 0x7ft
        0xdft 0x1t 0x2t 0x7ft
        0xe1t 0x1t 0x2t 0x7ft
        0xe3t 0x1t 0x2t 0x7ft
        0xe5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xcct 0x1t 0x2t 0x7ft
        0xcet 0x1t 0x2t 0x7ft
        0xd0t 0x1t 0x2t 0x7ft
        0xd2t 0x1t 0x2t 0x7ft
        0xd4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xcdt 0x1t 0x2t 0x7ft
        0xcft 0x1t 0x2t 0x7ft
        0xd1t 0x1t 0x2t 0x7ft
        0xd3t 0x1t 0x2t 0x7ft
        0xd5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x5ct 0x1t 0x2t 0x7ft
        0x92t 0x1t 0x2t 0x7ft
        0xb0t 0x1t 0x2t 0x7ft
        0xa1t 0x1t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x72t 0x1t 0x2t 0x7ft
        0x79t 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
        0x80t 0x1t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x56t 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x56t 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x59t 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
        0xaet 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x71t 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
        0x86t 0x1t 0x2t 0x7ft
        0x7ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x5et 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
        0xb1t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x73t 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
        0x88t 0x1t 0x2t 0x7ft
        0x81t 0x1t 0x2t 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0x5ft 0x1t 0x2t 0x7ft
        0x94t 0x1t 0x2t 0x7ft
        0xb2t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x5ft 0x1t 0x2t 0x7ft
        0x94t 0x1t 0x2t 0x7ft
        0xb2t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0x63t 0x1t 0x2t 0x7ft
        0x96t 0x1t 0x2t 0x7ft
        0xb4t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x63t 0x1t 0x2t 0x7ft
        0x96t 0x1t 0x2t 0x7ft
        0xb4t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0x57t 0x1t 0x2t 0x7ft
        0x8et 0x1t 0x2t 0x7ft
        0xact 0x1t 0x2t 0x7ft
        0x9dt 0x1t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0x57t 0x1t 0x2t 0x7ft
        0x8et 0x1t 0x2t 0x7ft
        0xact 0x1t 0x2t 0x7ft
        0x9dt 0x1t 0x2t 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0x51t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0x51t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
    .end array-data

    :array_15
    .array-data 0x4
        0x58t 0x1t 0x2t 0x7ft
        0x8ft 0x1t 0x2t 0x7ft
        0xadt 0x1t 0x2t 0x7ft
        0x9et 0x1t 0x2t 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0x58t 0x1t 0x2t 0x7ft
        0x8ft 0x1t 0x2t 0x7ft
        0xadt 0x1t 0x2t 0x7ft
        0x9et 0x1t 0x2t 0x7ft
    .end array-data

    :array_17
    .array-data 0x4
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
        0x1et 0x1t 0x2t 0x7ft
        0x1ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_18
    .array-data 0x4
        0xc6t 0x1t 0x2t 0x7ft
        0xc7t 0x1t 0x2t 0x7ft
        0xc8t 0x1t 0x2t 0x7ft
        0xc9t 0x1t 0x2t 0x7ft
        0xcat 0x1t 0x2t 0x7ft
        0xcbt 0x1t 0x2t 0x7ft
    .end array-data

    :array_19
    .array-data 0x4
        0x5dt 0x1t 0x2t 0x7ft
        0x5at 0x1t 0x2t 0x7ft
        0x55t 0x1t 0x2t 0x7ft
        0x53t 0x1t 0x2t 0x7ft
        0x3ft 0x2t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
        0x64t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1a
    .array-data 0x4
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1b
    .array-data 0x4
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1c
    .array-data 0x4
        0x82t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1d
    .array-data 0x4
        0x82t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1e
    .array-data 0x4
        0x65t 0x1t 0x2t 0x7ft
        0x97t 0x1t 0x2t 0x7ft
        0xb5t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1f
    .array-data 0x4
        0x65t 0x1t 0x2t 0x7ft
        0x97t 0x1t 0x2t 0x7ft
        0xb5t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
    .end array-data

    :array_20
    .array-data 0x4
        0x60t 0x1t 0x2t 0x7ft
        0x95t 0x1t 0x2t 0x7ft
        0xb3t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_21
    .array-data 0x4
        0x60t 0x1t 0x2t 0x7ft
        0x95t 0x1t 0x2t 0x7ft
        0xb3t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_22
    .array-data 0x4
        0x50t 0x1t 0x2t 0x7ft
        0x89t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
        0x98t 0x1t 0x2t 0x7ft
    .end array-data

    :array_23
    .array-data 0x4
        0x6et 0x1t 0x2t 0x7ft
        0x74t 0x1t 0x2t 0x7ft
        0x82t 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
    .end array-data

    :array_24
    .array-data 0x4
        0x14t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
    .end array-data

    :array_25
    .array-data 0x4
        0x12t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
    .end array-data

    :array_26
    .array-data 0x4
        0x39t 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
    .end array-data

    :array_27
    .array-data 0x4
        0x34t 0x1t 0x2t 0x7ft
        0x35t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
    .end array-data

    :array_28
    .array-data 0x4
        0x0t 0x2t 0x2t 0x7ft
        0x2t 0x2t 0x2t 0x7ft
        0x4t 0x2t 0x2t 0x7ft
        0x6t 0x2t 0x2t 0x7ft
    .end array-data

    :array_29
    .array-data 0x4
        0x1t 0x2t 0x2t 0x7ft
        0x3t 0x2t 0x2t 0x7ft
        0x5t 0x2t 0x2t 0x7ft
        0x7t 0x2t 0x2t 0x7ft
    .end array-data

    :array_2a
    .array-data 0x4
        0x54t 0x1t 0x2t 0x7ft
        0x8ct 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
        0x9bt 0x1t 0x2t 0x7ft
    .end array-data

    :array_2b
    .array-data 0x4
        0x6ft 0x1t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
        0x84t 0x1t 0x2t 0x7ft
        0x7dt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$StatusBarHandler;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastHtcATTDataCategory:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastHtcAttDataActivity:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcATTDataCategory:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mImgLength:I

    sget-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_g:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneState:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataState:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    sget-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sCWRegistered:[I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWIconList:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsCWRegistered:Z

    const-string v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWModeState:Ljava/lang/String;

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    new-instance v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->createStorageManager:Ljava/lang/Runnable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    const-string v12, "battery_wireless_charging"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->WIRELESS_CHARGING_NOTFICATION_TAG:Ljava/lang/String;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->WIRELESS_CHARGING_NOTFICATION_ID:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isShowingWirelessCharging:Z

    new-instance v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v12, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    new-instance v12, Landroid/telephony/SignalStrength;

    invoke-direct {v12}, Landroid/telephony/SignalStrength;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->createStorageManager:Ljava/lang/Runnable;

    const-wide/16 v14, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "battery"

    const v14, 0x1080512

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    sget-boolean v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    const v12, 0x7f020018

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "phone_signal"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x111002c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlwaysUseCdmaRssi:Z

    new-instance v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAttPdpHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v14, 0x11e1

    invoke-virtual {v12, v13, v14}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "data_connection"

    const v14, 0x7f02015c

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "data_connection"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "wifi"

    sget-object v14, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aget v14, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "wifi"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "tty"

    const v14, 0x7f0201ef

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "tty"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cdma_eri"

    const v14, 0x7f0201d8

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cdma_eri"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "gps"

    const v14, 0x7f0201c1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "gps"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "alarm_clock"

    const v14, 0x7f020115

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "alarm_clock"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "sync_active"

    const v14, 0x7f0201ec

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "sync_failing"

    const v14, 0x7f0201ed

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "sync_active"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "sync_failing"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "volume"

    const v14, 0x7f0201d6

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "volume"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "hw_meta_fn"

    sget-object v14, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sMetaFNImages:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "hw_meta_fn"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "hw_meta_caps"

    sget-object v14, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sMetaCAPSImages:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "hw_meta_caps"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "headset_plug"

    const v14, 0x7f0201c3

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "headset_plug"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "hac_status"

    const v14, 0x7f0201c2

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "hac_status"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->initWirelessCharging()V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "com.htc.content.Intent.ACTION_HW_META_UPDATE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "com.htc.powersaversetting"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "com.android.server.batteryservice.action.SHOW_WIRELESS_CHARGING"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.HAC_STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x1b

    if-eq v12, v13, :cond_1

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    :cond_0
    sget-boolean v12, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v12, :cond_2

    :cond_1
    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    sget-boolean v12, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v12, :cond_3

    const-string v12, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "PhoneStatusBarPolicy"

    const-string v13, "register cw intents"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v6, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x20

    if-eq v12, v13, :cond_4

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v13, 0x2

    if-eq v12, v13, :cond_4

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x9d

    if-eq v12, v13, :cond_5

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x5c

    if-eq v12, v13, :cond_5

    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    new-instance v12, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcCdmaStatusBar:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v12, :cond_7

    sget-boolean v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v12, :cond_7

    new-instance v12, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcWimaxStatusBar:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const v3, 0x7f02014e

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v12

    const/16 v13, 0xc

    if-ne v12, v13, :cond_f

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    const v3, 0x7f02014f

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "bluetooth"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v3, v14, v15}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "bluetooth"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetoothVisibility()V

    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "initial bt icon:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBCheckSleepMode:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getPersistedWirelessSleepMode()V

    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.android.systemui.statusbar.action.sleep_mode_start"

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/16 v13, 0x1f90

    const/4 v14, 0x0

    invoke-static {v12, v13, v9, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.android.systemui.statusbar.action.sleep_mode_end"

    const/4 v13, 0x0

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/16 v13, 0x1f91

    const/4 v14, 0x0

    invoke-static {v12, v13, v8, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v13, "alarm"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v12, 0xb

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    mul-int/lit8 v12, v12, 0x3c

    const/16 v13, 0xc

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int v7, v12, v13

    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-ge v12, v13, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-lt v7, v12, :cond_9

    const/4 v12, 0x5

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->add(II)V

    :cond_9
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v14, v14

    add-long v10, v12, v14

    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SleepMode start at: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-le v12, v13, :cond_a

    const/16 v12, 0x3c

    if-le v7, v12, :cond_a

    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x5

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->add(II)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v14, v14

    add-long v10, v12, v14

    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SleepMode end at: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_3
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    sput-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBCheckSleepMode:Ljava/lang/Boolean;

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->processIfLowCategoryHspa()Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLowCategoryHspa:Z

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->HIcon()V

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingsObserver;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingsObserver;->observe()V

    return-void

    :cond_c
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v13, 0x2

    if-eq v12, v13, :cond_d

    sget-boolean v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->SUPPORT_5_LEVEL_SIGNAL:Z

    if-eqz v12, :cond_e

    :cond_d
    const v12, 0x7f020120

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :cond_e
    const v12, 0x7f0201e9

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z

    goto/16 :goto_1

    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_10
    const-string v12, "PhoneStatusBarPolicy"

    const-string v13, "clear sleep mode alarm"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_3
.end method

.method private final HIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_h_icon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHIcon:I

    return-void
.end method

.method public static final SUPPORT_ATT_H_PLUSE_ICON()Z
    .locals 4

    const-string v1, "ro.ril.hsdpa.category"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "PhoneStatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSDPA category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHWMetaStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->showWirelessChargingStatusForVzW(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->showWirelessChargingStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/os/storage/StorageManager;)Landroid/os/storage/StorageManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$1704(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->HIcon()V

    return-void
.end method

.method static synthetic access$1705(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->forceUpdateDataIcons()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getATTDataType()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mImgLength:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mImgLength:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAttPdpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method private final forceUpdateDataIcons()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method private getATTDataType()[I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    return-object v1

    :pswitch_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    packed-switch v1, :pswitch_data_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_IDLE:[I

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_IN:[I

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_OUT:[I

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_INOUT:[I

    goto :goto_0

    :pswitch_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    packed-switch v1, :pswitch_data_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_LTE_IDLE:[I

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_LTE_IN:[I

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_LTE_OUT:[I

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_4G_LTE_INOUT:[I

    goto :goto_0

    :pswitch_9
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    packed-switch v1, :pswitch_data_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_E_IDLE:[I

    goto :goto_0

    :pswitch_a
    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_E_IN:[I

    goto :goto_0

    :pswitch_b
    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_E_OUT:[I

    goto :goto_0

    :pswitch_c
    sget-object v1, Lcom/android/systemui/statusbar/phone/TelephonyATTIcons;->TELEPHONY_ATT_DATA_E_INOUT:[I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getCdmaLevel()I
    .locals 11

    const/16 v10, -0x64

    const/16 v9, -0x6e

    const/16 v8, -0x82

    const/16 v7, -0x96

    const/16 v6, -0x5a

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x6

    :goto_0
    if-lt v1, v6, :cond_6

    const/4 v3, 0x6

    :goto_1
    if-ge v2, v3, :cond_c

    move v4, v2

    :goto_2
    return v4

    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :cond_1
    if-lt v0, v6, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    if-lt v0, v10, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    const/16 v4, -0x69

    if-lt v0, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    if-lt v1, v9, :cond_7

    const/4 v3, 0x5

    goto :goto_1

    :cond_7
    const/16 v4, -0x78

    if-lt v1, v4, :cond_8

    const/4 v3, 0x4

    goto :goto_1

    :cond_8
    if-lt v1, v8, :cond_9

    const/4 v3, 0x3

    goto :goto_1

    :cond_9
    const/16 v4, -0x8c

    if-lt v1, v4, :cond_a

    const/4 v3, 0x2

    goto :goto_1

    :cond_a
    if-lt v1, v7, :cond_b

    const/4 v3, 0x1

    goto :goto_1

    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    :cond_c
    move v4, v3

    goto :goto_2

    :cond_d
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_e

    const/4 v2, 0x4

    :goto_3
    if-lt v1, v6, :cond_12

    const/4 v3, 0x4

    :goto_4
    if-ge v2, v3, :cond_16

    move v4, v2

    goto :goto_2

    :cond_e
    const/16 v4, -0x55

    if-lt v0, v4, :cond_f

    const/4 v2, 0x3

    goto :goto_3

    :cond_f
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_10

    const/4 v2, 0x2

    goto :goto_3

    :cond_10
    if-lt v0, v10, :cond_11

    const/4 v2, 0x1

    goto :goto_3

    :cond_11
    const/4 v2, 0x0

    goto :goto_3

    :cond_12
    if-lt v1, v9, :cond_13

    const/4 v3, 0x3

    goto :goto_4

    :cond_13
    if-lt v1, v8, :cond_14

    const/4 v3, 0x2

    goto :goto_4

    :cond_14
    if-lt v1, v7, :cond_15

    const/4 v3, 0x1

    goto :goto_4

    :cond_15
    const/4 v3, 0x0

    goto :goto_4

    :cond_16
    move v4, v3

    goto :goto_2
.end method

.method private getCdmaLevelDirectly()I
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6LevelSignalStrength:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x6

    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->SUPPORT_5_LEVEL_SIGNAL_CDMA:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    :cond_0
    const-string v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cdmaLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const-string v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for VZW, cdmaLevel+1, cdmaLevel= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-le v0, v1, :cond_2

    move v0, v1

    const-string v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cdmaLevel > maxCdmaLevel, assign cdmaLevel= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    const-string v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cdmaLevel < 0, assign cdmaLevel= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    const/4 v1, 0x4

    goto/16 :goto_0
.end method

.method private getEvdoLevel()I
    .locals 11

    const/4 v10, 0x1

    const/16 v9, -0x4b

    const/16 v8, -0x5a

    const/16 v7, -0x69

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    if-ne v6, v10, :cond_6

    if-lt v0, v9, :cond_0

    const/4 v3, 0x6

    :goto_0
    move v6, v3

    :goto_1
    return v6

    :cond_0
    const/16 v6, -0x55

    if-lt v0, v6, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :cond_1
    if-lt v0, v8, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/16 v6, -0x5f

    if-lt v0, v6, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    const/16 v6, -0x64

    if-lt v0, v6, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    if-lt v0, v7, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    const/16 v6, -0x41

    if-lt v0, v6, :cond_7

    const/4 v3, 0x4

    :goto_2
    const/4 v6, 0x7

    if-lt v2, v6, :cond_b

    const/4 v5, 0x4

    :goto_3
    if-ge v3, v5, :cond_f

    move v6, v3

    goto :goto_1

    :cond_7
    if-lt v0, v9, :cond_8

    const/4 v3, 0x3

    goto :goto_2

    :cond_8
    if-lt v0, v8, :cond_9

    const/4 v3, 0x2

    goto :goto_2

    :cond_9
    if-lt v0, v7, :cond_a

    const/4 v3, 0x1

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    :cond_b
    const/4 v6, 0x5

    if-lt v2, v6, :cond_c

    const/4 v5, 0x3

    goto :goto_3

    :cond_c
    const/4 v6, 0x3

    if-lt v2, v6, :cond_d

    const/4 v5, 0x2

    goto :goto_3

    :cond_d
    if-lt v2, v10, :cond_e

    const/4 v5, 0x1

    goto :goto_3

    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    :cond_f
    move v6, v5

    goto :goto_1
.end method

.method private getHdrSignalLevel()I
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoSignalBar()I

    move-result v0

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6LevelSignalStrength:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->SUPPORT_5_LEVEL_SIGNAL_CDMA:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    :cond_0
    const-string v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHdrSignalLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxCdmaLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHdrSignalLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxCdmaLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private static getHtcSenseVersion()F
    .locals 5

    const/high16 v4, 0x4120

    :try_start_0
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-float v3, v1

    div-float v2, v3, v4

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method private getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceStateData:[Landroid/telephony/ServiceState;

    if-eqz v3, :cond_8

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    :goto_0
    if-eqz v2, :cond_7

    array-length v3, v2

    if-lez v3, :cond_7

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceStateData:[Landroid/telephony/ServiceState;

    goto :goto_0

    :cond_3
    array-length v3, v2

    if-lt v0, v3, :cond_5

    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_5

    aget-object v3, v2, v0

    if-eqz v3, :cond_4

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    array-length v3, v2

    if-lt v0, v3, :cond_6

    const/4 v0, 0x0

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v3, v2, v0

    if-nez v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    array-length v3, v2

    if-ge v0, v3, :cond_7

    aget-object v1, v2, v0

    :cond_7
    :goto_4
    return-object v1

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_4
.end method

.method private getLteLevel()I
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v4, -0x55

    if-lt v3, v4, :cond_0

    const/4 v1, 0x4

    :goto_0
    const/16 v4, 0xb

    if-lt v2, v4, :cond_4

    const/4 v0, 0x4

    :goto_1
    if-ge v1, v0, :cond_8

    :goto_2
    return v1

    :cond_0
    const/16 v4, -0x5f

    if-lt v3, v4, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/16 v4, -0x69

    if-lt v3, v4, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/16 v4, -0x73

    if-lt v3, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    if-lt v2, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const/4 v4, 0x5

    if-lt v2, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    if-lt v2, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    move v1, v0

    goto :goto_2
.end method

.method private getPersistedWirelessSleepMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v2, "htc_wireless_sleep_mode_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v2, "htc_wireless_sleep_start_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v2, "htc_wireless_sleep_end_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepModeEnabled:Ljava/lang/Boolean;

    goto :goto_0

    :catch_1
    move-exception v1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    goto :goto_1

    :catch_2
    move-exception v1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    goto :goto_2
.end method

.method public static getWirelessChargingBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v4, "PhoneStatusBarPolicy"

    const-string v5, "Get wireless charging bitmap"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v6, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private hasService()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v0

    return v0
.end method

.method private hasService(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isEvdo(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method private isEvdo(Ljava/lang/Boolean;)Z
    .locals 4

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isLte(Ljava/lang/Boolean;)Z
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private declared-synchronized pokeWakeLock(Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "PhoneStatusBarPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v1, "PhoneStatusBarPolicy"

    const-string v2, "pokeWakeLock acquire"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "PhoneStatusBarPolicy"

    const-string v2, "pokeWakeLock release"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private process4LevelSignalStrength(I)I
    .locals 10

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const-string v7, "PhoneStatusBarPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network Type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xd

    if-ne v2, v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v5

    const-string v7, "PhoneStatusBarPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SignalStrength: lteRsrp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lteRsrq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v3, :cond_0

    if-lez v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    const/4 v6, 0x1

    mul-int/lit8 v3, v3, -0x1

    mul-int/lit8 v5, v5, -0x1

    const/16 v7, -0x50

    if-le v3, v7, :cond_2

    const/4 v4, 0x4

    :goto_0
    const/16 v7, -0xa

    if-le v5, v7, :cond_5

    const/4 v6, 0x4

    :goto_1
    if-le v4, v6, :cond_8

    move v0, v6

    :cond_1
    :goto_2
    move v1, v0

    :goto_3
    return v1

    :cond_2
    const/16 v7, -0x5a

    if-le v3, v7, :cond_3

    const/4 v4, 0x3

    goto :goto_0

    :cond_3
    const/16 v7, -0x64

    if-le v3, v7, :cond_4

    const/4 v4, 0x2

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/16 v7, -0xd

    if-le v5, v7, :cond_6

    const/4 v6, 0x3

    goto :goto_1

    :cond_6
    const/16 v7, -0x10

    if-le v5, v7, :cond_7

    const/4 v6, 0x2

    goto :goto_1

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    move v0, v4

    goto :goto_2

    :cond_9
    const/4 v7, 0x1

    if-le p1, v7, :cond_a

    const/16 v7, 0x63

    if-ne p1, v7, :cond_b

    :cond_a
    const/4 v0, 0x0

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_b
    const/16 v7, 0xc

    if-lt p1, v7, :cond_c

    const/4 v0, 0x4

    goto :goto_4

    :cond_c
    const/16 v7, 0x8

    if-lt p1, v7, :cond_d

    const/4 v0, 0x3

    goto :goto_4

    :cond_d
    const/4 v7, 0x4

    if-lt p1, v7, :cond_e

    const/4 v0, 0x2

    goto :goto_4

    :cond_e
    const/4 v7, 0x2

    if-lt p1, v7, :cond_f

    const/4 v0, 0x1

    goto :goto_4

    :cond_f
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private process5LevelSignalStrength(I)I
    .locals 11

    const/16 v10, 0xd

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const-string v7, "PhoneStatusBarPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network Type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v10, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v5

    const-string v7, "PhoneStatusBarPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SignalStrength: lteRsrp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lteRsrq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v3, :cond_0

    if-lez v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    const/4 v6, 0x1

    mul-int/lit8 v3, v3, -0x1

    mul-int/lit8 v5, v5, -0x1

    const/16 v7, -0x46

    if-le v3, v7, :cond_2

    const/4 v4, 0x5

    :goto_0
    const/4 v7, -0x7

    if-le v5, v7, :cond_6

    const/4 v6, 0x5

    :goto_1
    if-le v4, v6, :cond_a

    move v0, v6

    :cond_1
    :goto_2
    move v1, v0

    :goto_3
    return v1

    :cond_2
    const/16 v7, -0x50

    if-le v3, v7, :cond_3

    const/4 v4, 0x4

    goto :goto_0

    :cond_3
    const/16 v7, -0x5a

    if-le v3, v7, :cond_4

    const/4 v4, 0x3

    goto :goto_0

    :cond_4
    const/16 v7, -0x64

    if-le v3, v7, :cond_5

    const/4 v4, 0x2

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/16 v7, -0xa

    if-le v5, v7, :cond_7

    const/4 v6, 0x4

    goto :goto_1

    :cond_7
    const/16 v7, -0xd

    if-le v5, v7, :cond_8

    const/4 v6, 0x3

    goto :goto_1

    :cond_8
    const/16 v7, -0x10

    if-le v5, v7, :cond_9

    const/4 v6, 0x2

    goto :goto_1

    :cond_9
    const/4 v6, 0x1

    goto :goto_1

    :cond_a
    move v0, v4

    goto :goto_2

    :cond_b
    if-lez p1, :cond_c

    const/16 v7, 0x63

    if-ne p1, v7, :cond_d

    :cond_c
    const/4 v0, 0x0

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_d
    const/16 v7, 0x11

    if-lt p1, v7, :cond_e

    const/4 v0, 0x5

    goto :goto_4

    :cond_e
    if-lt p1, v10, :cond_f

    const/4 v0, 0x4

    goto :goto_4

    :cond_f
    const/16 v7, 0x8

    if-lt p1, v7, :cond_10

    const/4 v0, 0x3

    goto :goto_4

    :cond_10
    const/4 v7, 0x5

    if-lt p1, v7, :cond_11

    const/4 v0, 0x2

    goto :goto_4

    :cond_11
    const/4 v7, 0x3

    if-lt p1, v7, :cond_12

    const/4 v0, 0x1

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private processATTSignalStrength(I)I
    .locals 13

    const/4 v3, 0x0

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getGsmSignalDbm()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getGsmEcno()I

    move-result v1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v5

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v7

    const-string v10, "PhoneStatusBarPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ATT SignalStrength: asu="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " signalDbm="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ecno="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " lteRsrq="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " lteRsrq="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const-string v10, "PhoneStatusBarPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Network Type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xd

    if-ne v4, v10, :cond_b

    if-gtz v5, :cond_0

    if-lez v7, :cond_1

    :cond_0
    const/4 v6, 0x1

    const/4 v8, 0x1

    mul-int/lit8 v5, v5, -0x1

    mul-int/lit8 v7, v7, -0x1

    const/16 v10, -0x46

    if-le v5, v10, :cond_2

    const/4 v6, 0x5

    :goto_0
    const/4 v10, -0x7

    if-le v7, v10, :cond_6

    const/4 v8, 0x5

    :goto_1
    if-le v6, v8, :cond_a

    move v3, v8

    :cond_1
    :goto_2
    return v3

    :cond_2
    const/16 v10, -0x50

    if-le v5, v10, :cond_3

    const/4 v6, 0x4

    goto :goto_0

    :cond_3
    const/16 v10, -0x5a

    if-le v5, v10, :cond_4

    const/4 v6, 0x3

    goto :goto_0

    :cond_4
    const/16 v10, -0x64

    if-le v5, v10, :cond_5

    const/4 v6, 0x2

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/16 v10, -0xa

    if-le v7, v10, :cond_7

    const/4 v8, 0x4

    goto :goto_1

    :cond_7
    const/16 v10, -0xd

    if-le v7, v10, :cond_8

    const/4 v8, 0x3

    goto :goto_1

    :cond_8
    const/16 v10, -0x10

    if-le v7, v10, :cond_9

    const/4 v8, 0x2

    goto :goto_1

    :cond_9
    const/4 v8, 0x1

    goto :goto_1

    :cond_a
    move v3, v6

    goto :goto_2

    :cond_b
    const/4 v10, 0x3

    if-lt v4, v10, :cond_1b

    if-gtz v9, :cond_c

    if-lez v1, :cond_16

    :cond_c
    mul-int/lit8 v9, v9, -0x1

    mul-int/lit8 v1, v1, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x1

    const/16 v10, -0x50

    if-le v9, v10, :cond_d

    const/4 v0, 0x5

    :goto_3
    const/16 v10, -0x14

    if-le v1, v10, :cond_11

    const/4 v2, 0x5

    :goto_4
    if-le v0, v2, :cond_15

    move v3, v2

    :goto_5
    goto :goto_2

    :cond_d
    const/16 v10, -0x5a

    if-le v9, v10, :cond_e

    const/4 v0, 0x4

    goto :goto_3

    :cond_e
    const/16 v10, -0x64

    if-le v9, v10, :cond_f

    const/4 v0, 0x3

    goto :goto_3

    :cond_f
    const/16 v10, -0x6a

    if-le v9, v10, :cond_10

    const/4 v0, 0x2

    goto :goto_3

    :cond_10
    const/4 v0, 0x1

    goto :goto_3

    :cond_11
    const/16 v10, -0x18

    if-le v1, v10, :cond_12

    const/4 v2, 0x4

    goto :goto_4

    :cond_12
    const/16 v10, -0x1c

    if-le v1, v10, :cond_13

    const/4 v2, 0x3

    goto :goto_4

    :cond_13
    const/16 v10, -0x20

    if-le v1, v10, :cond_14

    const/4 v2, 0x2

    goto :goto_4

    :cond_14
    const/4 v2, 0x1

    goto :goto_4

    :cond_15
    move v3, v0

    goto :goto_5

    :cond_16
    const/16 v10, -0x50

    if-le v9, v10, :cond_17

    const/4 v3, 0x5

    goto :goto_2

    :cond_17
    const/16 v10, -0x59

    if-le v9, v10, :cond_18

    const/4 v3, 0x4

    goto :goto_2

    :cond_18
    const/16 v10, -0x62

    if-le v9, v10, :cond_19

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_19
    const/16 v10, -0x68

    if-le v9, v10, :cond_1a

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_1a
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_1b
    if-lez p1, :cond_1c

    const/16 v10, 0x63

    if-ne p1, v10, :cond_1d

    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_1d
    const/16 v10, 0x11

    if-lt p1, v10, :cond_1e

    const/4 v3, 0x5

    goto/16 :goto_2

    :cond_1e
    const/16 v10, 0xd

    if-lt p1, v10, :cond_1f

    const/4 v3, 0x4

    goto/16 :goto_2

    :cond_1f
    const/16 v10, 0x8

    if-lt p1, v10, :cond_20

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_20
    const/4 v10, 0x5

    if-lt p1, v10, :cond_21

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_21
    const/4 v10, 0x3

    if-lt p1, v10, :cond_22

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_22
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method private processIfLowCategoryHspa()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ro.ril.hsdpa.category"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private processSBMSignalStrength(I)I
    .locals 5

    const/4 v0, 0x0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_1

    if-lez p1, :cond_0

    const/16 v1, 0x63

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    int-to-double v1, p1

    const-wide v3, 0x4030c00000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    int-to-double v1, p1

    const-wide v3, 0x4021800000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    int-to-double v1, p1

    const-wide/high16 v3, 0x4013

    cmpl-double v1, v1, v3

    if-lez v1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff8

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final showWirelessChargingStatus(Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "status"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Wireless Charging] status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v3, :pswitch_data_0

    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Wireless Charging] wrong status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/app/Notification;

    const v4, 0x7f020119

    const-string v5, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x1c

    if-eq v4, v5, :cond_1

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.framework.activity.location.HtcLocationSettingsProxy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f0800ab

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0800ac

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "battery_wireless_charging"

    invoke-virtual {v4, v5, v9, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    const-string v4, "PhoneStatusBarPolicy"

    const-string v5, "mNotificationManager == null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "battery_wireless_charging"

    invoke-virtual {v4, v5, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final showWirelessChargingStatusForVzW(Landroid/content/Intent;)V
    .locals 12

    const-string v8, "isCancel"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v8, "isInterruptShowing"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v3, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v8, :cond_0

    const-string v8, "PhoneStatusBarPolicy"

    const-string v9, "[Wireless Charging] mWirelessChargingDialog is null"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcSenseVersion()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    invoke-virtual {v8}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->removeView()V

    :goto_1
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->pokeWakeLock(Z)V

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isShowingWirelessCharging:Z

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    invoke-virtual {v8}, Lcom/htc/lockscreen/HtcLSViewConnection;->removeView()V

    goto :goto_1

    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isShowingWirelessCharging:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isShowingWirelessCharging:Z

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f030001

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0e0005

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0e0006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const-string v8, "status"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v8, "PhoneStatusBarPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Wireless Charging] status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v5, :pswitch_data_0

    const-string v8, "PhoneStatusBarPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Wireless Charging] wrong status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const v8, 0x7f0800a9

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    const v8, 0x7f0200bc

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v8, 0x7f0800a7

    invoke-virtual {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcSenseVersion()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200bc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getWirelessChargingBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    invoke-virtual {v8, v1}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f0800a7

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setTitle(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f0800ad

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setHint(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f0800ae

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setDescript(Ljava/lang/String;)V

    :goto_2
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->pokeWakeLock(Z)V

    :goto_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcSenseVersion()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->setView(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    :goto_4
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isShowingWirelessCharging:Z

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    const v9, 0x7f0e0008

    const v10, 0x7f0200bc

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSView;->setImageViewResource(II)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    const v9, 0x7f0e0009

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f0800a7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    const v8, 0x7f0800aa

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    const v8, 0x7f0200bb

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v8, 0x7f0800a8

    invoke-virtual {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcSenseVersion()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200bb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getWirelessChargingBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    invoke-virtual {v8, v1}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f0800a8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setTitle(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x7f0800af

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setHint(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->setDescript(Ljava/lang/String;)V

    :goto_5
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->pokeWakeLock(Z)V

    goto/16 :goto_3

    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    const v9, 0x7f0e0008

    const v10, 0x7f0200bb

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSView;->setImageViewResource(II)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    const v9, 0x7f0e0009

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f0800a8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    const-string v9, "main"

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    invoke-virtual {v8, v9, v10}, Lcom/htc/lockscreen/HtcLSViewConnection;->setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    invoke-virtual {v8}, Lcom/htc/lockscreen/HtcLSViewConnection;->updateView()V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3

    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarmVisibility()V

    return-void
.end method

.method private final updateAlarmVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_show_alarm_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x0

    const-string v2, "icon-small"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "level"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "battery"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBatteryVisibility()V

    return-void
.end method

.method private final updateBatteryVisibility()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_show_battery"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "battery"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 7

    const/4 v5, 0x0

    const v2, 0x7f02014e

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "bluetooth"

    invoke-virtual {v4, v6, v2, v5, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetoothVisibility()V

    return-void

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const v2, 0x7f02014f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f08003e

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f08003f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBluetooth via invalid intent!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private final updateBluetoothVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_show_bluetooth_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private updateCDMASignalStrength()V
    .locals 8

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v2

    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@ iconIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isEvdo()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHdrSignalLevel()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getCdmaLevelDirectly()I

    move-result v3

    if-nez v2, :cond_1

    sget-object v4, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages_CT_r:[[I

    aget-object v4, v4, v0

    aget v1, v4, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "phone_signal"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_1
    sget-object v4, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages_CT:[[I

    aget-object v4, v4, v0

    aget v1, v4, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getCdmaLevelDirectly()I

    move-result v3

    if-nez v2, :cond_3

    sget-object v4, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages1x_CT_r:[I

    aget v1, v4, v3

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages1x_CT:[I

    aget v1, v4, v3

    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 9

    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isCdma()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    if-ne v0, v4, :cond_2

    const-string v3, "PhoneStatusBarPolicy"

    const-string v4, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    const-string v3, "PhoneStatusBarPolicy"

    const-string v4, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "phone_signal"

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    aget v5, v1, v0

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    const v5, 0x7f0201d9

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    move-object v3, v4

    check-cast v3, Landroid/net/NetworkInfo;

    const-string v4, "inetCondition"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSignalStrength()V

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v4, v4, v5

    aget v1, v4, v6

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wifi"

    invoke-virtual {v4, v5, v1, v6, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wifi"

    invoke-virtual {v4, v5, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateWifiVisibility()V

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSignalStrength()V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    aget v1, v4, v5

    goto :goto_1

    :cond_2
    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v4, :cond_0

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v4, v4, v6

    aget v1, v4, v6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wifi"

    invoke-virtual {v4, v5, v1, v6, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "wifi"

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateWifiVisibility()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 14

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isCdma()Z

    move-result v9

    if-nez v9, :cond_25

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    const-string v9, "PhoneStatusBarPolicy"

    const-string v10, "updateDataIcon()-Not in GSM phone type "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAttPdpHandler:Landroid/os/Handler;

    const/16 v10, 0x384

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    if-nez v0, :cond_3

    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_g:[[I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v9, v10

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v10, :cond_24

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService()Z

    move-result v9

    if-eqz v9, :cond_b

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3e

    if-eq v9, v10, :cond_5

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLteFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    :cond_5
    const/4 v5, 0x0

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcATTDataCategory:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastHtcATTDataCategory:I

    if-eq v9, v10, :cond_6

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcATTDataCategory:I

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastHtcATTDataCategory:I

    const/4 v5, 0x1

    :cond_6
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastHtcAttDataActivity:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    if-eq v9, v10, :cond_7

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastHtcATTDataCategory:I

    const/4 v5, 0x1

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getATTDataType()[I

    move-result-object v7

    if-eqz v7, :cond_9

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I

    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAttPdpHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAttPdpHandler:Landroid/os/Handler;

    const/16 v11, 0x384

    const/4 v12, 0x0

    array-length v13, v7

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I

    aget v11, v7, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :cond_9
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    invoke-interface {v9, v10, v8}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconVisible:Z

    if-eq v9, v8, :cond_0

    const-string v9, "PhoneStatusBarPolicy"

    const-string v10, "mDataIconVisible != visible"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    invoke-virtual {v9, v10, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconVisible:Z

    goto/16 :goto_0

    :cond_a
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    packed-switch v9, :pswitch_data_0

    const/4 v9, 0x0

    aget v2, v0, v9

    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const/4 v9, 0x1

    aget v2, v0, v9

    goto :goto_3

    :pswitch_1
    const/4 v9, 0x2

    aget v2, v0, v9

    goto :goto_3

    :pswitch_2
    const/4 v9, 0x3

    aget v2, v0, v9

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService()Z

    move-result v9

    if-eqz v9, :cond_23

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getGprsState()I

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v9

    if-eqz v9, :cond_23

    :cond_c
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x2

    if-eq v9, v10, :cond_d

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x1b

    if-eq v9, v10, :cond_d

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xda

    if-eq v9, v10, :cond_d

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xd8

    if-eq v9, v10, :cond_d

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x1

    if-ne v9, v10, :cond_21

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_21

    :cond_d
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    :pswitch_3
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x0

    aget v2, v9, v10

    const/4 v8, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3e

    if-eq v9, v10, :cond_e

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLteFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    :cond_e
    const v2, 0x7f020166

    goto :goto_4

    :cond_f
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x0

    aget v2, v9, v10

    goto :goto_4

    :pswitch_5
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_11

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3e

    if-eq v9, v10, :cond_10

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLteFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    :cond_10
    const v2, 0x7f020166

    goto :goto_4

    :cond_11
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x1

    aget v2, v9, v10

    goto :goto_4

    :pswitch_6
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_15

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3e

    if-eq v9, v10, :cond_12

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLteFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    :cond_12
    const v2, 0x7f02013e

    goto :goto_4

    :cond_13
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLowCategoryHspa:Z

    if-nez v9, :cond_14

    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x4

    aget v2, v9, v10

    goto :goto_4

    :cond_14
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x2

    aget v2, v9, v10

    goto :goto_4

    :cond_15
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3d

    if-eq v9, v10, :cond_16

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3c

    if-eq v9, v10, :cond_16

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_17

    :cond_16
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x6

    aget v2, v9, v10

    goto :goto_4

    :cond_17
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x2

    aget v2, v9, v10

    goto :goto_4

    :pswitch_7
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1b

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3e

    if-eq v9, v10, :cond_18

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLteFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    :cond_18
    const v2, 0x7f02013e

    goto/16 :goto_4

    :cond_19
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLowCategoryHspa:Z

    if-nez v9, :cond_1a

    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x4

    aget v2, v9, v10

    goto/16 :goto_4

    :cond_1a
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x2

    aget v2, v9, v10

    goto/16 :goto_4

    :cond_1b
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3c

    if-eq v9, v10, :cond_1c

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_1d

    :cond_1c
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x3

    aget v2, v9, v10

    goto/16 :goto_4

    :cond_1d
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x1b

    if-ne v9, v10, :cond_1e

    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x2

    aget v2, v9, v10

    goto/16 :goto_4

    :cond_1e
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x3

    aget v2, v9, v10

    goto/16 :goto_4

    :pswitch_8
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_20

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x3e

    if-eq v9, v10, :cond_1f

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLteFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_20

    :cond_1f
    const v2, 0x7f020143

    goto/16 :goto_4

    :cond_20
    sget-object v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetCapability:[I

    const/4 v10, 0x5

    aget v2, v9, v10

    goto/16 :goto_4

    :cond_21
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataNetType(I)V

    const-string v9, "PhoneStatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get DataNetType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    packed-switch v9, :pswitch_data_2

    const/4 v9, 0x0

    aget v2, v0, v9

    :goto_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    const/4 v9, 0x1

    aget v2, v0, v9

    goto :goto_5

    :pswitch_a
    const/4 v9, 0x2

    aget v2, v0, v9

    goto :goto_5

    :pswitch_b
    const/4 v9, 0x3

    aget v2, v0, v9

    goto :goto_5

    :pswitch_c
    const/4 v9, 0x0

    aget v2, v0, v9

    goto :goto_5

    :cond_22
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_24
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v9

    if-nez v9, :cond_9

    const v2, 0x7f0201c5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_25
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_26

    const-string v9, "PhoneStatusBarPolicy"

    const-string v10, "updateDataIcon()-Not in CDMA phone type "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_26
    if-nez v0, :cond_27

    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getDataNetworkIconList_1x()[[I

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v9, v10

    :cond_27
    const-string v9, "PhoneStatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasService()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,mDataState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,mPhone.htcModemLinkOn()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,mDataActivity="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v6

    const-string v9, "PhoneStatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "slotType[0]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v10, "RUIM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v10, "SIM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v9

    if-eqz v9, :cond_2b

    :cond_28
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v10, :cond_2b

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    const v11, 0x7f0201c5

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :cond_29
    :goto_6
    sget-boolean v9, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v9, :cond_9

    const-string v9, "CONNECTED"

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWModeState:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a

    const-string v9, "SUSPENDED"

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWModeState:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_2a
    const/4 v8, 0x0

    const-string v9, "PhoneStatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "C+W ppp connected!, set visibility of 3g icon = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v9

    if-eqz v9, :cond_2f

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2c

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v9

    if-eqz v9, :cond_2f

    :cond_2c
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v9, v10, :cond_2f

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    packed-switch v9, :pswitch_data_3

    const/4 v9, 0x0

    aget v2, v0, v9

    :goto_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconVisible:Z

    if-nez v9, :cond_29

    const-string v9, "PhoneStatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDataIconVisible = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconVisible:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", set visibility of 3g icon = false"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "data_connection"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :pswitch_d
    const/4 v9, 0x1

    aget v2, v0, v9

    goto :goto_7

    :pswitch_e
    const/4 v9, 0x2

    aget v2, v0, v9

    goto :goto_7

    :pswitch_f
    const/4 v9, 0x3

    aget v2, v0, v9

    goto :goto_7

    :pswitch_10
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_DATA_CONNECTION_ICON_DORMANCY_RULE_V:Z

    if-eqz v9, :cond_2d

    const/4 v9, 0x0

    aget v2, v0, v9

    goto :goto_7

    :cond_2d
    array-length v9, v0

    const/4 v10, 0x4

    if-le v9, v10, :cond_2e

    const/4 v9, 0x4

    :goto_8
    aget v2, v0, v9

    goto :goto_7

    :cond_2e
    const/4 v9, 0x0

    goto :goto_8

    :cond_2f
    const/4 v8, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v9

    if-eqz v9, :cond_30

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataState:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_29

    :cond_30
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    goto/16 :goto_6

    :catch_0
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    :catchall_0
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 9

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHIcon:I

    const/4 v8, 0x0

    const/16 v6, 0x88

    const/4 v5, 0x1

    const/16 v2, 0x9b

    const/16 v4, 0xa

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcATTDataCategory:I

    :goto_0
    return-void

    :pswitch_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_2g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcATTDataCategory:I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_e:[[I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_2g:[[I

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_1

    :pswitch_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLowCategoryHspa:Z

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    :goto_2
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcATTDataCategory:I

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_2

    :cond_5
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_6

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v6, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_2

    :cond_8
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v4, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302610"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "302640"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3_5g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_2

    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_2

    :cond_b
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_d

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLowCategoryHspa:Z

    if-nez v1, :cond_c

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3_5g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_2

    :cond_c
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_2

    :cond_d
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-nez v1, :cond_f

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_e

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_e

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_f

    :cond_e
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_td:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_2

    :cond_f
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x89

    if-ne v1, v2, :cond_12

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x98

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_2

    :cond_10
    const-string v1, "302220"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_2

    :cond_11
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_2

    :cond_12
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_2

    :pswitch_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v1, :cond_15

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLowCategoryHspa:Z

    if-eq v1, v5, :cond_13

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    :goto_3
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcATTDataCategory:I

    goto/16 :goto_0

    :cond_14
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_3

    :cond_15
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_16

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v6, :cond_18

    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_3

    :cond_17
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_3

    :cond_18
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v4, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302610"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "302640"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3_5g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_3

    :cond_1a
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_h:[[I

    const/16 v8, 0x0

    if-eq v7, v8, :cond_1b

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    const/16 v8, 0x1

    if-eq v7, v8, :cond_1b

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_vzw_lte:[[I

    const/16 v8, 0x2

    if-eq v7, v8, :cond_1b

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_lte:[[I

    const/16 v8, 0x3

    if-eq v7, v8, :cond_1b

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    const/16 v8, 0x4

    if-eq v7, v8, :cond_1b

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g_plus:[[I

    const/16 v8, 0x5

    if-eq v7, v8, :cond_1b

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3_5g:[[I

    const/16 v8, 0x6

    if-eq v7, v8, :cond_1b

    :cond_1b
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :cond_1c
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x71

    if-ne v1, v2, :cond_1d

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1e

    :cond_1d
    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORANG202"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1e
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g_plus:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :cond_1f
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x89

    if-ne v1, v2, :cond_24

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x98

    if-ne v1, v2, :cond_24

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :cond_20
    const-string v1, "302220"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :cond_21
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_23

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_h:[[I

    const/16 v8, 0x0

    if-eq v7, v8, :cond_22

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    const/16 v8, 0x1

    if-eq v7, v8, :cond_22

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_vzw_lte:[[I

    const/16 v8, 0x2

    if-eq v7, v8, :cond_22

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_lte:[[I

    const/16 v8, 0x3

    if-eq v7, v8, :cond_22

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    const/16 v8, 0x4

    if-eq v7, v8, :cond_22

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g_plus:[[I

    const/16 v8, 0x5

    if-eq v7, v8, :cond_22

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3_5g:[[I

    const/16 v8, 0x6

    if-eq v7, v8, :cond_22

    :cond_22
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :cond_23
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :cond_24
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_h:[[I

    const/16 v8, 0x0

    if-eq v7, v8, :cond_25

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    const/16 v8, 0x1

    if-eq v7, v8, :cond_25

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_vzw_lte:[[I

    const/16 v8, 0x2

    if-eq v7, v8, :cond_25

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_lte:[[I

    const/16 v8, 0x3

    if-eq v7, v8, :cond_25

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    const/16 v8, 0x4

    if-eq v7, v8, :cond_25

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g_plus:[[I

    const/16 v8, 0x5

    if-eq v7, v8, :cond_25

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3_5g:[[I

    const/16 v8, 0x6

    if-eq v7, v8, :cond_25

    :cond_25
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :cond_26
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_28

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLowCategoryHspa:Z

    if-nez v1, :cond_27

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3_5g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :cond_27
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :cond_28
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_3

    :pswitch_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getDataNetworkIconList_1x()[[I

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getDataNetworkIconList_1x()[[I

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getDataNetworkIconList_Evdo()[[I

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getDataNetworkIconList_eHRPD()[[I

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto/16 :goto_0

    :pswitch_8
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_29

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_vzw_lte:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    :goto_4
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcATTDataCategory:I

    goto/16 :goto_0

    :cond_29
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9f

    if-ne v1, v2, :cond_2a

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_4g:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_4

    :cond_2a
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_lte:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_4

    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto/16 :goto_0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private final updateGPSVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_show_gps_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "enabled"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    const v4, 0x108051d

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateGPSVisibility()V

    return-void

    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    const v4, 0x7f0201c1

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateHWMetaStatus(Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "meta_status_fn"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "meta_status_caps"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v5, :cond_6

    sget-object v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sMetaFNImages:[I

    aget v2, v6, v4

    :goto_0
    if-eq v1, v5, :cond_0

    if-ne v1, v8, :cond_7

    :cond_0
    move v3, v5

    :goto_1
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "hw_meta_fn"

    invoke-virtual {v6, v7, v2, v4, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mFNVisible:Z

    if-eq v6, v3, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "hw_meta_fn"

    invoke-virtual {v6, v7, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mFNVisible:Z

    :cond_2
    if-ne v0, v5, :cond_8

    sget-object v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sMetaCAPSImages:[I

    aget v2, v6, v4

    :goto_2
    if-eq v0, v5, :cond_3

    if-ne v0, v8, :cond_9

    :cond_3
    move v3, v5

    :goto_3
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "hw_meta_caps"

    invoke-virtual {v5, v6, v2, v4, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCAPSVisible:Z

    if-eq v4, v3, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "hw_meta_caps"

    invoke-virtual {v4, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCAPSVisible:Z

    :cond_5
    return-void

    :cond_6
    sget-object v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sMetaFNImages:[I

    aget v2, v6, v5

    goto :goto_0

    :cond_7
    move v3, v4

    goto :goto_1

    :cond_8
    sget-object v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sMetaCAPSImages:[I

    aget v2, v6, v5

    goto :goto_2

    :cond_9
    move v3, v4

    goto :goto_3
.end method

.method private final updateHeadsetVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_show_headset_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset_plug"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private final updateSignalStrength()V
    .locals 12

    const/16 v11, 0x63

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v2, -0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v10, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "PhoneStatusBarPolicy"

    const-string v6, "updateSignalStrength() ss==null return"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz v4, :cond_5

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_1

    const v5, 0x7f0201e6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "phone_signal"

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v5, v6, v7, v9, v10}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v5, v8, :cond_2

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->SUPPORT_5_LEVEL_SIGNAL:Z

    if-eqz v5, :cond_3

    :cond_2
    const v5, 0x7f020120

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_1

    :cond_3
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    if-ne v5, v7, :cond_4

    const v5, 0x7f020018

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_1

    :cond_4
    const v5, 0x7f0201e9

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_1

    :cond_5
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcServiceState(Ljava/lang/Boolean;Ljava/lang/Integer;)Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isCdma()Z

    move-result v5

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-eq v5, v7, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "PhoneStatusBarPolicy"

    const-string v6, "updateSignalStrength()-Not in GSM phone type "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v8, :cond_a

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->processATTSignalStrength(I)I

    move-result v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->s5LevelSignalImages:[I

    :cond_7
    :goto_2
    array-length v5, v3

    if-gt v2, v5, :cond_8

    if-gez v2, :cond_9

    :cond_8
    const/4 v2, 0x0

    const-string v5, "PhoneStatusBarPolicy"

    const-string v6, "OoO fix iconLevel index range !"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    aget v5, v3, v2

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "phone_signal"

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v5, v6, v7, v9, v10}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd1

    if-ne v5, v6, :cond_c

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->processSBMSignalStrength(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages_r:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    :goto_3
    goto :goto_2

    :cond_b
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_13

    int-to-double v5, v0

    const-wide/high16 v7, 0x4012

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_d

    if-ne v0, v11, :cond_e

    :cond_d
    const/4 v2, 0x0

    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages_r:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto :goto_2

    :cond_e
    int-to-double v5, v0

    const-wide/high16 v7, 0x402d

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_f

    const/4 v2, 0x4

    goto :goto_4

    :cond_f
    const/16 v5, 0xa

    if-lt v0, v5, :cond_10

    const/4 v2, 0x3

    goto :goto_4

    :cond_10
    const/16 v5, 0x8

    if-lt v0, v5, :cond_11

    const/4 v2, 0x2

    goto :goto_4

    :cond_11
    const/4 v2, 0x1

    goto :goto_4

    :cond_12
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto :goto_2

    :cond_13
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x50

    if-ne v5, v6, :cond_1c

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x94

    if-ne v5, v6, :cond_1c

    int-to-double v5, v0

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_14

    if-ne v0, v11, :cond_15

    :cond_14
    const/4 v2, 0x0

    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->htcGsm6SignalImages_r:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto/16 :goto_2

    :cond_15
    int-to-double v5, v0

    const-wide v7, 0x4031800000000000L

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_16

    const/4 v2, 0x6

    goto :goto_5

    :cond_16
    const/16 v5, 0xf

    if-lt v0, v5, :cond_17

    const/4 v2, 0x5

    goto :goto_5

    :cond_17
    const/16 v5, 0xc

    if-lt v0, v5, :cond_18

    const/4 v2, 0x4

    goto :goto_5

    :cond_18
    int-to-double v5, v0

    const-wide/high16 v7, 0x4021

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_19

    const/4 v2, 0x3

    goto :goto_5

    :cond_19
    const/4 v5, 0x5

    if-lt v0, v5, :cond_1a

    const/4 v2, 0x2

    goto :goto_5

    :cond_1a
    const/4 v2, 0x1

    goto :goto_5

    :cond_1b
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->htcGsm6SignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto/16 :goto_2

    :cond_1c
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->SUPPORT_5_LEVEL_SIGNAL:Z

    if-eqz v5, :cond_1e

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->process5LevelSignalStrength(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->s5LevelSignalImages_r:[I

    goto/16 :goto_2

    :cond_1d
    sget-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->s5LevelSignalImages:[I

    goto/16 :goto_2

    :cond_1e
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->process4LevelSignalStrength(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages_r:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto/16 :goto_2

    :cond_1f
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto/16 :goto_2

    :cond_20
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-eq v5, v8, :cond_21

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "PhoneStatusBarPolicy"

    const-string v6, "updateSignalStrength()-Not in CDMA phone type "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_21
    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v5, :cond_22

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v6, 0x7

    if-ne v5, v6, :cond_23

    :cond_22
    const-string v5, "PhoneStatusBarPolicy"

    const-string v6, "Call updateCDMASignalStrength()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCDMASignalStrength()V

    goto/16 :goto_0

    :cond_23
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getSignalStrengthIconList()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    const/4 v1, 0x0

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    const-string v5, "PhoneStatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@@ iconIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    packed-switch v1, :pswitch_data_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getSignalStrengthIconList_r()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getCdmaLevelDirectly()I

    move-result v2

    const-string v5, "PhoneStatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iconLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_7

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x61

    if-ne v5, v6, :cond_28

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isLte(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getLteLevel()I

    move-result v2

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getSignalStrengthIconList_r()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto :goto_6

    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getSignalStrengthIconList()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto :goto_6

    :pswitch_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getSignalStrengthIconList_flash()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto :goto_6

    :cond_25
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getSignalStrengthIconList()[[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v3, v5, v6

    goto :goto_6

    :cond_26
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isEvdo(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getEvdoLevel()I

    move-result v2

    goto/16 :goto_2

    :cond_27
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getCdmaLevel()I

    move-result v2

    goto/16 :goto_2

    :cond_28
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneState:I

    if-nez v5, :cond_2b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isEvdo()Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlwaysUseCdmaRssi:Z

    if-nez v5, :cond_2b

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    if-eqz v5, :cond_2a

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataState:I

    if-ne v5, v8, :cond_29

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_29

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getEvdoLevel()I

    move-result v2

    goto/16 :goto_2

    :cond_29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getCdmaLevel()I

    move-result v2

    goto/16 :goto_2

    :cond_2a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getEvdoLevel()I

    move-result v2

    goto/16 :goto_2

    :cond_2b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getCdmaLevel()I

    move-result v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 4

    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->WORLD_PHONE_CONFIG:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v2

    if-nez v2, :cond_8

    :goto_1
    return-void

    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_4
    const-string v2, "ICC_FAIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_5
    const-string v2, "IMEI_LOCK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_6
    const-string v2, "ICC_EXPIRED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataIcon()V

    goto :goto_1
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ttyEnabled"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTTY: enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcTtyStatus:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadsetStatus(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final updateVolume()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v2, v3, :cond_3

    :cond_0
    :goto_0
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const v1, 0x7f0201d7

    :goto_1
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "volume"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    invoke-virtual {v4, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeVisibility()V

    return-void

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    const v1, 0x7f0201d6

    goto :goto_1
.end method

.method private final updateVolumeVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_show_volume_icons"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "wifi_state"

    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "wifi"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    sget-boolean v12, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cwwifi"

    invoke-virtual {v12, v13}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateWifiVisibility()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v12, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "connected"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "wifi"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    sget-boolean v12, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cwwifi"

    invoke-virtual {v12, v13}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v12, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "cw_reg_state"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    add-int/lit8 v7, v12, 0x1

    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifi ACTION_CW_REGISTRATION_STATE_CHANGED: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x65

    if-ne v11, v12, :cond_4

    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "C+W registration successful!, Rssi:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cwwifi"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWIconList:[I

    aget v14, v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsCWRegistered:Z

    goto/16 :goto_1

    :cond_4
    const-string v12, "PhoneStatusBarPolicy"

    const-string v13, "C+W registration fail!"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cwwifi"

    invoke-virtual {v12, v13}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsCWRegistered:Z

    goto/16 :goto_1

    :cond_5
    const-string v12, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWModeState:Ljava/lang/String;

    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCWModeState = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWModeState:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    add-int/lit8 v7, v12, 0x1

    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifi ACTION_ANY_CW_DATA_CONNECTION_STATE_CHANGED: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "CONNECTED"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "SUSPENDED"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "C+W ppp connected!, Rssi:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sCWConnected:[I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWIconList:[I

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsCWRegistered:Z

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cwwifi"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWIconList:[I

    aget v14, v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x33

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x64

    invoke-virtual {v12, v8, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_7
    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "C+W ppp disconnected!, Rssi:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sCWRegistered:[I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWIconList:[I

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cwwifi"

    invoke-virtual {v12, v13}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "networkInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    sget-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget v4, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsCWRegistered:Z

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsCWRegistered:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cwwifi"

    invoke-virtual {v12, v13}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v12, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "newRssi"

    const/16 v13, -0xc8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v12, "frequency"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    array-length v12, v12

    invoke-static {v9, v12, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v10

    sget-boolean v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v12, :cond_b

    const/16 v12, -0xc7

    if-ne v9, v12, :cond_b

    const/4 v10, -0x1

    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v10, v12, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    sget-boolean v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v12, :cond_c

    sget-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v12, v12, v13

    aget v4, v12, v10

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "wifi"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v4, v14, v15}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_5
    sget-boolean v12, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v12, :cond_0

    add-int/lit8 v7, v10, 0x1

    const-string v12, "PhoneStatusBarPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "C+W Rssi: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    if-ne v10, v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cwwifi"

    invoke-virtual {v12, v13}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const v4, 0x7f0201ff

    goto :goto_4

    :cond_d
    const/4 v12, -0x1

    if-ne v10, v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "wifi"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v12, :cond_10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "wifi"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_f
    sget-object v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v12, v12, v13

    aget v4, v12, v10

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "wifi"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v4, v14, v15}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    goto :goto_5

    :cond_10
    const v4, 0x7f0201ff

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsCWRegistered:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "cwwifi"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCWIconList:[I

    aget v14, v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1
.end method

.method private final updateWifiVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_show_wifi_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method initWirelessCharging()V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getHtcSenseVersion()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4008

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleWirelessChargingView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v7}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIdleViewConnection:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    invoke-virtual {v0, v2}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->register(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/lockscreen/HtcLSView;

    const v2, 0x7f030002

    invoke-direct {v0, v1, v2}, Lcom/htc/lockscreen/HtcLSView;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWirelessChargingView:Lcom/htc/lockscreen/HtcLSView;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/lockscreen/HtcLSViewConnection;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v7}, Lcom/htc/lockscreen/HtcLSViewConnection;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v2}, Lcom/htc/lockscreen/HtcLSViewConnection;->register(Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    goto :goto_0
.end method

.method protected updateHACStatus(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    const-string v2, "enabled"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "hac_status"

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected updateHeadsetStatus(Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetIntent:Landroid/content/Intent;

    const-string v9, "state"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v9, "name"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "microphone"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHtcTtyStatus:Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    if-nez v3, :cond_1

    and-int/lit8 v9, v6, 0x20

    if-gtz v9, :cond_0

    and-int/lit8 v9, v6, 0x40

    if-lez v9, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    and-int/lit8 v9, v6, 0x18

    if-lez v9, :cond_3

    move v0, v7

    :goto_0
    if-ne v6, v7, :cond_4

    if-ne v5, v7, :cond_4

    move v1, v7

    :goto_1
    if-ne v6, v7, :cond_5

    if-nez v5, :cond_5

    move v2, v7

    :goto_2
    if-eqz v1, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "headset_plug"

    const v11, 0x7f0201c4

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_3
    if-eqz v0, :cond_8

    :cond_2
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v9, "headset_plug"

    invoke-virtual {v8, v9, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadsetVisibility()V

    return-void

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    move v1, v8

    goto :goto_1

    :cond_5
    move v2, v8

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "headset_plug"

    const v11, 0x7f0201c3

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v9, "headset_plug"

    invoke-virtual {v7, v9, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v10, "headset_plug"

    const v11, 0x7f0201ef

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_4
.end method
