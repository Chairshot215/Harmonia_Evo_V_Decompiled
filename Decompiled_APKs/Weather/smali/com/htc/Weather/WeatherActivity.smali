.class public Lcom/htc/Weather/WeatherActivity;
.super Lcom/htc/app/ma/MaMainActivity;
.source "WeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;,
        Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;,
        Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;,
        Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;
    }
.end annotation


# static fields
.field public static final ACTION_SETTING_SOUND_EFFECT:Ljava/lang/String; = "action_setting_sound_effect"

.field public static final ACTION_VST_MEDIA_RELEASE:Ljava/lang/String; = "com.htc.ml.VST_MEDIA_RELEASE"

.field public static final EXTRAS_SETTING_SOUND_EFFECT:Ljava/lang/String; = "extras_setting_sound_effect"

.field static final GESTURE_INTEVAL:I = 0x4b0

.field public static final MAXIMUN_CITY_COUNT:I = 0xf

.field public static final PARAM_SET_CITY_DETAIL:I = 0x1

.field public static final PARAM_SET_FULLSCREEN:I = 0x2

.field public static final SYNC_DATA_CATEGORY:Ljava/lang/String; = "sync_data_category"

.field public static final SYNC_DATA_TIMEOUT_LIMIT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "WeatherMaGroup"

.field public static final WHAT_CHANGE_CITY_DATA:I = 0xa

.field public static final WHAT_CHANGE_VIDEO_SIZE_TO_DEMO_MODE:I = 0x18

.field public static final WHAT_CHANGE_VIDEO_TO_DEMO_MODE:I = 0x12

.field public static final WHAT_CHECK_TO_PAUSE_GLTHREAD:I = 0x19

.field public static final WHAT_DEMO_NEXT_VIDEO:I = 0xe

.field public static final WHAT_DEMO_PREV_VIDEO:I = 0xf

.field public static final WHAT_GOTO_FULLSCREEN_READY:I = 0xd

.field public static final WHAT_GOTO_TWO_PANEL_READY:I = 0xc

.field public static final WHAT_INIT_GLSURFACEVIEW:I = 0xb

.field public static final WHAT_NETWORK_ERROR:I = 0x15

.field public static final WHAT_NETWORK_INACTIVE:I = 0x10

.field public static final WHAT_NETWORK_ROAMING:I = 0x16

.field public static final WHAT_ON_CITY_ITEM_SELECTED:I = 0x14

.field public static final WHAT_ON_FETCH_DATA_FINISHED:I = 0x0

.field public static final WHAT_ON_FINISH_ORIENTATION_CHANGE:I = 0x7

.field public static final WHAT_ON_MODEL_INITIALIZED:I = 0x3

.field public static final WHAT_ON_MODEL_UPDATED:I = 0x4

.field public static final WHAT_ON_NO_CITY_DATA:I = 0x13

.field public static final WHAT_PLAY_SOUND:I = 0x6

.field public static final WHAT_REFRESH_UI_DATA:I = 0x1

.field public static final WHAT_RESUME_GLTHREAD:I = 0x1c

.field public static final WHAT_SET_GLVIEW_COVER:I = 0x9

.field public static final WHAT_SET_GLVIEW_VISIBLE:I = 0x8

.field public static final WHAT_SET_WINDOW_BACKGROUND:I = 0x17

.field public static final WHAT_SWITCH_TWO_PANEL:I = 0x11

.field public static final WHAT_SYNC_DATA:I = 0x5

.field public static final WHAT_SYNC_DATA_TIMEOUT:I = 0x2

.field public static final WHAT_UPDATE_CITY_TIME_PER_MINUTE:I = 0x1b

.field public static default_time_12_24:Lcom/htc/Weather/data/City$TIME;

.field public static default_unit:Lcom/htc/Weather/data/City$UNIT;

.field public static final demoVideo:[I

.field public static isAppDestroy:Z

.field public static isBackFromInternalActivity:Z

.field public static isDemoMode:Z

.field public static isEmptyDataViewVisible:Z

.field public static isFetchDataFinished:Z

.field public static isFullscreenMode:Z

.field public static isGLInitialed:Z

.field public static isGLSurfaceOnPause:Z

.field public static isMenuOpened:Z

.field public static isNeedCheckWallpaper:Z

.field public static isNoAddedCity:Z

.field public static isOnResume:Z

.field public static isPortrait:Z

.field public static isShowStorageFullDialog:Z

.field public static isSoundEffectEnabled:Z

.field public static isSyncWhenOnStart:Z

.field public static isSyncWhenOpened:Z

.field public static isWeatherDataAvalible:Z

.field public static isWeatherWallpaperAlive:Z

.field public static mCurrCityIndex:I

.field public static mCurrDemoIndex:I

.field public static mIsFreshing:Z

.field public static mMaximumCityNum:I

.field public static mModel:Lcom/htc/Weather/WeatherModel;

.field private static mTouchSlop:I


# instance fields
.field private Frame_1:I

.field clazzRight:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field dx:I

.field dy:I

.field private keyDown:Z

.field lLeftWidth:I

.field lRightWidth:I

.field landscapePadding:[[I

.field private mAppReceiver:Landroid/content/BroadcastReceiver;

.field private mBoolAppReceiverRegistered:Z

.field private mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

.field private mCityIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCityTimeUpdateInterval:J

.field private mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

.field private mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;

.field private mDataHandler:Landroid/os/Handler;

.field private mDataProcesser:Lcom/htc/Weather/data/DataProcesser;

.field private mDataReceiver:Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;

.field private mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

.field private mErrorMsg:Landroid/widget/TextView;

.field mFrames:[Landroid/widget/FrameLayout;

.field private mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

.field private mInitVideoFilePath:Ljava/lang/String;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastGestureTime:J

.field private mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

.field private mNetworkErrDialog:Landroid/app/Dialog;

.field private mNetworkInActiveDialog:Landroid/app/Dialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundEffect:Lcom/htc/Weather/SoundEffect;

.field private mSubLayout:Landroid/widget/RelativeLayout;

.field private mVSTMRReceiver:Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;

.field public mainHandler:Landroid/os/Handler;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field pBottomHeight:I

.field pTopHeight:I

.field portraitPadding:[[I

.field private wl_bottom_info:Landroid/view/WindowManager$LayoutParams;

.field private wl_condition:Landroid/view/WindowManager$LayoutParams;

.field private wl_header:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    sput-boolean v2, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    .line 156
    sput v1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 158
    sput v1, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    .line 160
    const/16 v0, 0xf

    sput v0, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    .line 164
    sget-object v0, Lcom/htc/Weather/data/City$TIME;->_TIME_12:Lcom/htc/Weather/data/City$TIME;

    sput-object v0, Lcom/htc/Weather/WeatherActivity;->default_time_12_24:Lcom/htc/Weather/data/City$TIME;

    .line 166
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    .line 168
    sput-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    .line 170
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    .line 172
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isAppDestroy:Z

    .line 174
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isSoundEffectEnabled:Z

    .line 176
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOpened:Z

    .line 178
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isOnResume:Z

    .line 180
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isGLInitialed:Z

    .line 182
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isWeatherDataAvalible:Z

    .line 184
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isNoAddedCity:Z

    .line 186
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isShowStorageFullDialog:Z

    .line 188
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isGLSurfaceOnPause:Z

    .line 190
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOnStart:Z

    .line 192
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isFetchDataFinished:Z

    .line 194
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isMenuOpened:Z

    .line 196
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isWeatherWallpaperAlive:Z

    .line 198
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isBackFromInternalActivity:Z

    .line 200
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isEmptyDataViewVisible:Z

    .line 202
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isNeedCheckWallpaper:Z

    .line 206
    const/16 v0, 0x14

    sput v0, Lcom/htc/Weather/WeatherActivity;->mTouchSlop:I

    .line 210
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;-><init>()V

    .line 128
    const-class v0, Lcom/htc/Weather/WeatherDetail;

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->clazzRight:Ljava/lang/Class;

    .line 132
    iput v5, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    .line 141
    iput-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mVSTMRReceiver:Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;

    .line 142
    iput-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    iput-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    .line 204
    iput-boolean v2, p0, Lcom/htc/Weather/WeatherActivity;->mBoolAppReceiverRegistered:Z

    .line 212
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/htc/Weather/WeatherActivity;->mCityTimeUpdateInterval:J

    .line 215
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->portraitPadding:[[I

    .line 216
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->landscapePadding:[[I

    .line 229
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/htc/weather/WeatherVideo;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mInitVideoFilePath:Ljava/lang/String;

    .line 891
    iput-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 919
    new-instance v0, Lcom/htc/Weather/WeatherActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherActivity$2;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    .line 1870
    iput-boolean v2, p0, Lcom/htc/Weather/WeatherActivity;->keyDown:Z

    .line 2030
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/Weather/WeatherActivity;->mLastGestureTime:J

    return-void

    .line 215
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 216
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private ShowStorageFullDialog()V
    .locals 3

    .prologue
    .line 1655
    const-string v1, "WeatherMaGroup"

    const-string v2, "StorageFullDialog"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isShowStorageFullDialog:Z

    .line 1657
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/Weather/StorageFull;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1658
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->startActivity(Landroid/content/Intent;)V

    .line 1659
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->finish()V

    .line 1660
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/WeatherActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/WeatherActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->showNetworkErrorDlg()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/Weather/WeatherActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/Weather/WeatherActivity;->playSound(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/animation/AbstractWeatherAnim;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/TodayCondition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->initGLVideoPlayback()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/Weather/WeatherActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeHeaderBarFromWindow()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeBottomUpdateInfoFromWindow()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addHeaderBarToWindow()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addBottomUpdateInfoToWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/Weather/WeatherActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/Weather/WeatherActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->getNextDemoVideoPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/DemoTitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/Weather/WeatherActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/Weather/WeatherActivity;->playSoundEffect(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/Weather/WeatherActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->getPrevDemoVideoPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/Weather/WeatherActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/Weather/WeatherActivity;->showConnectionFailedDlg(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->showNetworkInActiveDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/Weather/WeatherActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/htc/Weather/WeatherActivity;->setAnimationFlag(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/HeaderBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/SoundEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addTopWindowView()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/Weather/WeatherActivity;ZILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/Weather/WeatherActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/Weather/WeatherActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/data/DataProcesser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDataProcesser:Lcom/htc/Weather/data/DataProcesser;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/Weather/WeatherActivity;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/Weather/WeatherActivity;->findIndexFromCityName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/widget/BottomUpdateInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeTopWindowView()V

    return-void
.end method

.method private addBottomUpdateInfoToWindow()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->wl_bottom_info:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    const-string v0, "WeatherMaGroup"

    const-string v1, " addBottomUpdateInfoToWindow"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addCityFromResult(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 1497
    sget-boolean v3, Lcom/htc/Weather/WeatherActivity;->isAppDestroy:Z

    if-eqz v3, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    new-instance v0, Lcom/htc/Weather/data/CityInfo;

    invoke-direct {v0, p0}, Lcom/htc/Weather/data/CityInfo;-><init>(Landroid/content/Context;)V

    .line 1501
    .local v0, info:Lcom/htc/Weather/data/CityInfo;
    new-instance v2, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v2}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 1502
    .local v2, locationInfo:Lcom/htc/util/weather/WeatherLocation;
    const-string v3, "code"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 1503
    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 1504
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 1505
    const-string v3, "country"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 1506
    const-string v3, "app"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 1507
    const-string v3, "timezone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setTimezone(Ljava/lang/String;)V

    .line 1508
    const-string v3, "timezoneid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {v0, v2}, Lcom/htc/Weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 1511
    sget-object v3, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    iput-object v3, v0, Lcom/htc/Weather/data/CityInfo;->type_:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    .line 1512
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/htc/Weather/data/CityInfo;->index:I

    .line 1513
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3, v0}, Lcom/htc/Weather/WeatherModel;->add(Lcom/htc/Weather/data/CityInfo;)V

    .line 1514
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->reDataReceiver()V

    .line 1516
    iget v3, v0, Lcom/htc/Weather/data/CityInfo;->index:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 1517
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;

    .line 1518
    .local v1, lDataHandler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1519
    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0, v5, v5, v3}, Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V

    goto :goto_0
.end method

.method private addConditionPanelToWindow()V
    .locals 4

    .prologue
    .line 459
    const-string v1, "WeatherMaGroup"

    const-string v2, "addConditionPanel"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    if-nez v1, :cond_1

    .line 461
    const-string v1, "WeatherMaGroup"

    const-string v2, "addConditionPanelToWindow failed, mConditionPanel is null"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->isCurrCityDataAvalible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    invoke-virtual {v1}, Lcom/htc/Weather/widget/TodayCondition;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->wl_condition:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    const-string v1, "WeatherMaGroup"

    const-string v2, " addConditionPanelToWindow"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v0, 0x1

    .line 476
    .local v0, visible:Z
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 477
    const-string v1, "WeatherMaGroup"

    const-string v2, "addConditionPanelToWindow: DemoMode"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    .line 488
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 489
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/Weather/widget/TodayCondition;->setVisibility(I)V

    .line 490
    const-string v1, "WeatherMaGroup"

    const-string v2, " set mConditionPanel VISIBLE "

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_3
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherDetail;->getSlectedTabType()I

    move-result v2

    iget v1, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/WeatherDetail;

    const/4 v1, 0x2

    if-ne v2, v1, :cond_4

    .line 480
    const-string v1, "WeatherMaGroup"

    const-string v2, "addConditionPanelToWindow: Hour tab"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    goto :goto_1

    .line 482
    :cond_4
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isEmptyDataViewVisible:Z

    if-eqz v1, :cond_2

    .line 483
    const-string v1, "WeatherMaGroup"

    const-string v2, "addConditionPanelToWindow: no data,"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x0

    goto :goto_1

    .line 492
    :cond_5
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/Weather/widget/TodayCondition;->setVisibility(I)V

    .line 493
    const-string v1, "WeatherMaGroup"

    const-string v2, " set mConditionPanel INVISIBLE "

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addDemoTitleToWindow()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lcom/htc/Weather/widget/DemoTitleBar;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/DemoTitleBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    sget v1, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/DemoTitleBar;->setConditionDescrip(I)V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/DemoTitleBar;->adjustDemoTitleLayout(Z)V

    .line 513
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/DemoTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 514
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->wl_header:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    const-string v0, "WeatherMaGroup"

    const-string v1, " addDemoTitleToWindow"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_2
    return-void
.end method

.method private addHeaderBarToWindow()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    if-nez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/HeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->wl_header:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    const-string v0, "WeatherMaGroup"

    const-string v1, " addHeaderBarToWindow"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addNoDataView()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 706
    const-string v2, "WeatherMaGroup"

    const-string v3, "addNoDataView"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 716
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    .line 720
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 721
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 724
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 726
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 728
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 732
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 733
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 734
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 737
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v2}, Lcom/htc/Weather/widget/HeaderBar;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 738
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v3}, Lcom/htc/Weather/widget/HeaderBar;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 739
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 741
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/Weather/WeatherActivity;->isEmptyDataViewVisible:Z

    goto/16 :goto_0
.end method

.method private addTopWindowView()V
    .locals 2

    .prologue
    .line 548
    const-string v0, "WeatherMaGroup"

    const-string v1, "addTopWindowView"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addConditionPanelToWindow()V

    .line 551
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addHeaderBarToWindow()V

    .line 553
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addBottomUpdateInfoToWindow()V

    .line 555
    :cond_0
    return-void
.end method

.method private checkDataAvalible(Lcom/htc/Weather/data/CityInfo;I)Z
    .locals 2
    .parameter "ci"
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 766
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 793
    :cond_0
    :goto_0
    return v0

    .line 769
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p1, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-nez v1, :cond_3

    .line 770
    :cond_2
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addNoDataView()V

    .line 771
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v1}, Lcom/htc/Weather/widget/BottomUpdateInfo;->showEmpty()V

    .line 775
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeConditionPanelFromWindow()V

    goto :goto_0

    .line 780
    :cond_3
    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isNoAddedCity:Z

    .line 781
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/HeaderBar;->enableButton()V

    .line 786
    :cond_4
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeNoDataView()V

    .line 787
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeNoCityView()V

    .line 791
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->isNetworkWindowPoping()Z

    move-result v0

    if-nez v0, :cond_5

    .line 792
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addConditionPanelToWindow()V

    .line 793
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    sput-boolean v3, Lcom/htc/Weather/WeatherActivity;->isAppDestroy:Z

    .line 346
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->isPortrait()Z

    move-result v0

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    .line 347
    const-string v0, "com.htc.sync.provider.weather"

    invoke-static {p0, v0}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOpened:Z

    .line 348
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFlag: isPortrait = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFlag: isSyncWhenOpened = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sput-boolean v3, Lcom/htc/Weather/WeatherActivity;->isNeedCheckWallpaper:Z

    .line 352
    return-void
.end method

.method private checkIndexFromWidget(Landroid/content/Intent;Z)V
    .locals 4
    .parameter "intent"
    .parameter "isNewIntent"

    .prologue
    .line 331
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const-string v1, "_city_index"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, index:I
    const-string v1, "WeatherMaGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_city_index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    if-ltz v0, :cond_2

    .line 338
    sput v0, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 340
    :cond_2
    if-eqz p2, :cond_0

    .line 341
    sget v1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-direct {p0, v1}, Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V

    goto :goto_0
.end method

.method private checkIsWeatherLiveWallpaper()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1816
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 1817
    .local v2, wm:Landroid/app/WallpaperManager;
    const/4 v3, 0x0

    .line 1818
    .local v3, wminfo:Landroid/app/WallpaperInfo;
    const/4 v1, 0x0

    .line 1820
    .local v1, wallpapername:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1821
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 1822
    :cond_0
    if-eqz v3, :cond_1

    .line 1823
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1825
    :cond_1
    if-eqz v1, :cond_2

    const-string v5, "com.htc.android.WeatherLiveWallpaper"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1826
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/Weather/WeatherActivity;->isWeatherWallpaperAlive:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    .end local v1           #wallpapername:Ljava/lang/String;
    .end local v2           #wm:Landroid/app/WallpaperManager;
    .end local v3           #wminfo:Landroid/app/WallpaperInfo;
    :goto_0
    return v4

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1834
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private cleanVideo()V
    .locals 2

    .prologue
    .line 882
    const-string v0, "WeatherMaGroup"

    const-string v1, "cleanVideo"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {v0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->stop()I

    .line 886
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {v0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->reset()I

    .line 888
    :cond_0
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->pauseSoundeffect()V

    .line 889
    return-void
.end method

.method private findIndexFromCityName(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 286
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 287
    :cond_0
    const/4 v2, 0x0

    .line 298
    :goto_0
    return v2

    .line 288
    :cond_1
    const/4 v2, 0x0

    .line 289
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 290
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3, v1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    .line 291
    .local v0, ci:Lcom/htc/Weather/data/CityInfo;
    invoke-virtual {v0, p0}, Lcom/htc/Weather/data/CityInfo;->changeOffsetOfToday(Landroid/content/Context;)Z

    .line 293
    iget-object v3, v0, Lcom/htc/Weather/data/CityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    move v2, v1

    .line 289
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    .end local v0           #ci:Lcom/htc/Weather/data/CityInfo;
    :cond_3
    const-string v3, "WeatherMaGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findIndexFromCityName , index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMaximumCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1663
    const/16 v1, 0xf

    sput v1, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    .line 1664
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1665
    :cond_0
    sget v1, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    .line 1674
    .local v0, loc:Lcom/htc/util/weather/WeatherLocation;
    :goto_0
    return v1

    .line 1667
    .end local v0           #loc:Lcom/htc/util/weather/WeatherLocation;
    :cond_1
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 1668
    .restart local v0       #loc:Lcom/htc/util/weather/WeatherLocation;
    if-nez v0, :cond_2

    .line 1669
    sget v1, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    goto :goto_0

    .line 1671
    :cond_2
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.htclocationservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1672
    sget v1, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    .line 1674
    :cond_3
    sget v1, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    goto :goto_0
.end method

.method private getNextDemoVideoPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2137
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    array-length v2, v3

    .line 2138
    .local v2, total:I
    sget v3, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    add-int/lit8 v3, v3, 0x1

    rem-int v0, v3, v2

    .line 2140
    .local v0, idx:I
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/htc/weather/WeatherVideo;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, path:Ljava/lang/String;
    const-string v3, "WeatherMaGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " video order:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NextDemoVideoPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    return-object v1
.end method

.method private getPrevDemoVideoPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2146
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    array-length v2, v3

    .line 2147
    .local v2, total:I
    sget v3, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v3, v2

    rem-int v0, v3, v2

    .line 2149
    .local v0, idx:I
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/htc/weather/WeatherVideo;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 2150
    .local v1, path:Ljava/lang/String;
    const-string v3, "WeatherMaGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " video order:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PrevDemoVideoPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    return-object v1
.end method

.method private getVideoIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "id"

    .prologue
    .line 2118
    const/4 v1, 0x0

    .line 2122
    .local v1, in:I
    if-eqz p1, :cond_0

    .line 2123
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 2128
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2129
    .local v2, index:I
    if-ltz v1, :cond_1

    sget-object v3, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2130
    sget-object v3, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    aget v2, v3, v1

    .line 2133
    :cond_1
    return v2

    .line 2124
    .end local v2           #index:I
    :catch_0
    move-exception v0

    .line 2125
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "WeatherMaGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIndex: can\'t parse string:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getVideoPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "id"
    .parameter "isdaylight"

    .prologue
    .line 2112
    invoke-static {p1, p2}, Lcom/htc/weather/WeatherVideo;->getVideoFilePathByIcon(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2113
    .local v0, path:Ljava/lang/String;
    const-string v1, "WeatherMaGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoPath forecast icon id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isdaylight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    return-object v0
.end method

.method private hasCityNumber()Z
    .locals 1

    .prologue
    .line 700
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 701
    const/4 v0, 0x1

    .line 702
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasDataInCurrentCity()Z
    .locals 2

    .prologue
    .line 325
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    goto :goto_0
.end method

.method private initAppReceiver()V
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1401
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1402
    new-instance v0, Lcom/htc/Weather/WeatherActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherActivity$3;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private initGLVideoPlayback()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 558
    const-string v0, "WeatherMaGroup"

    const-string v1, "initGLVideoPlayback"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isGLInitialed:Z

    if-ne v0, v6, :cond_0

    .line 569
    :goto_0
    return-void

    .line 563
    :cond_0
    sput-boolean v6, Lcom/htc/Weather/WeatherActivity;->isGLInitialed:Z

    .line 565
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    sget-boolean v4, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v5, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual/range {v0 .. v5}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->init(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;ZZ)I

    .line 567
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v6, v0, v1}, Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V

    goto :goto_0
.end method

.method private initNonUI()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 606
    const-string v1, "WeatherMaGroup"

    const-string v3, "initNonUI"

    invoke-static {v1, v3}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isAppDestroy:Z

    if-eqz v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    sput v1, Lcom/htc/Weather/WeatherActivity;->mTouchSlop:I

    .line 615
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-nez v1, :cond_2

    .line 616
    new-instance v1, Lcom/htc/Weather/WeatherModel;

    const/16 v3, 0xf

    invoke-direct {v1, p0, v3}, Lcom/htc/Weather/WeatherModel;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    .line 619
    :cond_2
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mDataProcesser:Lcom/htc/Weather/data/DataProcesser;

    if-nez v1, :cond_3

    .line 620
    new-instance v1, Lcom/htc/Weather/data/DataProcesser;

    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    iget-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    invoke-direct {v1, v3, p0, v4}, Lcom/htc/Weather/data/DataProcesser;-><init>(Lcom/htc/Weather/WeatherModel;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mDataProcesser:Lcom/htc/Weather/data/DataProcesser;

    .line 621
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mDataProcesser:Lcom/htc/Weather/data/DataProcesser;

    invoke-virtual {v1}, Lcom/htc/Weather/data/DataProcesser;->start()V

    .line 624
    :cond_3
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-nez v1, :cond_0

    .line 625
    new-instance v1, Lcom/htc/Weather/SoundEffect;

    invoke-direct {v1, p0}, Lcom/htc/Weather/SoundEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    .line 627
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/htc/Weather/SoundEffect;->SETTING_KEY_SYNC_SOUND:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isSoundEffectEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_2
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isSoundEffectEnabled:Z

    invoke-virtual {v1, v2}, Lcom/htc/Weather/SoundEffect;->setSoundOn(Z)V

    goto :goto_0

    .line 627
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    sput-boolean v2, Lcom/htc/Weather/WeatherActivity;->isSoundEffectEnabled:Z

    .line 631
    const-string v1, "WeatherMaGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initUI()V
    .locals 10

    .prologue
    const/16 v9, 0x408

    const/4 v8, -0x2

    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v5, -0x3

    .line 383
    const-string v0, "WeatherMaGroup"

    const-string v2, "initUI"

    invoke-static {v0, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 386
    .local v6, res:Landroid/content/res/Resources;
    const v0, 0x7f0a0098

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, type:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/Weather/animation/WeatherAnimFactory;->getAnimationInstance(Ljava/lang/String;)Lcom/htc/Weather/animation/AbstractWeatherAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->setAnimationFlag(I)V

    .line 390
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->portraitPadding:[[I

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->landscapePadding:[[I

    invoke-virtual {p0, v0, v2}, Lcom/htc/Weather/WeatherActivity;->setPadding([[I[[I)V

    .line 392
    const v0, 0x7f090010

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/Weather/WeatherActivity;->pBottomHeight:I

    .line 393
    const v0, 0x7f090011

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/Weather/WeatherActivity;->pTopHeight:I

    .line 394
    const v0, 0x7f090012

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/Weather/WeatherActivity;->lLeftWidth:I

    .line 395
    const v0, 0x7f090013

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/Weather/WeatherActivity;->lRightWidth:I

    .line 397
    const v0, 0x7f0c0059

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 398
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherActivity;->setPanelFrame(Landroid/widget/RelativeLayout;)V

    .line 400
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    .line 402
    new-instance v0, Lcom/htc/Weather/widget/HeaderBar;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/HeaderBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    .line 403
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/htc/Weather/widget/HeaderBar;->setHandler(Landroid/os/Handler;)V

    .line 404
    new-instance v0, Lcom/htc/Weather/widget/TodayCondition;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/TodayCondition;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    .line 405
    new-instance v0, Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/BottomUpdateInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    .line 406
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->showLoading()V

    .line 408
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->wl_condition:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x7f080055

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v4, 0x18

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->wl_condition:Landroid/view/WindowManager$LayoutParams;

    .line 415
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->wl_condition:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x35

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->wl_header:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 420
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    move v2, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->wl_header:Landroid/view/WindowManager$LayoutParams;

    .line 425
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->wl_header:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->wl_bottom_info:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_2

    .line 429
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    move v2, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->wl_bottom_info:Landroid/view/WindowManager$LayoutParams;

    .line 434
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->wl_bottom_info:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 437
    :cond_2
    return-void
.end method

.method private isCurrCityDataAvalible()Z
    .locals 2

    .prologue
    .line 1362
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-nez v0, :cond_1

    .line 1363
    :cond_0
    const/4 v0, 0x0

    .line 1365
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isKeyguardShowing()Z
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 895
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-interface {v0}, Landroid/app/HtcIfKeyguardManager;->keyguardIsShowing()Z

    move-result v0

    .line 900
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkWindowPoping()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1751
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1752
    const-string v1, "WeatherMaGroup"

    const-string v2, "WHAT_NETWORK_ERROR"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    :goto_0
    return v0

    .line 1756
    :cond_0
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1757
    const-string v1, "WeatherMaGroup"

    const-string v2, "mConnectionFailedDlg.isShowing"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1761
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkInActiveDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkInActiveDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1762
    const-string v1, "WeatherMaGroup"

    const-string v2, "mNetworkInActiveDialog.isShowing"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1766
    :cond_2
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkErrDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkErrDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1767
    const-string v1, "WeatherMaGroup"

    const-string v2, "mNetworkErrDialog.isShowing"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1771
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextCityIndex()V
    .locals 7

    .prologue
    .line 2155
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFetchDataFinished:Z

    if-nez v2, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    .line 2159
    .local v1, total:I
    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int v0, v2, v1

    .line 2160
    .local v0, idx:I
    sput v0, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 2162
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private pauseSoundeffect()V
    .locals 2

    .prologue
    .line 913
    const-string v0, "WeatherMaGroup"

    const-string v1, "pauseSoundeffect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 915
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    .line 917
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 1525
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isSoundEffectEnabled:Z

    if-nez v0, :cond_1

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isOnResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v0, :cond_0

    .line 1529
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    .line 1531
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0, p1}, Lcom/htc/Weather/SoundEffect;->startMediaPlayer(I)V

    goto :goto_0
.end method

.method private playSoundEffect(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x6

    .line 904
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 906
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    const-string v0, "WeatherMaGroup"

    const-string v1, "isKeyguardShowing, don\'t need to play sound"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prevCityIndex()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2167
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFetchDataFinished:Z

    if-nez v2, :cond_1

    .line 2176
    :cond_0
    :goto_0
    return-void

    .line 2170
    :cond_1
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    .line 2171
    .local v1, total:I
    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v1

    rem-int v0, v2, v1

    .line 2172
    .local v0, idx:I
    sput v0, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 2174
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private registerAppReceiver()V
    .locals 2

    .prologue
    .line 1429
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->initAppReceiver()V

    .line 1430
    iget-boolean v1, p0, Lcom/htc/Weather/WeatherActivity;->mBoolAppReceiverRegistered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1431
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1432
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.app.autosetting.notify.failuremessage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1433
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/Weather/WeatherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1434
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/Weather/WeatherActivity;->mBoolAppReceiverRegistered:Z

    .line 1437
    .end local v0           #intentfilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private removeBottomUpdateInfoFromWindow()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 536
    const-string v0, "WeatherMaGroup"

    const-string v1, " removeBottomUpdateInfoFromWindow"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    return-void
.end method

.method private removeConditionPanelFromWindow()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/TodayCondition;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 522
    const-string v0, "WeatherMaGroup"

    const-string v1, " removeConditionPanelFromWindow"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void
.end method

.method private removeDemoTitleFromWindow()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/DemoTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 501
    const-string v0, "WeatherMaGroup"

    const-string v1, " removeDemoTitleFromWindow"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method private removeHeaderBarFromWindow()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/HeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 529
    const-string v0, "WeatherMaGroup"

    const-string v1, " removeHeaderBarFromWindow"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method

.method private removeNoCityView()V
    .locals 2

    .prologue
    .line 748
    const-string v0, "WeatherMaGroup"

    const-string v1, "removeNoDataView"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    .line 753
    :cond_0
    return-void
.end method

.method private removeNoDataView()V
    .locals 2

    .prologue
    .line 756
    const-string v0, "WeatherMaGroup"

    const-string v1, "removeNoDataView"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    .line 761
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isEmptyDataViewVisible:Z

    .line 763
    :cond_0
    return-void
.end method

.method private removeTopWindowView()V
    .locals 2

    .prologue
    .line 541
    const-string v0, "WeatherMaGroup"

    const-string v1, "removeTopWindowView"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeConditionPanelFromWindow()V

    .line 543
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeHeaderBarFromWindow()V

    .line 544
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeBottomUpdateInfoFromWindow()V

    .line 545
    return-void
.end method

.method private sendToDataHandler(ZILandroid/os/Message;)V
    .locals 1
    .parameter "isEmptyMsg"
    .parameter "what"
    .parameter "msg"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 574
    :cond_0
    if-eqz p1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDataHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setNoCityUI()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 639
    const-string v2, "WeatherMaGroup"

    const-string v3, "setNoCityUI"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-nez v2, :cond_2

    .line 647
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->hasCityNumber()Z

    move-result v2

    if-nez v2, :cond_0

    .line 648
    iget v2, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v2

    check-cast v2, Lcom/htc/Weather/WeatherDetail;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/Weather/WeatherDetail;->setMainLayoutVisibility(I)V

    .line 649
    invoke-virtual {p0, v5}, Lcom/htc/Weather/WeatherActivity;->toFullScreen(I)V

    .line 654
    :cond_2
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 655
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    .line 659
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 660
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 663
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 665
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 666
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 668
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 670
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 671
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    new-instance v3, Lcom/htc/Weather/WeatherActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/Weather/WeatherActivity$1;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    .line 678
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 683
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v2}, Lcom/htc/Weather/widget/HeaderBar;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 684
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v3}, Lcom/htc/Weather/widget/HeaderBar;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 685
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 687
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 688
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    .end local v0           #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    if-eqz v2, :cond_5

    .line 691
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v2}, Lcom/htc/Weather/widget/HeaderBar;->disableButton()V

    .line 692
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v2}, Lcom/htc/Weather/widget/HeaderBar;->showEmpty()V

    .line 694
    :cond_5
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    if-eqz v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v2}, Lcom/htc/Weather/widget/BottomUpdateInfo;->showEmpty()V

    goto/16 :goto_0
.end method

.method private setPanelFrame(Landroid/widget/RelativeLayout;)V
    .locals 8
    .parameter "mlayout"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 581
    new-array v1, v7, [Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/htc/Weather/WeatherActivity;->pBottomHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/htc/Weather/WeatherActivity;->pTopHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    aput-object v2, v1, v4

    .line 583
    .local v1, pLayouts:[Landroid/widget/RelativeLayout$LayoutParams;
    aget-object v2, v1, v6

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 585
    new-array v0, v7, [Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/htc/Weather/WeatherActivity;->lLeftWidth:I

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    aput-object v2, v0, v6

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/htc/Weather/WeatherActivity;->lRightWidth:I

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    aput-object v2, v0, v4

    .line 587
    .local v0, lLayouts:[Landroid/widget/RelativeLayout$LayoutParams;
    aget-object v2, v0, v4

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 589
    invoke-virtual {p0, p1, v1, v0}, Lcom/htc/Weather/WeatherActivity;->setFrames(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    invoke-virtual {p0, v6}, Lcom/htc/Weather/WeatherActivity;->setLandscapeToPortraitShowedFrame(I)V

    .line 597
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    if-eqz v2, :cond_0

    .line 598
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->clazzRight:Ljava/lang/Class;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/htc/Weather/WeatherActivity;->startActivityInChildFrame(Landroid/content/Intent;I)V

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->clazzRight:Ljava/lang/Class;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/htc/Weather/WeatherActivity;->startActivityInChildFrame(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setScreenOrientation(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2221
    const/4 v0, 0x0

    .line 2222
    .local v0, orientation:Ljava/lang/String;
    const-string v1, "orientation_"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2225
    if-eqz v0, :cond_2

    .line 2226
    const-string v1, "Landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    invoke-virtual {p0, v3}, Lcom/htc/Weather/WeatherActivity;->setRequestedOrientation(I)V

    .line 2228
    sput v3, Lcom/htc/Weather/util/WeatherUtil;->orientation:I

    .line 2240
    :goto_0
    return-void

    .line 2229
    :cond_0
    const-string v1, "Landscape_Reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2230
    invoke-virtual {p0, v4}, Lcom/htc/Weather/WeatherActivity;->setRequestedOrientation(I)V

    .line 2231
    sput v4, Lcom/htc/Weather/util/WeatherUtil;->orientation:I

    goto :goto_0

    .line 2233
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherActivity;->setRequestedOrientation(I)V

    .line 2234
    sput v2, Lcom/htc/Weather/util/WeatherUtil;->orientation:I

    goto :goto_0

    .line 2237
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherActivity;->setRequestedOrientation(I)V

    .line 2238
    sput v2, Lcom/htc/Weather/util/WeatherUtil;->orientation:I

    goto :goto_0
.end method

.method private settingReceiver()V
    .locals 3

    .prologue
    .line 1449
    new-instance v2, Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    iput-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1450
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1451
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1452
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1453
    const-string v2, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1454
    const-string v2, "com.htc.sync.provider.weather.setting.soundeffect"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1455
    const-string v2, "com.htc.Weather.intent.action.ADD_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1457
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/Weather/WeatherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1459
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.ml.VST_MEDIA_RELEASE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v1, vfilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;

    invoke-direct {v2, p0}, Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    iput-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mVSTMRReceiver:Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;

    .line 1461
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mVSTMRReceiver:Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/Weather/WeatherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1463
    return-void
.end method

.method private showConnectionFailedDlg(Z)V
    .locals 4
    .parameter "roaming"

    .prologue
    .line 1539
    if-nez p1, :cond_0

    .line 1540
    const v1, 0x7f0a0014

    .line 1545
    .local v1, strId:I
    :goto_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1546
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1547
    const v2, 0x20c009e

    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1548
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1549
    const v2, 0x7f0a0015

    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/Weather/WeatherActivity$4;

    invoke-direct {v3, p0}, Lcom/htc/Weather/WeatherActivity$4;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1561
    const v2, 0x7f0a002f

    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/Weather/WeatherActivity$5;

    invoke-direct {v3, p0}, Lcom/htc/Weather/WeatherActivity$5;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1567
    new-instance v2, Lcom/htc/Weather/WeatherActivity$6;

    invoke-direct {v2, p0}, Lcom/htc/Weather/WeatherActivity$6;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1573
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 1574
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mConnectionFailedDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1575
    return-void

    .line 1542
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #strId:I
    :cond_0
    const v1, 0x7f0a0039

    .restart local v1       #strId:I
    goto :goto_0
.end method

.method private showNetworkErrorDlg()V
    .locals 5

    .prologue
    .line 1580
    const v2, 0x7f0a0012

    .line 1582
    .local v2, strId:I
    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkErrDialog:Landroid/app/Dialog;

    if-nez v3, :cond_0

    .line 1583
    new-instance v1, Lcom/htc/Weather/WeatherActivity$7;

    invoke-direct {v1, p0}, Lcom/htc/Weather/WeatherActivity$7;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    .line 1596
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/htc/Weather/WeatherActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherActivity$8;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    .line 1601
    .local v0, cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0011

    invoke-virtual {p0, v4}, Lcom/htc/Weather/WeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0012

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0017

    invoke-virtual {v3, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkErrDialog:Landroid/app/Dialog;

    .line 1609
    .end local v0           #cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkErrDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1613
    :goto_0
    return-void

    .line 1612
    :cond_1
    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkErrDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showNetworkInActiveDialog()V
    .locals 4

    .prologue
    .line 1616
    const-string v2, "WeatherMaGroup"

    const-string v3, "showNetworkInActiveDialog"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkInActiveDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 1618
    new-instance v1, Lcom/htc/Weather/WeatherActivity$9;

    invoke-direct {v1, p0}, Lcom/htc/Weather/WeatherActivity$9;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    .line 1639
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/htc/Weather/WeatherActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherActivity$10;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    .line 1644
    .local v0, cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0011

    invoke-virtual {p0, v3}, Lcom/htc/Weather/WeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkInActiveDialog:Landroid/app/Dialog;

    .line 1647
    .end local v0           #cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkInActiveDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1652
    :goto_0
    return-void

    .line 1650
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mNetworkInActiveDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private unregisterAppReceiver()V
    .locals 1

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherActivity;->mBoolAppReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1443
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/WeatherActivity;->mBoolAppReceiverRegistered:Z

    .line 1444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    .line 1446
    return-void
.end method

.method private updateTwoPannedUIData()V
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherDetail;->updateDetailInfo()V

    .line 802
    return-void
.end method

.method private updateUIData(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 806
    const-string v1, "WeatherMaGroup"

    const-string v2, "updateUIData"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 809
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isNoAddedCity:Z

    .line 810
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->setNoCityUI()V

    .line 811
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->cleanVideo()V

    .line 812
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    if-eqz v1, :cond_1

    .line 813
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/Weather/widget/TodayCondition;->setVisibility(I)V

    .line 814
    const-string v1, "WeatherMaGroup"

    const-string v2, " updateUIData mConditionPanel GONE"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_1
    :goto_0
    return-void

    .line 819
    :cond_2
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_3

    .line 820
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 821
    :cond_3
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1, p1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    .line 823
    .local v0, ci:Lcom/htc/Weather/data/CityInfo;
    invoke-direct {p0, v0, p1}, Lcom/htc/Weather/WeatherActivity;->checkDataAvalible(Lcom/htc/Weather/data/CityInfo;I)Z

    .line 826
    if-eqz v0, :cond_4

    .line 827
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/data/CityInfo;->changeOffsetOfToday(Landroid/content/Context;)Z

    .line 832
    :cond_4
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v1, v0}, Lcom/htc/Weather/widget/HeaderBar;->updateData(Lcom/htc/Weather/data/CityInfo;)V

    .line 833
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    invoke-virtual {v1, v0}, Lcom/htc/Weather/widget/TodayCondition;->updateData(Lcom/htc/Weather/data/CityInfo;)V

    .line 834
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v1, v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->updateData(Lcom/htc/Weather/data/CityInfo;)V

    .line 837
    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherActivity;->updateVideo(Lcom/htc/Weather/data/CityInfo;)V

    .line 840
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-eqz v1, :cond_6

    .line 842
    iget-boolean v1, v0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v1, :cond_5

    .line 843
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherActivity;->setGLTransparent(Z)V

    .line 850
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    iget-wide v3, p0, Lcom/htc/Weather/WeatherActivity;->mCityTimeUpdateInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/htc/Weather/WeatherActivity;->mCityTimeUpdateInterval:J

    rem-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 844
    :cond_6
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-nez v1, :cond_5

    .line 846
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->updateTwoPannedUIData()V

    goto :goto_1
.end method

.method private updateVideo(Lcom/htc/Weather/data/CityInfo;)V
    .locals 5
    .parameter "cityinfo"

    .prologue
    .line 856
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isGLInitialed:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v2, :cond_0

    .line 857
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->initGLVideoPlayback()V

    .line 859
    :cond_0
    iget-boolean v2, p1, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v2, :cond_3

    .line 861
    invoke-virtual {p1}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v2}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/Weather/data/DayForecast;->getForecastIconStr()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v2}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/Weather/data/DayForecast;->isDayLight()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/htc/Weather/WeatherActivity;->getVideoPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {v2}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->getCurrentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 864
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    sget-boolean v3, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v4, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v2, v3, v4}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeConfig(ZZ)Z

    .line 865
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherActivity;->getVideoIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeCondition(ILjava/lang/String;)Z

    .line 869
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v2}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 870
    invoke-virtual {p1}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v2}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/Weather/data/DayForecast;->getForecastIcon()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/Weather/WeatherActivity;->playSoundEffect(I)V

    .line 879
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 872
    .restart local v0       #id:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    :cond_2
    const-string v2, "WeatherMaGroup"

    const-string v3, "updateVideo, data is null"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 877
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->cleanVideo()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1944
    const-string v3, "WeatherMaGroup"

    const-string v4, "onActivityResult"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    sput-boolean v6, Lcom/htc/Weather/WeatherActivity;->isBackFromInternalActivity:Z

    .line 1948
    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 1949
    const-string v3, "WeatherMaGroup"

    const-string v4, "onActivityResult , requestCode = RET_WIFISETTING"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    sput-boolean v6, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOnStart:Z

    .line 2015
    :cond_0
    :goto_0
    return-void

    .line 1953
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 2014
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1957
    :sswitch_0
    const-string v3, "WeatherMaGroup"

    const-string v4, "onActivityResult , resultCode = RET_ADD_LOCATION"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    sput-boolean v5, Lcom/htc/Weather/WeatherActivity;->isNoAddedCity:Z

    .line 1962
    if-eqz p3, :cond_2

    .line 1964
    const-string v3, "status"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1965
    const v3, 0x7f0a0064

    const/16 v4, 0x1f4

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1969
    :cond_3
    invoke-direct {p0, p3}, Lcom/htc/Weather/WeatherActivity;->addCityFromResult(Landroid/content/Intent;)V

    .line 1970
    sget-boolean v3, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-eqz v3, :cond_4

    .line 1971
    sget v3, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-direct {p0, v3}, Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V

    goto :goto_1

    .line 1973
    :cond_4
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->updateTwoPannedUIData()V

    goto :goto_1

    .line 1977
    :sswitch_1
    const-string v3, "WeatherMaGroup"

    const-string v4, "onActivityResult , resultCode = RET_DEL_LOCATION"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    if-eqz p3, :cond_2

    const-string v3, "delete_"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1980
    invoke-direct {p0, v6, v7, v8}, Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V

    goto :goto_1

    .line 1985
    :sswitch_2
    const-string v3, "WeatherMaGroup"

    const-string v4, "onActivityResult , resultCode = RET_REARRANGE"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    invoke-direct {p0, v6, v7, v8}, Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V

    goto :goto_1

    .line 1991
    :sswitch_3
    const-string v3, "WeatherMaGroup"

    const-string v4, "onActivityResult , resultCode = RET_DEL_REARRANGE"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    if-eqz p3, :cond_0

    .line 1994
    const-string v3, "rearranged_"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1995
    .local v2, isRearranged:Z
    const-string v3, "delete_"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1996
    .local v1, isDeleted:Z
    if-eqz v2, :cond_5

    .line 1997
    const-string v3, "WeatherMaGroup"

    const-string v4, "isRearranged"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.Weather.rearrange_list_changed"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2000
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2002
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    if-eqz v1, :cond_6

    .line 2003
    const-string v3, "WeatherMaGroup"

    const-string v4, "isDeleted"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.Weather.delete_location_changed"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2006
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2008
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    if-nez v2, :cond_7

    if-eqz v1, :cond_2

    .line 2009
    :cond_7
    invoke-direct {p0, v6, v7, v8}, Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1953
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method public onCityListSelected(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1302
    sput p1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 1303
    sget v0, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V

    .line 1304
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 356
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 357
    const-string v0, "WeatherMaGroup"

    const-string v3, "WeatherActivity-onConfigurationChanged"

    invoke-static {v0, v3}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    .line 360
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    if-eqz v0, :cond_0

    .line 361
    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/htc/Weather/widget/HeaderBar;->adjustTitleNameLayout(Z)V

    .line 362
    const-string v0, "WeatherMaGroup"

    const-string v3, "HeaderBar != null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-nez v0, :cond_1

    .line 365
    const-string v0, "WeatherMaGroup"

    const-string v3, "ConditionPanel != null, !isFullscreenMode"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0, v2}, Lcom/htc/Weather/widget/TodayCondition;->adjustLayoutMargin(ZZ)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-eqz v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/htc/Weather/widget/TodayCondition;->adjustLayoutMargin(ZZ)V

    .line 371
    const-string v0, "WeatherMaGroup"

    const-string v1, "conditionPanel != null , is FullscreenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_3
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDemoTitle:Lcom/htc/Weather/widget/DemoTitleBar;

    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/DemoTitleBar;->adjustDemoTitleLayout(Z)V

    .line 375
    const-string v0, "WeatherMaGroup"

    const-string v1, "isDemoMode, mDemoTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_4
    iget v0, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0, p1}, Lcom/htc/Weather/WeatherDetail;->setConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 379
    return-void

    :cond_5
    move v0, v2

    .line 358
    goto :goto_0

    :cond_6
    move v0, v2

    .line 361
    goto :goto_1

    :cond_7
    move v0, v2

    .line 366
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const-string v0, "WeatherMaGroup"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/htc/Weather/util/HtcStorageChecker;->isInternalStorageEnough()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->ShowStorageFullDialog()V

    .line 260
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->checkFlag()V

    .line 246
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherActivity;->setScreenOrientation(Landroid/content/Intent;)V

    .line 248
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->setContentView(I)V

    .line 250
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->initNonUI()V

    .line 252
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->initUI()V

    .line 254
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->settingReceiver()V

    .line 256
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->toTwoPanel()V

    .line 258
    iget v0, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "choose_tab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherDetail;->setSlectedTabType(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1839
    const-string v0, "WeatherMaGroup"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    invoke-super {p0}, Lcom/htc/app/ma/MaMainActivity;->onDestroy()V

    .line 1841
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isAppDestroy:Z

    .line 1843
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v0, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {v0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->release()I

    .line 1846
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1847
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDataReceiver:Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1850
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mDataReceiver:Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1852
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mVSTMRReceiver:Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;

    if-eqz v0, :cond_3

    .line 1853
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mVSTMRReceiver:Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1855
    :cond_3
    iput-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mDataProcesser:Lcom/htc/Weather/data/DataProcesser;

    .line 1857
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v0, :cond_4

    .line 1858
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    .line 1859
    iput-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    .line 1862
    :cond_4
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_5

    .line 1863
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->clear()V

    .line 1864
    :cond_5
    sput-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    .line 1866
    invoke-static {}, Lcom/htc/Weather/util/HtcStorageChecker;->isInternalStorageEnough()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1867
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1868
    :cond_6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1875
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1876
    .local v0, keyc:I
    const/16 v2, 0x52

    if-ne v2, v0, :cond_1

    .line 1877
    iget-boolean v2, p0, Lcom/htc/Weather/WeatherActivity;->keyDown:Z

    if-eqz v2, :cond_0

    .line 1882
    :goto_0
    return v1

    .line 1879
    :cond_0
    iput-boolean v1, p0, Lcom/htc/Weather/WeatherActivity;->keyDown:Z

    .line 1882
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1887
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1888
    .local v0, keyc:I
    const/16 v1, 0x52

    if-ne v1, v0, :cond_0

    .line 1889
    iput-boolean v6, p0, Lcom/htc/Weather/WeatherActivity;->keyDown:Z

    .line 1890
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 1939
    :goto_0
    return v1

    .line 1894
    :cond_0
    const/4 v1, 0x4

    if-ne v1, v0, :cond_6

    .line 1896
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-ne v1, v2, :cond_6

    .line 1901
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1902
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1903
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1906
    :cond_1
    sput-boolean v6, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    .line 1907
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeDemoTitleFromWindow()V

    .line 1909
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-eqz v1, :cond_5

    .line 1910
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addHeaderBarToWindow()V

    .line 1911
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addBottomUpdateInfoToWindow()V

    .line 1919
    :goto_1
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v1, :cond_2

    .line 1920
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {v1}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->reset()I

    .line 1925
    :cond_2
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    sget v5, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1927
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v1, :cond_3

    .line 1928
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v1}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    .line 1930
    :cond_3
    iget v1, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherDetail;->getSlectedTabType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-nez v1, :cond_4

    .line 1933
    iget v1, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherDetail;->DemoModeToHourlyTab()V

    :cond_4
    move v1, v2

    .line 1935
    goto :goto_0

    .line 1913
    :cond_5
    iget v1, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherDetail;->setTitleBar(Z)V

    .line 1916
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 1939
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 4
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2181
    const-string v0, "WeatherMaGroup"

    const-string v3, "WeatherActivity onMenuOpened"

    invoke-static {v0, v3}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isMenuOpened:Z

    .line 2186
    if-nez p2, :cond_0

    .line 2187
    const-string v0, "WeatherMaGroup"

    const-string v1, "onMenuOpened,menu is null"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    invoke-super {p0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 2201
    :goto_0
    return v0

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    if-eqz v0, :cond_1

    .line 2192
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/htc/Weather/widget/BottomUpdateInfo;->setVisibility(I)V

    .line 2195
    :cond_1
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2196
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    if-eqz v0, :cond_2

    .line 2197
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    invoke-virtual {v0, v2}, Lcom/htc/Weather/widget/TodayCondition;->showConditionPanel(Z)V

    .line 2199
    :cond_2
    const/4 v3, 0x4

    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isNoAddedCity:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {p2, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2200
    const/4 v0, 0x3

    sget-boolean v3, Lcom/htc/Weather/WeatherActivity;->isNoAddedCity:Z

    if-nez v3, :cond_4

    :goto_2
    invoke-interface {p2, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2201
    invoke-super {p0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2199
    goto :goto_1

    :cond_4
    move v1, v2

    .line 2200
    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 264
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 265
    const-string v1, "WeatherMaGroup"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, p1}, Lcom/htc/Weather/WeatherActivity;->setIntent(Landroid/content/Intent;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/htc/Weather/WeatherActivity;->setScreenOrientation(Landroid/content/Intent;)V

    .line 271
    iget v1, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    iget v1, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "choose_tab"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherDetail;->setSlectedTabType(I)V

    .line 274
    :cond_0
    const-string v0, ""

    .line 275
    .local v0, city_name:Ljava/lang/String;
    const-string v1, "name_"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherActivity;->findIndexFromCityName(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 278
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOpened:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 279
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v4, v1, v2}, Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V

    .line 281
    :cond_1
    sget v1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-direct {p0, v1}, Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V

    .line 283
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 2208
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isMenuOpened:Z

    .line 2209
    invoke-super {p0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2210
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    if-eqz v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/BottomUpdateInfo;->setVisibility(I)V

    .line 2214
    :cond_0
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2215
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    if-eqz v0, :cond_1

    .line 2216
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/TodayCondition;->showConditionPanel(Z)V

    .line 2218
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1718
    const-string v0, "WeatherMaGroup"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    invoke-super {p0}, Lcom/htc/app/ma/MaMainActivity;->onPause()V

    .line 1720
    sput-boolean v2, Lcom/htc/Weather/WeatherActivity;->isOnResume:Z

    .line 1721
    sput-boolean v2, Lcom/htc/Weather/WeatherActivity;->isBackFromInternalActivity:Z

    .line 1723
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {v0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->pause()I

    .line 1725
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {v0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->release()I

    .line 1728
    :cond_0
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-eqz v0, :cond_3

    .line 1729
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeDemoTitleFromWindow()V

    .line 1730
    sput-boolean v2, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    .line 1732
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-nez v0, :cond_1

    .line 1733
    iget v0, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherDetail;->setTitleBar(Z)V

    .line 1735
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1736
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1742
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->pauseSoundeffect()V

    .line 1744
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1745
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1746
    :cond_2
    return-void

    .line 1739
    :cond_3
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeTopWindowView()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 1777
    const-string v0, "WeatherMaGroup"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    invoke-super {p0}, Lcom/htc/app/ma/MaMainActivity;->onResume()V

    .line 1779
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isOnResume:Z

    .line 1783
    const-string v0, "com.htc.sync.provider.weather"

    invoke-static {p0, v0}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOpened:Z

    .line 1784
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: isSyncWhenOpened = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    invoke-static {}, Lcom/htc/Weather/util/HtcStorageChecker;->isInternalStorageEnough()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isShowStorageFullDialog:Z

    if-nez v0, :cond_1

    .line 1787
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeTopWindowView()V

    .line 1788
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->ShowStorageFullDialog()V

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1793
    :cond_1
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->isNetworkWindowPoping()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1794
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-eqz v0, :cond_4

    .line 1795
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addTopWindowView()V

    .line 1802
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->checkIsWeatherLiveWallpaper()Z

    .line 1804
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1805
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    sget v3, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1807
    :cond_3
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPortrait:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isFullscreenMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/Weather/WeatherActivity;->mSubLayout:Landroid/widget/RelativeLayout;

    sget-boolean v4, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v5, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual/range {v0 .. v5}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->init(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;ZZ)I

    goto :goto_0

    .line 1798
    :cond_4
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addConditionPanelToWindow()V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/htc/app/ma/MaMainActivity;->onStart()V

    .line 305
    const-string v0, "WeatherMaGroup"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOnStart:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isSyncWhenOnStart:Z

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->registerAppReceiver()V

    .line 314
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 318
    invoke-super {p0}, Lcom/htc/app/ma/MaMainActivity;->onStop()V

    .line 319
    const-string v0, "WeatherMaGroup"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->pauseSoundeffect()V

    .line 321
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->unregisterAppReceiver()V

    .line 322
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 2036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2038
    .local v0, action:I
    if-nez v0, :cond_0

    .line 2039
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/htc/Weather/WeatherActivity;->dx:I

    .line 2040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/htc/Weather/WeatherActivity;->dy:I

    .line 2043
    :cond_0
    const/4 v9, 0x1

    if-eq v9, v0, :cond_1

    const/4 v9, 0x3

    if-ne v9, v0, :cond_8

    .line 2045
    :cond_1
    iget v9, p0, Lcom/htc/Weather/WeatherActivity;->dy:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    sub-int v7, v9, v10

    .line 2046
    .local v7, sy:I
    iget v9, p0, Lcom/htc/Weather/WeatherActivity;->dx:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    sub-int v6, v9, v10

    .line 2048
    .local v6, sx:I
    const/4 v5, 0x0

    .line 2050
    .local v5, slop:I
    :try_start_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v10

    div-int v5, v9, v10
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    :goto_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sget v10, Lcom/htc/Weather/WeatherActivity;->mTouchSlop:I

    if-lt v9, v10, :cond_2

    const/4 v9, 0x1

    if-ge v5, v9, :cond_7

    .line 2056
    :cond_2
    const-string v9, "WeatherMaGroup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "touch-slop:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/htc/Weather/WeatherActivity;->mTouchSlop:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/Weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2061
    .local v2, now:J
    const-string v9, "WeatherMaGroup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "now:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/Weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    iget-wide v9, p0, Lcom/htc/Weather/WeatherActivity;->mLastGestureTime:J

    sub-long v9, v2, v9

    const-wide/16 v11, 0x4b0

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    .line 2063
    const-string v9, "WeatherMaGroup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gesture too quick, mLastGestureTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/htc/Weather/WeatherActivity;->mLastGestureTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 2108
    .end local v2           #now:J
    .end local v5           #slop:I
    .end local v6           #sx:I
    .end local v7           #sy:I
    :goto_1
    return v9

    .line 2065
    .restart local v2       #now:J
    .restart local v5       #slop:I
    .restart local v6       #sx:I
    .restart local v7       #sy:I
    :cond_3
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sget v10, Lcom/htc/Weather/WeatherActivity;->mTouchSlop:I

    if-ge v9, v10, :cond_4

    .line 2066
    sget-boolean v9, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-nez v9, :cond_4

    .line 2067
    sget-boolean v9, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-eqz v9, :cond_5

    .line 2068
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->toTwoPanel()V

    .line 2087
    :cond_4
    :goto_2
    iput-wide v2, p0, Lcom/htc/Weather/WeatherActivity;->mLastGestureTime:J

    .line 2088
    const/4 v9, 0x0

    goto :goto_1

    .line 2070
    :cond_5
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2072
    .local v4, res:Landroid/content/res/Resources;
    sget-boolean v9, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    if-eqz v9, :cond_6

    .line 2073
    const v9, 0x7f090005

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2074
    .local v8, top:I
    const v9, 0x7f090007

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    add-int v1, v9, v8

    .line 2079
    .local v1, down:I
    :goto_3
    iget v9, p0, Lcom/htc/Weather/WeatherActivity;->dy:I

    if-le v9, v8, :cond_4

    iget v9, p0, Lcom/htc/Weather/WeatherActivity;->dy:I

    if-ge v9, v1, :cond_4

    .line 2080
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/Weather/WeatherActivity;->setGLTransparent(Z)V

    .line 2081
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/htc/Weather/WeatherActivity;->setConditionPanelVisible(Z)V

    .line 2082
    const/16 v9, 0x320

    invoke-virtual {p0, v9}, Lcom/htc/Weather/WeatherActivity;->toFullScreen(I)V

    goto :goto_2

    .line 2076
    .end local v1           #down:I
    .end local v8           #top:I
    :cond_6
    const v9, 0x7f09000d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2077
    .restart local v8       #top:I
    const v9, 0x7f09000f

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    add-int v1, v9, v8

    .restart local v1       #down:I
    goto :goto_3

    .line 2091
    .end local v1           #down:I
    .end local v2           #now:J
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v8           #top:I
    :cond_7
    if-ltz v7, :cond_a

    .line 2093
    sget-boolean v9, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-eqz v9, :cond_9

    .line 2094
    iget-object v9, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2108
    .end local v5           #slop:I
    .end local v6           #sx:I
    .end local v7           #sy:I
    :cond_8
    :goto_4
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_1

    .line 2096
    .restart local v5       #slop:I
    .restart local v6       #sx:I
    .restart local v7       #sy:I
    :cond_9
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->nextCityIndex()V

    goto :goto_4

    .line 2100
    :cond_a
    sget-boolean v9, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-eqz v9, :cond_b

    .line 2101
    iget-object v9, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 2103
    :cond_b
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->prevCityIndex()V

    goto :goto_4

    .line 2051
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method public pauseGLVideo()V
    .locals 2

    .prologue
    .line 1685
    const-string v0, "WeatherMaGroup"

    const-string v1, "pause GLVideo"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {v0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->pause()I

    .line 1688
    :cond_0
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->pauseSoundeffect()V

    .line 1689
    return-void
.end method

.method public reDataReceiver()V
    .locals 7

    .prologue
    .line 1466
    iget-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mDataReceiver:Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;

    if-eqz v4, :cond_0

    .line 1467
    iget-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mDataReceiver:Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/htc/Weather/WeatherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1468
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mDataReceiver:Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;

    .line 1471
    :cond_0
    iget-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mCityIndexMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 1472
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mCityIndexMap:Ljava/util/HashMap;

    .line 1473
    :cond_1
    iget-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mCityIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1475
    new-instance v4, Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;-><init>(Lcom/htc/Weather/WeatherActivity;)V

    iput-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mDataReceiver:Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;

    .line 1476
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1477
    .local v1, datafilter:Landroid/content/IntentFilter;
    const-string v4, "sync_data_category"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1479
    sget-object v4, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v4}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v3

    .line 1480
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1482
    sget-object v4, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v4, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/Weather/data/CityInfo;->getAgentCode()Ljava/lang/String;

    move-result-object v0

    .line 1483
    .local v0, angentcode:Ljava/lang/String;
    const-string v4, "WeatherMaGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " agent code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1485
    iget-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mCityIndexMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1489
    .end local v0           #angentcode:Ljava/lang/String;
    :cond_2
    const-string v4, "1__"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1491
    const-string v4, "com.htc.sync.provider.weather.result"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1492
    iget-object v4, p0, Lcom/htc/Weather/WeatherActivity;->mDataReceiver:Lcom/htc/Weather/WeatherActivity$DataBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/htc/Weather/WeatherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1494
    return-void
.end method

.method public resumeGLVideo()V
    .locals 3

    .prologue
    .line 1692
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume GLVideo,wallpaper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isWeatherWallpaperAlive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isNeedCheckWallpaper:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1695
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isWeatherWallpaperAlive:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isBackFromInternalActivity:Z

    if-nez v0, :cond_1

    .line 1696
    const-string v0, "WeatherMaGroup"

    const-string v1, "waiting for wallpaper release, no resume video:"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isOnResume:Z

    if-nez v0, :cond_2

    .line 1703
    const-string v0, "WeatherMaGroup"

    const-string v1, "resume GLVideo: activity was paused ,ignore"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1707
    :cond_2
    const-string v0, "WeatherMaGroup"

    const-string v1, "resume GLVideo"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeConfig(ZZ)Z

    .line 1712
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    invoke-virtual {v0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->resume()I

    goto :goto_0
.end method

.method public setConditionPanelVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    if-nez v0, :cond_0

    .line 2027
    :goto_0
    return-void

    .line 2020
    :cond_0
    if-eqz p1, :cond_1

    .line 2021
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/TodayCondition;->setVisibility(I)V

    .line 2022
    const-string v0, "WeatherMaGroup"

    const-string v1, "setConditionPanelVisible true"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2024
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/TodayCondition;->setVisibility(I)V

    .line 2025
    const-string v0, "WeatherMaGroup"

    const-string v1, "setConditionPanelVisible false"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGLTransparent(Z)V
    .locals 0
    .parameter "bTrans"

    .prologue
    .line 1678
    if-eqz p1, :cond_0

    .line 1679
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->pauseGLVideo()V

    .line 1682
    :goto_0
    return-void

    .line 1681
    :cond_0
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherActivity;->resumeGLVideo()V

    goto :goto_0
.end method

.method public toDemoMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1370
    const-string v0, "WeatherMaGroup"

    const-string v1, "toDemoMode"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    .line 1373
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isGLInitialed:Z

    if-nez v0, :cond_0

    .line 1374
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->initGLVideoPlayback()V

    .line 1377
    :cond_0
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->pauseSoundeffect()V

    .line 1379
    sput v4, Lcom/htc/Weather/WeatherActivity;->mCurrDemoIndex:I

    .line 1380
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeNoDataView()V

    .line 1381
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeNoCityView()V

    .line 1382
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeTopWindowView()V

    .line 1383
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addDemoTitleToWindow()V

    .line 1386
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-nez v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1390
    iget v0, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0, v4}, Lcom/htc/Weather/WeatherDetail;->setTitleBar(Z)V

    .line 1395
    :goto_0
    return-void

    .line 1393
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public toFullScreen(I)V
    .locals 4
    .parameter "animDuration"

    .prologue
    const/4 v3, 0x0

    .line 1308
    const-string v0, "WeatherMaGroup"

    const-string v1, "toFullScreen"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    .line 1311
    invoke-virtual {p0, v3}, Lcom/htc/Weather/WeatherActivity;->setAnimationFlag(I)V

    .line 1312
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeConfig(ZZ)Z

    .line 1315
    :cond_0
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->isCurrCityDataAvalible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1316
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    invoke-virtual {v0, v3}, Lcom/htc/Weather/widget/TodayCondition;->setVisibility(I)V

    .line 1317
    const-string v0, "WeatherMaGroup"

    const-string v1, " toFullScreen mConditionPanel VISIBLE"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mHeaderBar:Lcom/htc/Weather/widget/HeaderBar;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/HeaderBar;->update()V

    .line 1326
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1327
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/widget/TodayCondition;->adjustLayoutMargin(ZZ)V

    .line 1328
    return-void

    .line 1320
    :cond_2
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isFetchDataFinished:Z

    if-eqz v0, :cond_1

    .line 1321
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->cleanVideo()V

    .line 1322
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->addNoDataView()V

    .line 1323
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->showEmpty()V

    goto :goto_0
.end method

.method public toTwoPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1332
    const-string v0, "WeatherMaGroup"

    const-string v1, "toTwoPanel"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    sput-boolean v4, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    .line 1335
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->setAnimationFlag(I)V

    .line 1336
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mMainAnimation:Lcom/htc/Weather/animation/AbstractWeatherAnim;

    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/animation/AbstractWeatherAnim;->changeConfig(ZZ)Z

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1343
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mConditionPanel:Lcom/htc/Weather/widget/TodayCondition;

    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/widget/TodayCondition;->adjustLayoutMargin(ZZ)V

    .line 1346
    iget v0, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0, v4}, Lcom/htc/Weather/WeatherDetail;->setMainLayoutVisibility(I)V

    .line 1348
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->isCurrCityDataAvalible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1349
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->updateTwoPannedUIData()V

    .line 1359
    :goto_0
    return-void

    .line 1351
    :cond_1
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->cleanVideo()V

    .line 1352
    invoke-direct {p0}, Lcom/htc/Weather/WeatherActivity;->removeNoDataView()V

    .line 1356
    iget v0, p0, Lcom/htc/Weather/WeatherActivity;->Frame_1:I

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherDetail;->checkDataAvalible()Z

    goto :goto_0
.end method

.method public updateBottomUpdateInfo()V
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity;->mBottomUpdateInfo:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->update()V

    .line 1163
    :cond_0
    return-void
.end method
