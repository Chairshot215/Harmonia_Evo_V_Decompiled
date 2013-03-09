.class public Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;
.super Ljava/lang/Object;
.source "HtcCdmaStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;,
        Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;
    }
.end annotation


# static fields
.field static final GPSONE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.GPSONE_MODE_CHANGED"

.field private static final LISTEN_DORMANCY_EVENT:I = 0x2

.field private static final LISTEN_MT_GPS_EVENT:I = 0x3

.field private static final LISTEN_ROAMING_EVENT:I = 0x1

.field private static final LOG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaStatusBar"

.field private static final PRE_STATE_OF_GPSONE:Ljava/lang/String; = "pre_state_of_gpsone"

#the value of this static final field might be set in the static constructor
.field protected static final SUPPORT_5_LEVEL_SIGNAL_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field private static final USE_VZW_CUSTOM_3G_ICON:Z = false

#the value of this static final field might be set in the static constructor
.field private static final USE_VZW_CUSTOM_3G_ICON_DEVICE:Z = false

.field private static final VZW_LBS_PROVIDER:Ljava/lang/String; = "vzw_lbs"

.field public static gpsOneContentObserver:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver; = null

#the value of this static final field might be set in the static constructor
.field private static final htcCdma3GdataNetworkIcon:Z = false

.field private static final htcCdma4SignalImages:[[I = null

.field public static final htcCdma4SignalImages1x_CT:[I = null

.field public static final htcCdma4SignalImages1x_CT_r:[I = null

.field public static final htcCdma4SignalImages_CT:[[I = null

.field public static final htcCdma4SignalImages_CT_r:[[I = null

.field private static final htcCdma4SignalImages_flash:[[I = null

.field private static final htcCdma4SignalImages_r:[[I = null

.field private static final htcCdma5SignalImages_flash:[[I = null

#the value of this static final field might be set in the static constructor
.field protected static final htcCdma6LevelSignalStrength:Z = false

.field private static final htcCdma6SignalImages:[[I = null

.field private static final htcCdma6SignalImages_flash:[[I = null

.field private static final htcCdma6SignalImages_r:[[I = null

.field public static final htcCdmaDataConnected_CT_3g:[I = null

.field private static final htcCdmas5SignalImages:[[I = null

.field private static final htcCdmas5SignalImages_r:[[I = null

.field private static final logKeywordMtGpsActivity:Ljava/lang/String; = "MT PDSS"

.field private static final logKeywordMtGpsSetting:Ljava/lang/String; = "MT GPS setting"

.field private static final sDataNetType_1x:[[I

.field private static final sDataNetType_1x_desirec:[[I

.field private static final sDataNetType_3g_cdma:[[I

.field private static final sDataNetType_3g_cdma_desirec:[[I

.field private static final sDataNetType_ehrpd:[[I

.field private static final sDataNetType_evdo:[[I


# instance fields
.field private final GPSONE_ANIMATION:I

.field private final GPSONE_NONE:I

.field private final GPSONE_OFF:I

.field private final GPSONE_ON:I

.field private final ICON_SLOT_GPSONE:Ljava/lang/String;

.field private isGpsEnabled:Z

.field private isVerizonLbsEnabled:Z

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMtGpsActivity:I

.field private mMtGpsIcon:Landroid/os/IBinder;

.field private mMtGpsSetting:I

.field private mService:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x5

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->gpsOneContentObserver:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa2

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x16

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x62

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa1

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x66

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xab

    if-ne v0, v3, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6LevelSignalStrength:Z

    const-wide/high16 v3, 0x400c

    invoke-static {v3, v4}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6LevelSignalStrength:Z

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->SUPPORT_5_LEVEL_SIGNAL_CDMA:Z

    new-array v0, v6, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages:[[I

    new-array v0, v6, [[I

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    aput-object v3, v0, v1

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdmas5SignalImages:[[I

    new-array v0, v6, [[I

    new-array v3, v7, [I

    fill-array-data v3, :array_4

    aput-object v3, v0, v1

    new-array v3, v7, [I

    fill-array-data v3, :array_5

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6SignalImages:[[I

    new-array v0, v6, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_6

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_7

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages_r:[[I

    new-array v0, v6, [[I

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    aput-object v3, v0, v1

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdmas5SignalImages_r:[[I

    new-array v0, v6, [[I

    new-array v3, v7, [I

    fill-array-data v3, :array_a

    aput-object v3, v0, v1

    new-array v3, v7, [I

    fill-array-data v3, :array_b

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6SignalImages_r:[[I

    new-array v0, v6, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_c

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_d

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages_flash:[[I

    new-array v0, v6, [[I

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    aput-object v3, v0, v1

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma5SignalImages_flash:[[I

    new-array v0, v6, [[I

    new-array v3, v7, [I

    fill-array-data v3, :array_10

    aput-object v3, v0, v1

    new-array v3, v7, [I

    fill-array-data v3, :array_11

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6SignalImages_flash:[[I

    new-array v0, v5, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdmaDataConnected_CT_3g:[I

    new-array v0, v5, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_13

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_14

    aput-object v3, v0, v2

    new-array v3, v5, [I

    fill-array-data v3, :array_15

    aput-object v3, v0, v6

    const/4 v3, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_16

    aput-object v4, v0, v3

    const/4 v3, 0x4

    new-array v4, v5, [I

    fill-array-data v4, :array_17

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages_CT:[[I

    new-array v0, v5, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_18

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_19

    aput-object v3, v0, v2

    new-array v3, v5, [I

    fill-array-data v3, :array_1a

    aput-object v3, v0, v6

    const/4 v3, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_1b

    aput-object v4, v0, v3

    const/4 v3, 0x4

    new-array v4, v5, [I

    fill-array-data v4, :array_1c

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages_CT_r:[[I

    new-array v0, v5, [I

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages1x_CT:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages1x_CT_r:[I

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_2

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x18

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xb

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x95

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x21

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x93

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa1

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x66

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v7, :cond_6

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma3GdataNetworkIcon:Z

    new-array v0, v6, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_1f

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_20

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_evdo:[[I

    new-array v0, v6, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_21

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_22

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_1x:[[I

    new-array v0, v6, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_23

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_24

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_1x_desirec:[[I

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xf

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v0, v3, :cond_7

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->USE_VZW_CUSTOM_3G_ICON_DEVICE:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->USE_VZW_CUSTOM_3G_ICON_DEVICE:Z

    if-eqz v0, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_8

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->USE_VZW_CUSTOM_3G_ICON:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->USE_VZW_CUSTOM_3G_ICON:Z

    if-eqz v0, :cond_9

    new-array v0, v6, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_25

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_26

    aput-object v3, v0, v2

    :goto_5
    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_3g_cdma:[[I

    new-array v0, v6, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_27

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_28

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_3g_cdma_desirec:[[I

    new-array v0, v6, [[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_29

    aput-object v3, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2a

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_ehrpd:[[I

    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    new-array v0, v6, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_2b

    aput-object v3, v0, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_2c

    aput-object v3, v0, v2

    goto :goto_5

    nop

    :array_0
    .array-data 0x4
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
        0x1et 0x1t 0x2t 0x7ft
        0x1ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
        0x1et 0x1t 0x2t 0x7ft
        0x1ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x2at 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x2at 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x41t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0x41t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x47t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0x47t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0x7at 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0x61t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
    .end array-data

    :array_15
    .array-data 0x4
        0x6bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0x70t 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
    .end array-data

    :array_17
    .array-data 0x4
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
    .end array-data

    :array_18
    .array-data 0x4
        0xeft 0x0t 0x2t 0x7ft
        0xf0t 0x0t 0x2t 0x7ft
        0xf1t 0x0t 0x2t 0x7ft
        0xf2t 0x0t 0x2t 0x7ft
        0xf3t 0x0t 0x2t 0x7ft
    .end array-data

    :array_19
    .array-data 0x4
        0xf4t 0x0t 0x2t 0x7ft
        0xf5t 0x0t 0x2t 0x7ft
        0xf6t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1a
    .array-data 0x4
        0xf9t 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xfdt 0x0t 0x2t 0x7ft
    .end array-data

    :array_1b
    .array-data 0x4
        0xfet 0x0t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
        0x0t 0x1t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
        0x2t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1c
    .array-data 0x4
        0x3t 0x1t 0x2t 0x7ft
        0x4t 0x1t 0x2t 0x7ft
        0x5t 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
        0x7t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1d
    .array-data 0x4
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1e
    .array-data 0x4
        0xeat 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
    .end array-data

    :array_1f
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
    .end array-data

    :array_20
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
    .end array-data

    :array_21
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_22
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_23
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_24
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_25
    .array-data 0x4
        0x56t 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0x56t 0x1t 0x2t 0x7ft
    .end array-data

    :array_26
    .array-data 0x4
        0x56t 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0x56t 0x1t 0x2t 0x7ft
    .end array-data

    :array_27
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_28
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_29
    .array-data 0x4
        0x5bt 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0xaft 0x1t 0x2t 0x7ft
        0xa0t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2a
    .array-data 0x4
        0x5bt 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0xaft 0x1t 0x2t 0x7ft
        0xa0t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2b
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
    .end array-data

    :array_2c
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->GPSONE_NONE:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->GPSONE_ON:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->GPSONE_OFF:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->GPSONE_ANIMATION:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mMtGpsActivity:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mMtGpsSetting:I

    const-string v1, "gpsone"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->ICON_SLOT_GPSONE:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->initMtGpsIcon()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->initObserver(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getPreStateEnabled(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mMtGpsSetting:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->updateGPSONEIcon()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->updateGPSONEIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->installMtGpsTrackingObserver()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mMtGpsSetting:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->savePreStateEnabled(Landroid/content/Context;I)V

    return-void
.end method

.method public static final getDataNetworkIconList_1x()[[I
    .locals 3

    const/16 v2, 0x94

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_3

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_3

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_3

    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-eq v0, v1, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_4

    :cond_3
    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "1x Fix"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_1x:[[I

    :goto_0
    return-object v0

    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_1x_desirec:[[I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_1x:[[I

    goto :goto_0
.end method

.method public static final getDataNetworkIconList_Evdo()[[I
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma3GdataNetworkIcon:Z

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_3g_cdma_desirec:[[I

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "return sDataNetType_3g_cdma"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_3g_cdma:[[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->sDataNetType_evdo:[[I

    goto :goto_0
.end method

.method public static final getDataNetworkIconList_eHRPD()[[I
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->getDataNetworkIconList_Evdo()[[I

    move-result-object v0

    return-object v0
.end method

.method private getPreStateEnabled(Landroid/content/Context;)I
    .locals 4

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pre_state_of_gpsone"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final getSignalStrengthIconList()[[I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->SUPPORT_5_LEVEL_SIGNAL_CDMA:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdmas5SignalImages:[[I

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6LevelSignalStrength:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6SignalImages:[[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages:[[I

    goto :goto_0
.end method

.method public static final getSignalStrengthIconList_flash()[[I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->SUPPORT_5_LEVEL_SIGNAL_CDMA:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma5SignalImages_flash:[[I

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6LevelSignalStrength:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6SignalImages_flash:[[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages_flash:[[I

    goto :goto_0
.end method

.method public static final getSignalStrengthIconList_r()[[I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->SUPPORT_5_LEVEL_SIGNAL_CDMA:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdmas5SignalImages_r:[[I

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6LevelSignalStrength:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma6SignalImages_r:[[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->htcCdma4SignalImages_r:[[I

    goto :goto_0
.end method

.method private initMtGpsIcon()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v2, 0x7f020239

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->gpsOneContentObserver:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;

    if-nez v0, :cond_0

    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "gpsOneContentObserver is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;-><init>(Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->gpsOneContentObserver:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->gpsOneContentObserver:Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$GPSContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    const-string v0, "HtcCdmaStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initObserver, isGpsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    const-string v0, "HtcCdmaStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initObserver, isVerizonLbsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private installMtGpsTrackingObserver()V
    .locals 0

    return-void
.end method

.method private savePreStateEnabled(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pre_state_of_gpsone"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setGPSOneResourceID(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v2, 0x7f02023e

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_GPS_ONE_NOTIFICATION_ICON_TYPE1:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v2, 0x7f020239

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v2, 0x7f020238

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_GPS_ONE_NOTIFICATION_ICON_TYPE1:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v2, 0x7f02023b

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v2, 0x7f02023a

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_GPS_ONE_NOTIFICATION_ICON_TYPE1:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v2, 0x7f02023d

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    const v2, 0x7f02023c

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateGPSONEIcon()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isVerizonLbsEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_911ONLY_HIDE_GPSONE_ICON:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_SUPPORT_LOCATION_SERVICE:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    if-eqz v0, :cond_4

    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "@ FEATURE_SUPPORT_LOCATION_SERVICE = true, show GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_0

    :cond_4
    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "@ FEATURE_SUPPORT_LOCATION_SERVICE = false, hide GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_SUPPORT_LOCATION_SERVICE:Z

    if-ne v0, v3, :cond_6

    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "@@ FEATURE_SUPPORT_LOCATION_SERVICE = true, show GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "@@ FEATURE_SUPPORT_LOCATION_SERVICE = false, hide GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private updateMtGpsIcon()V
    .locals 4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mMtGpsActivity:I

    if-gez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mMtGpsSetting:I

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_911ONLY_HIDE_GPSONE_ICON:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_SUPPORT_LOCATION_SERVICE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "@ FEATURE_SUPPORT_LOCATION_SERVICE = true, show GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->savePreStateEnabled(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_0

    :cond_1
    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "@ FEATURE_SUPPORT_LOCATION_SERVICE = false, hide GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_SUPPORT_LOCATION_SERVICE:Z

    if-ne v0, v3, :cond_3

    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "@@ FEATURE_SUPPORT_LOCATION_SERVICE = true, show GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "@@ FEATURE_SUPPORT_LOCATION_SERVICE = false, hide GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mMtGpsActivity:I

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_911ONLY_HIDE_GPSONE_ICON:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_SUPPORT_LOCATION_SERVICE:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->isGpsEnabled:Z

    if-eqz v0, :cond_7

    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "- FEATURE_SUPPORT_LOCATION_SERVICE = true, show GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mMtGpsSetting:I

    if-eqz v0, :cond_6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->setGPSOneResourceID(I)V

    goto :goto_2

    :cond_7
    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "- FEATURE_SUPPORT_LOCATION_SERVICE = false, hide GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar$HtcFeatureList;->FEATURE_SUPPORT_LOCATION_SERVICE:Z

    if-ne v0, v3, :cond_9

    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "-- FEATURE_SUPPORT_LOCATION_SERVICE = true, show GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "HtcCdmaStatusBar"

    const-string v1, "-- FEATURE_SUPPORT_LOCATION_SERVICE = false, hide GPS icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcCdmaStatusBar;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gpsone"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method
