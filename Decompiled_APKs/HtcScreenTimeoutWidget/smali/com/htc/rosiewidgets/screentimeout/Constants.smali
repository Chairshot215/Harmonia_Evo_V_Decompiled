.class public interface abstract Lcom/htc/rosiewidgets/screentimeout/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ADD_OBSERVER:I = 0x1fa6

.field public static final CN_BTN_CTL_ID:I = 0x0

.field public static final CN_TEXTLABEL_CTL_ID:I = 0x1

.field public static final CN_TIMELINE_CTL_ID:I = 0x2

.field public static final CN_TIMELINE_OFF_MARKER_ID:I = 0x6

.field public static final CN_TIMELINE_ON_1_MARKER_ID:I = 0x3

.field public static final CN_TIMELINE_ON_2_MARKER_ID:I = 0x4

.field public static final CN_TIMELINE_ON_3_MARKER_ID:I = 0x5

.field public static final CN_TIMELINE_ON_MARKER_ID:I = 0x5

.field public static final CS_Brightness_Setting:Ljava/lang/String; = "BrightnessSetting"

.field public static final C_nANIM_ID:I = 0x5

.field public static final C_nBG_CTL_ID:I = 0x3

.field public static final C_nBG_LV1_IMG_ID:I = 0xe

.field public static final C_nBG_LV1_IMG_NAME:I = 0x3

.field public static final C_nBG_LV2_IMG_ID:I = 0xf

.field public static final C_nBG_LV2_IMG_NAME:I = 0x4

.field public static final C_nBG_LV3_IMG_ID:I = 0x10

.field public static final C_nBG_LV3_IMG_NAME:I = 0x5

.field public static final C_nBG_OFF_IMG_ID:I = 0xd

.field public static final C_nBG_OFF_IMG_NAME:I = 0x2

.field public static final C_nBG_ON_IMG_ID:I = 0xc

.field public static final C_nBG_ON_IMG_NAME:I = 0x1

.field public static final C_nBrightness:[I = null

.field public static final C_nBrightness_100_PERCENT:I = 0x2

.field public static final C_nBrightness_40_PERCENT:I = 0x0

.field public static final C_nBrightness_60_PERCENT:I = 0x1

.field public static final C_nBrightness_AUTO:I = 0x2

.field public static final C_nHIGHLIGHT_CTL_ID:I = 0x4

.field public static final C_nHIGHLIGHT_IMG_ID:I = 0xb

.field public static final C_nHIGHLIGHT_IMG_NAME:I = 0x0

.field public static final C_nICON_CTL_ID:I = 0x1

.field public static final C_nICON_LEFT_MARGIN:I = 0x8

.field public static final C_nICON_OFF_IMG_ID:I = 0xa

.field public static final C_nICON_ON_IMG_ID:I = 0x9

.field public static final C_nINT_PARAM_MAX:I = 0x11

.field public static final C_nLABEL_CTL_ID:I = 0x2

.field public static final C_nLAYOUT_CTL_ID:I = 0x0

.field public static final C_nLAYOUT_WIDTH:I = 0x7

.field public static final C_nSETTING_LV1:I = 0x0

.field public static final C_nSETTING_LV2:I = 0x1

.field public static final C_nSETTING_LV3:I = 0x2

.field public static final C_nSETTING_OFF:I = 0x4

.field public static final C_nSETTING_ON:I = 0x3

.field public static final C_nSTR_PARAM_MAX:I = 0x6

.field public static final C_nWIDGET_ID:I = 0x6

.field public static final DELETE_OBSERVER:I = 0x1fa7

.field public static final MSG_CLOSE_ACTIVITY:I = 0x11d7

.field public static final PLAY_ANIMATION:I = 0x1f43

.field public static final REGISTER_NOTIFICATION:I = 0x1fa4

.field public static final SYNC_SETTING_CHANGED_INTENT:Ljava/lang/String; = "com.android.sync.SYNC_CONN_STATUS_CHANGED"

.field public static final TAG:Ljava/lang/String; = "HtcScreenTimeoutWidget"

.field public static final UNREGISTER_NOTIFICATION:I = 0x1fa5

.field public static final UPDATE_BACKGROUND_DATA_UI:I = 0x1f42

.field public static final UPDATE_BLUETOOTH_UI:I = 0x1f46

.field public static final UPDATE_SCREEN_BRIGHTNESS_UI:I = 0x1f48

.field public static final UPDATE_SCREEN_TIMEOUT_UI:I = 0x1f47

.field public static final UPDATE_WIFI_UI:I = 0x1f45


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/rosiewidgets/screentimeout/Constants;->C_nBrightness:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method
