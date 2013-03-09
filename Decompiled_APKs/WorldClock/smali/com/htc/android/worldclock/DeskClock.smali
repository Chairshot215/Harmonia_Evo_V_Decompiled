.class public Lcom/htc/android/worldclock/DeskClock;
.super Lcom/htc/android/worldclock/CloseMenuIME;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;,
        Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;,
        Lcom/htc/android/worldclock/DeskClock$MinuteTask;,
        Lcom/htc/android/worldclock/DeskClock$SecondTask;
    }
.end annotation


# static fields
.field private static final ACTION_DESK_LAUNCHER:Ljava/lang/String; = "com.htc.intent.action.DESK_LAUNCHER"

.field public static final APP_LOCATION_SERVICE:Ljava/lang/String; = "com.htc.htclocationservice"

.field protected static CURRENT:Ljava/lang/String; = null

.field protected static DEGREE:Ljava/lang/String; = null

.field protected static HIGH_INDICATOR:Ljava/lang/String; = null

.field protected static LOW_INDICATOR:Ljava/lang/String; = null

.field private static final SCREEN_DIMMED:Ljava/lang/String; = "screen_dimmed"

.field private static final SCREEN_SAVER_MODE:Ljava/lang/String; = "screen_saver_mode"

.field private static mLock:Ljava/lang/Object;

.field private static final sCelsius:Z


# instance fields
.field private final ALARM_NOTIFY_DURATION:J

.field private final ALARM_OFF_COLOR:I

.field private final ALARM_OFF_COLOR_DIM:I

.field private final ALARM_ON_COLOR:I

.field private final FETCH_WEATHER_DATA_MSG:I

.field private final FETCH_WEATHER_DELAY:J

.field private final FETCH_WEATHER_SELECTOR:I

.field private final SCREEN_SAVER_COLOR:I

.field private final SCREEN_SAVER_COLOR_DIM:I

.field private final SCREEN_SAVER_MOVE_DELAY:J

.field private final SCREEN_SAVER_MOVE_MSG:I

.field private final SCREEN_SAVER_TIMEOUT:J

.field private final SCREEN_SAVER_TIMEOUT_MSG:I

.field private final UPDATE_ALARM_DISPLAY_MSG:I

.field private final UPDATE_COLON_DISPLAY:I

.field private final UPDATE_INIT:I

.field private final UPDATE_NEXT_ALARM_MSG:I

.field private final UPDATE_REMAINS:I

.field private final UPDATE_RESUME_MSG:I

.field private final UPDATE_WEATHER_DISPLAY_MSG:I

.field private final WHAT_ON_ALARM_UPDATE:I

.field private final WHAT_ON_CITY_UPDATE:I

.field private final WHAT_ON_DORESUME:I

.field private final WHAT_ON_INIT:I

.field private final WHAT_ON_REMAINS:I

.field private m24HourMode:Z

.field private mAlarmEnabled:Z

.field private mAlarmIcon:Landroid/widget/ImageView;

.field private mAlarmTimeString:Ljava/lang/String;

.field private mBatteryDisplay:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private mBtnWeather:Landroid/graphics/drawable/Drawable;

.field private mCentigrate:Z

.field private mCheckSettingRunnable:Ljava/lang/Runnable;

.field protected mCityChangeObserver:Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;

.field private mCityChanged:Z

.field private mColon:Landroid/widget/ImageView;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentDay:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field mDeskClockResUtils:Lcom/htc/android/worldclock/DeskClockResUtils;

.field private mDestroyed:Z

.field private mDockModeButton:Landroid/widget/ImageButton;

.field private mDockModeClick:Landroid/view/View$OnClickListener;

.field protected mFormatChangeObserver:Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field private final mHandy:Landroid/os/Handler;

.field private mIdleTimeoutEpoch:I

.field private mInit:Z

.field private mInitSaverCallback:Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocCode:Ljava/lang/String;

.field protected mLooper:Landroid/os/Looper;

.field private mMinuteTask:Lcom/htc/android/worldclock/DeskClock$MinuteTask;

.field private mMinuteTimer:Ljava/util/Timer;

.field private mNetworkTimeZoneCity:Ljava/lang/String;

.field private mNetworkTimeZoneId:Ljava/lang/String;

.field private mNextAlarm:Landroid/widget/TextView;

.field private mNextAlarmTime:J

.field private mPluggedIn:Z

.field private mPrePluggedIn:Z

.field private mPrevState:Z

.field private mRNG:Ljava/util/Random;

.field private mRefreshRemains:Z

.field private mResReady:Z

.field private mRestoreView:Landroid/view/View;

.field private mSaverAlarmIcon:Landroid/widget/ImageView;

.field private mSaverColon:Landroid/widget/ImageView;

.field private mSaverDate:Landroid/widget/TextView;

.field private mSaverDateFormat:Ljava/lang/String;

.field private mSaverNextAlarm:Landroid/widget/TextView;

.field private mSaverTime:Lcom/htc/android/worldclock/DeskDigitalClock;

.field private mSaverTouchListener:Landroid/view/View$OnTouchListener;

.field private mSaverView:Landroid/view/View;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenSaverMode:Z

.field private mScreenSaverState:Z

.field private mSecondTask:Lcom/htc/android/worldclock/DeskClock$SecondTask;

.field private mSecondTimer:Ljava/util/Timer;

.field private mShowColon:Z

.field private mStateRes:Lcom/htc/weather/StateResources;

.field private mStopped:Z

.field private mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

.field private mTime:Lcom/htc/android/worldclock/DeskDigitalClock;

.field private mTimeChanged:Z

.field protected mTimeZone:Ljava/util/TimeZone;

.field private mTouching:[Z

.field private mTurnOnLocServiceView:Landroid/view/View;

.field private mWeatherClick:Landroid/view/View$OnClickListener;

.field private mWeatherConditionId:I

.field private mWeatherDisable:Landroid/view/View;

.field private mWeatherFetchScheduled:Z

.field private mWeatherHighIndicator:Landroid/widget/TextView;

.field private mWeatherHighIndicatorString:Ljava/lang/String;

.field private mWeatherHighTemperature:Landroid/widget/TextView;

.field private mWeatherHighTemperatureString:Ljava/lang/String;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mWeatherInformation:Landroid/widget/TextView;

.field private mWeatherInformationString:Ljava/lang/String;

.field private mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

.field private mWeatherLocation:Landroid/widget/TextView;

.field private mWeatherLocationString:Ljava/lang/String;

.field private mWeatherLocationStringEn:Ljava/lang/String;

.field private mWeatherLowIndicator:Landroid/widget/TextView;

.field private mWeatherLowIndicatorString:Ljava/lang/String;

.field private mWeatherLowTemperature:Landroid/widget/TextView;

.field private mWeatherLowTemperatureString:Ljava/lang/String;

.field private mWeatherNoDataTextView:Landroid/widget/TextView;

.field private mWeatherReceiver:Landroid/content/BroadcastReceiver;

.field private mWeatherTemperature:Landroid/widget/TextView;

.field private mWeatherTemperatureString:Ljava/lang/String;

.field private mWeatherView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 237
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/htc/android/worldclock/DeskClock;->mLock:Ljava/lang/Object;

    .line 498
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, cc:Ljava/lang/String;
    const-string v1, "us"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/htc/android/worldclock/DeskClock;->sCelsius:Z

    .line 500
    return-void

    .line 499
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/CloseMenuIME;-><init>()V

    .line 89
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/htc/android/worldclock/DeskClock;->FETCH_WEATHER_DELAY:J

    .line 92
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/htc/android/worldclock/DeskClock;->SCREEN_SAVER_TIMEOUT:J

    .line 95
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/htc/android/worldclock/DeskClock;->SCREEN_SAVER_MOVE_DELAY:J

    .line 97
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/htc/android/worldclock/DeskClock;->ALARM_NOTIFY_DURATION:J

    .line 99
    iput v4, p0, Lcom/htc/android/worldclock/DeskClock;->SCREEN_SAVER_COLOR:I

    .line 100
    const v0, -0x8f8f90

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->SCREEN_SAVER_COLOR_DIM:I

    .line 102
    iput v4, p0, Lcom/htc/android/worldclock/DeskClock;->ALARM_ON_COLOR:I

    .line 103
    const v0, -0x8c868d

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->ALARM_OFF_COLOR:I

    .line 104
    const v0, -0xcecbcf

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->ALARM_OFF_COLOR_DIM:I

    .line 106
    const/16 v0, 0x1000

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->FETCH_WEATHER_DATA_MSG:I

    .line 107
    const/16 v0, 0x1001

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->UPDATE_WEATHER_DISPLAY_MSG:I

    .line 108
    const/16 v0, 0x1002

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->UPDATE_COLON_DISPLAY:I

    .line 109
    const/16 v0, 0x1003

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->UPDATE_ALARM_DISPLAY_MSG:I

    .line 110
    const/16 v0, 0x1004

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->UPDATE_RESUME_MSG:I

    .line 111
    const/16 v0, 0x1005

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->UPDATE_NEXT_ALARM_MSG:I

    .line 112
    const/16 v0, 0x1006

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->UPDATE_INIT:I

    .line 113
    const/16 v0, 0x1007

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->UPDATE_REMAINS:I

    .line 114
    const/16 v0, 0x1008

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->FETCH_WEATHER_SELECTOR:I

    .line 115
    const/16 v0, 0x2000

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->SCREEN_SAVER_TIMEOUT_MSG:I

    .line 116
    const/16 v0, 0x2001

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->SCREEN_SAVER_MOVE_MSG:I

    .line 119
    const/16 v0, 0x1f5

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->WHAT_ON_CITY_UPDATE:I

    .line 120
    const/16 v0, 0x1f6

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->WHAT_ON_INIT:I

    .line 121
    const/16 v0, 0x1f7

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->WHAT_ON_REMAINS:I

    .line 122
    const/16 v0, 0x1f8

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->WHAT_ON_DORESUME:I

    .line 123
    const/16 v0, 0x1f9

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->WHAT_ON_ALARM_UPDATE:I

    .line 144
    iput-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverNextAlarm:Landroid/widget/TextView;

    .line 146
    iput-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    .line 169
    iput v4, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherConditionId:I

    .line 173
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    .line 179
    iput v4, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryLevel:I

    .line 180
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mPluggedIn:Z

    .line 181
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mPrePluggedIn:Z

    .line 183
    iput v2, p0, Lcom/htc/android/worldclock/DeskClock;->mIdleTimeoutEpoch:I

    .line 185
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherFetchScheduled:Z

    .line 186
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mRNG:Ljava/util/Random;

    .line 196
    iput-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    .line 201
    iput-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mHandlerThread:Landroid/os/HandlerThread;

    .line 202
    iput-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mLooper:Landroid/os/Looper;

    .line 206
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mCentigrate:Z

    .line 207
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mStopped:Z

    .line 208
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    .line 209
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChanged:Z

    .line 210
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeChanged:Z

    .line 211
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mInit:Z

    .line 212
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mResReady:Z

    .line 218
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    .line 219
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mPrevState:Z

    .line 226
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->m24HourMode:Z

    .line 229
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mShowColon:Z

    .line 230
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarmTime:J

    .line 234
    iput-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mAlarmTimeString:Ljava/lang/String;

    .line 235
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mAlarmEnabled:Z

    .line 236
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mRefreshRemains:Z

    .line 240
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$1;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$2;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$2;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$3;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$3;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    .line 1292
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$5;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$5;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mCheckSettingRunnable:Ljava/lang/Runnable;

    .line 1356
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$7;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$7;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDockModeClick:Landroid/view/View$OnClickListener;

    .line 1366
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$8;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$8;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherClick:Landroid/view/View$OnClickListener;

    .line 1400
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$9;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$9;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverTouchListener:Landroid/view/View$OnTouchListener;

    .line 1461
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$10;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$10;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    .line 1473
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$11;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$11;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mInitSaverCallback:Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;

    .line 2114
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$13;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$13;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/DeskClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshDate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/worldclock/DeskClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/android/worldclock/DeskClock;->mIdleTimeoutEpoch:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->saveScreen()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->moveScreenSaver()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshColon()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshResume()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshNextAlarm()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/android/worldclock/DeskClock;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mBtnWeather:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/worldclock/DeskClock;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/android/worldclock/DeskClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mPluggedIn:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/android/worldclock/DeskClock;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mTouching:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/DeskClock;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/DeskClock;->handleBatteryUpdate(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/worldclock/DeskClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mShowColon:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/android/worldclock/DeskClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DeskClock;->mShowColon:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/android/worldclock/DeskClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->savePreference()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/android/worldclock/DeskClock;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherDisable:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->checkWeatherLocInAp()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/android/worldclock/DeskClock;)Lcom/htc/util/weather/WeatherLocation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/android/worldclock/DeskClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/android/worldclock/DeskClock;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DeskClock;->restoreScreen(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshAlarm()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshInitSavers()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->onCityUpdate()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->onInitParent()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->onRemains()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->onDoResume()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->onAlarmUpdate()V

    return-void
.end method

.method static synthetic access$3602(Lcom/htc/android/worldclock/DeskClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChanged:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/htc/android/worldclock/DeskClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/android/worldclock/DeskClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeChanged:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/htc/android/worldclock/DeskClock;Lcom/htc/util/weather/WSPData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DeskClock;->updateWeatherData(Lcom/htc/util/weather/WSPData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshInit()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshRemains()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/worldclock/DeskClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherFetchScheduled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/android/worldclock/DeskClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherFetchScheduled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->fetchWeatherData()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/DeskClock;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/DeskClock;->scheduleWeatherFetchDelayed(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->updateWeatherDisplay()V

    return-void
.end method

.method private addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V
    .locals 2
    .parameter "tz"
    .parameter "id"
    .parameter "name"
    .parameter "w"

    .prologue
    .line 1980
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCityName, tz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1982
    iput-object p2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    .line 1983
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeZone:Ljava/util/TimeZone;

    .line 1984
    return-void
.end method

.method private static celsiusToLocal(I)I
    .locals 2
    .parameter "tempC"

    .prologue
    .line 503
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 504
    sget-boolean v0, Lcom/htc/android/worldclock/DeskClock;->sCelsius:Z

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    int-to-float v0, p0

    const v1, 0x3fe66666

    mul-float/2addr v0, v1

    const/high16 v1, 0x4200

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method private checkIntentAndState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1517
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1518
    if-eqz p1, :cond_1

    .line 1519
    iput-boolean v5, p0, Lcom/htc/android/worldclock/DeskClock;->mPrevState:Z

    .line 1520
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    const-string v3, "screen_dimmed"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    .line 1521
    const-string v2, "screen_saver_mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1525
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "screen_dimmed"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "screen_saver_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1526
    :cond_2
    const-string v2, "getIntent() success"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "screen_dimmed"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1529
    .local v0, dimm:Z
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "screen_saver_mode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1531
    .local v1, screensaver:Z
    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    .line 1532
    :cond_3
    iput-boolean v5, p0, Lcom/htc/android/worldclock/DeskClock;->mPrevState:Z

    .line 1533
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    iput-boolean v0, v2, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    .line 1534
    iput-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    goto :goto_0
.end method

.method private checkWeatherLocInAp()V
    .locals 9

    .prologue
    .line 2236
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2237
    const-string v6, "com.htc.elroy.Weather"

    .line 2238
    .local v6, weatherAp:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/android/worldclock/DeskClock;->mLocCode:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/android/worldclock/DeskClock;->mLocCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 2239
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.htc.elroy.Weather"

    invoke-static {v7, v8}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v5

    .line 2240
    .local v5, locs:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v2, 0x0

    .line 2241
    .local v2, inList:Z
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/util/weather/WeatherLocation;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v3, v0, v1

    .line 2242
    .local v3, l:Lcom/htc/util/weather/WeatherLocation;
    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/worldclock/DeskClock;->mLocCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2243
    const/4 v2, 0x1

    .line 2247
    .end local v3           #l:Lcom/htc/util/weather/WeatherLocation;
    :cond_0
    if-nez v2, :cond_1

    .line 2248
    array-length v7, v5

    const/16 v8, 0xf

    if-ge v7, v8, :cond_1

    .line 2249
    const/4 v7, 0x1

    new-array v5, v7, [Lcom/htc/util/weather/WeatherLocation;

    .line 2250
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    aput-object v8, v5, v7

    .line 2251
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.htc.elroy.Weather"

    invoke-static {v7, v8, v5}, Lcom/htc/util/weather/WeatherUtility;->addLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 2255
    .end local v0           #arr$:[Lcom/htc/util/weather/WeatherLocation;
    .end local v1           #i$:I
    .end local v2           #inList:Z
    .end local v4           #len$:I
    .end local v5           #locs:[Lcom/htc/util/weather/WeatherLocation;
    :cond_1
    return-void

    .line 2241
    .restart local v0       #arr$:[Lcom/htc/util/weather/WeatherLocation;
    .restart local v1       #i$:I
    .restart local v2       #inList:Z
    .restart local v3       #l:Lcom/htc/util/weather/WeatherLocation;
    .restart local v4       #len$:I
    .restart local v5       #locs:[Lcom/htc/util/weather/WeatherLocation;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private doDim(Z)V
    .locals 1
    .parameter "fade"

    .prologue
    .line 713
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 714
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/WorldClockTabControl;->doDim(Z)V

    .line 715
    return-void
.end method

.method private fetchWeatherData()V
    .locals 2

    .prologue
    .line 508
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 509
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getAllDisplayTimeZone()V

    .line 514
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private findWLInWeatherDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "cityName"
    .parameter "countryName"
    .parameter "timezoneId"

    .prologue
    .line 1219
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1220
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-nez p3, :cond_3

    .line 1221
    :cond_1
    const/4 v1, 0x0

    .line 1270
    :cond_2
    :goto_0
    return-object v1

    .line 1223
    :cond_3
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1224
    .local v5, reqTimeZone:Ljava/util/TimeZone;
    const/4 v4, 0x0

    .line 1226
    .local v4, nameCondition:Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    if-eqz p1, :cond_6

    .line 1227
    new-instance v4, Lcom/htc/util/weather/WeatherUtility$SearchCondition;

    .end local v4           #nameCondition:Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    sget-object v7, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v7}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->MATCH_IGONE_CASE:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-direct {v4, p1, v7, v8}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;)V

    .line 1232
    .restart local v4       #nameCondition:Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    :goto_1
    const/4 v0, 0x0

    .line 1233
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1236
    .local v1, locCode:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v8}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/htc/util/weather/WeatherUtility$SearchCondition;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const-string v10, "0409WWE"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/util/weather/WeatherUtility;->getLocationListBySearchCondition(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherUtility$SearchCondition;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1241
    const/4 v6, 0x0

    .line 1242
    .local v6, weatherLoc:Lcom/htc/util/weather/WeatherLocation;
    const/4 v3, 0x0

    .line 1243
    .local v3, locTimezoneId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1244
    .local v2, locTimeZone:Ljava/util/TimeZone;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1246
    :cond_4
    invoke-static {v0}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    .line 1247
    if-eqz v6, :cond_8

    .line 1248
    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    .line 1249
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1250
    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1265
    :cond_5
    :goto_2
    if-eqz v0, :cond_2

    .line 1266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1229
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #locCode:Ljava/lang/String;
    .end local v2           #locTimeZone:Ljava/util/TimeZone;
    .end local v3           #locTimezoneId:Ljava/lang/String;
    .end local v6           #weatherLoc:Lcom/htc/util/weather/WeatherLocation;
    :cond_6
    new-instance v4, Lcom/htc/util/weather/WeatherUtility$SearchCondition;

    .end local v4           #nameCondition:Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    sget-object v7, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v7}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->MATCH_IGONE_CASE:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-direct {v4, p2, v7, v8}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;)V

    .restart local v4       #nameCondition:Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    goto :goto_1

    .line 1253
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #locCode:Ljava/lang/String;
    .restart local v2       #locTimeZone:Ljava/util/TimeZone;
    .restart local v3       #locTimezoneId:Ljava/lang/String;
    .restart local v6       #weatherLoc:Lcom/htc/util/weather/WeatherLocation;
    :cond_7
    :try_start_1
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 1254
    invoke-virtual {v5, v2}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1255
    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 1260
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 1265
    .end local v2           #locTimeZone:Ljava/util/TimeZone;
    .end local v3           #locTimezoneId:Ljava/lang/String;
    .end local v6           #weatherLoc:Lcom/htc/util/weather/WeatherLocation;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_9

    .line 1266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v7
.end method

.method private formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 2085
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2086
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 2088
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 2089
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 2090
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 2091
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 2093
    if-gez p1, :cond_0

    .line 2094
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 2095
    neg-int p1, p1

    .line 2100
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 2101
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 2103
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2104
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2106
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 2108
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2109
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2111
    return-object v0

    .line 2097
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getBattery(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 1830
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1831
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getPluggedIn(Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mPrePluggedIn:Z

    .line 1832
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getBatteryLevel(Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryLevel:I

    .line 1833
    return-void
.end method

.method private getDateFormat(Z)Ljava/lang/String;
    .locals 3
    .parameter "longFormat"

    .prologue
    .line 2130
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2131
    const-string v0, ""

    .line 2133
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1

    .line 2134
    if-eqz p1, :cond_2

    .line 2135
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2137
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2138
    :cond_0
    const-string v0, "EE, MMM d, yyyy"

    .line 2148
    :cond_1
    :goto_0
    return-object v0

    .line 2141
    :cond_2
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "date_format_short"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2143
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2144
    :cond_3
    const-string v0, "EE, MMM d"

    goto :goto_0
.end method

.method private getDateFormat(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 1799
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1801
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getShortDateFormat(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDateFormat:Ljava/lang/String;

    .line 1802
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getLongDateFormat(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverDateFormat:Ljava/lang/String;

    .line 1803
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->m24HourMode:Z

    .line 1804
    return-void
.end method

.method private getLocCodeFromTimeZone()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2181
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocCodeFromTimeZone, mTimeZone.getID():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 2183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocCodeFromTimeZone, mWeatherLocationString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 2185
    const/4 v3, 0x0

    .line 2186
    .local v3, timezoneId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2187
    .local v1, tempName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v4, :cond_0

    .line 2188
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 2190
    :cond_0
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationStringEn:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationStringEn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2191
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationStringEn:Ljava/lang/String;

    .line 2192
    const-string v4, ","

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2193
    .local v2, tempTz:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocCodeFromTimeZone, tempTz.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 2194
    array-length v4, v2

    if-lez v4, :cond_1

    .line 2195
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 2206
    :cond_1
    :goto_0
    const/16 v4, 0x5f

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 2208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocCodeFromTimeZone, tempName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 2209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocCodeFromTimeZone, timezoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 2211
    invoke-direct {p0, v1, v7, v3}, Lcom/htc/android/worldclock/DeskClock;->findWLInWeatherDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2212
    .local v0, locCode:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 2213
    invoke-direct {p0, v7, v1, v3}, Lcom/htc/android/worldclock/DeskClock;->findWLInWeatherDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2215
    :cond_2
    return-object v0

    .line 2198
    .end local v0           #locCode:Ljava/lang/String;
    .end local v2           #tempTz:[Ljava/lang/String;
    :cond_3
    const-string v4, "/"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2199
    .restart local v2       #tempTz:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 2200
    const/4 v4, 0x1

    aget-object v1, v2, v4

    goto :goto_0

    .line 2202
    :cond_4
    move-object v1, v3

    goto :goto_0
.end method

.method private getNetworkTimeZoneCity()Lcom/htc/util/weather/WeatherLocation;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1929
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1930
    const/4 v1, 0x0

    .line 1932
    .local v1, loc:Lcom/htc/util/weather/WeatherLocation;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.htc.htclocationservice"

    invoke-static {v4, v5}, Lcom/htc/util/weather/WeatherUtility;->loadLocationsForWorldClock(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    .line 1933
    .local v2, locs:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-eqz v4, :cond_2

    .line 1934
    aget-object v4, v2, v6

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1935
    .local v3, name:Ljava/lang/String;
    aget-object v4, v2, v6

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v0

    .line 1936
    .local v0, id:Ljava/lang/String;
    aget-object v4, v2, v6

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    .line 1937
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1938
    iput-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mNetworkTimeZoneCity:Ljava/lang/String;

    .line 1940
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1941
    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mNetworkTimeZoneId:Ljava/lang/String;

    .line 1942
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherView:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1943
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v5, 0x1008

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1945
    :cond_1
    aget-object v1, v2, v6

    .line 1947
    .end local v0           #id:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "city = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskClock;->mNetworkTimeZoneCity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskClock;->mNetworkTimeZoneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1948
    return-object v1
.end method

.method private getNextAlarm(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "settings"

    .prologue
    .line 1856
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1857
    if-nez p1, :cond_0

    .line 1858
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarmTime:J

    .line 1862
    :goto_0
    const/4 v1, 0x0

    .line 1863
    .local v1, timeString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1865
    .local v0, enabled:Z
    iget-wide v2, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarmTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1867
    iget-wide v2, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarmTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 1868
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarmTime:J

    invoke-static {v2, v3, v4}, Lcom/htc/android/worldclock/Alarms;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1869
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1873
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1874
    const/4 v0, 0x1

    .line 1881
    :goto_2
    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mAlarmTimeString:Ljava/lang/String;

    .line 1882
    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mAlarmEnabled:Z

    .line 1883
    return-void

    .line 1860
    .end local v0           #enabled:Z
    .end local v1           #timeString:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getNextAlarm(Landroid/content/SharedPreferences;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarmTime:J

    goto :goto_0

    .line 1871
    .restart local v0       #enabled:Z
    .restart local v1       #timeString:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1876
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1877
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getTimeZoneName(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4
    .parameter "tz"

    .prologue
    .line 2076
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2077
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 2078
    .local v0, daylight:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2079
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    :goto_0
    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/android/worldclock/DeskClock;->formatOffset(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2081
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2079
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getWeatheApCityName(Lcom/htc/util/weather/WeatherLocation;)Ljava/lang/String;
    .locals 3
    .parameter "weatherLoc"

    .prologue
    .line 2219
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2220
    const-string v0, ""

    .line 2221
    .local v0, cityName:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 2222
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2223
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2225
    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2231
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatheApCityName~ cityName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 2232
    return-object v0

    .line 2227
    :cond_2
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWeather(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 1807
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1809
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getTemperature(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    .line 1810
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getHighTemperature(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    .line 1811
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getLowTemperature(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    .line 1813
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getLocation(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    .line 1814
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getInformation(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherInformationString:Ljava/lang/String;

    .line 1815
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getConditionId(Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherConditionId:I

    .line 1817
    iget v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherConditionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStateRes:Lcom/htc/weather/StateResources;

    iget v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherConditionId:I

    invoke-virtual {v0, v1}, Lcom/htc/weather/StateResources;->getConditionIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1819
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1824
    sget-object v0, Lcom/htc/android/worldclock/DeskClock;->HIGH_INDICATOR:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighIndicatorString:Ljava/lang/String;

    .line 1825
    sget-object v0, Lcom/htc/android/worldclock/DeskClock;->LOW_INDICATOR:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowIndicatorString:Ljava/lang/String;

    .line 1827
    :cond_1
    return-void
.end method

.method private getWeatherDataByLocation()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1092
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1094
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    .line 1095
    .local v2, req:Lcom/htc/util/weather/WSPRequest;
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->unRegisterWeatherReceiver()V

    .line 1096
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/android/worldclock/DeskClock;->registerWeatherReceiver(Ljava/lang/String;)V

    .line 1098
    const/4 v0, 0x0

    .line 1101
    .local v0, data:Lcom/htc/util/weather/WSPData;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPData;->hasWeatherData()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return v3

    .line 1102
    :catch_0
    move-exception v1

    .line 1103
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 1110
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->updateWeatherData(Lcom/htc/util/weather/WSPData;)V

    .line 1112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,High="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,low="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1117
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getWeatherDataBySettings()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1121
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1122
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->getLocCodeFromTimeZone()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mLocCode:Ljava/lang/String;

    .line 1123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWeatherDataBySettings, loc code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/worldclock/DeskClock;->mLocCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1124
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mLocCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mLocCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return v3

    .line 1129
    :cond_1
    const/4 v2, 0x0

    .line 1132
    .local v2, req:Lcom/htc/util/weather/WSPRequest;
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mLocCode:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1137
    if-eqz v2, :cond_0

    .line 1140
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->unRegisterWeatherReceiver()V

    .line 1141
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/android/worldclock/DeskClock;->registerWeatherReceiver(Ljava/lang/String;)V

    .line 1143
    const/4 v0, 0x0

    .line 1146
    .local v0, data:Lcom/htc/util/weather/WSPData;
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1151
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPData;->hasWeatherData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1155
    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->updateWeatherData(Lcom/htc/util/weather/WSPData;)V

    .line 1157
    const/4 v3, 0x1

    goto :goto_0

    .line 1133
    .end local v0           #data:Lcom/htc/util/weather/WSPData;
    :catch_0
    move-exception v1

    .line 1134
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWeatherDataBySettings, genWSPReq e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #data:Lcom/htc/util/weather/WSPData;
    :catch_1
    move-exception v1

    .line 1148
    .restart local v1       #e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getWeatherLocByCode(Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;
    .locals 6
    .parameter "code"

    .prologue
    .line 2152
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2153
    const/4 v1, 0x0

    .line 2155
    .local v1, loc:Lcom/htc/util/weather/WeatherLocation;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2156
    const/4 v2, 0x0

    .line 2158
    .local v2, locationListCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/htc/util/weather/WeatherUtility;->getLocationListByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2159
    if-eqz v2, :cond_0

    .line 2160
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2161
    invoke-static {v2}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2167
    :cond_0
    if-eqz v2, :cond_1

    .line 2169
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2173
    :goto_0
    const/4 v2, 0x0

    .line 2177
    .end local v2           #locationListCursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v1

    .line 2170
    .restart local v2       #locationListCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 2171
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWeatherLocByCode~ close cursor e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 2164
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2165
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWeatherLocByCode~ e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2167
    if-eqz v2, :cond_1

    .line 2169
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2173
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 2170
    :catch_2
    move-exception v0

    .line 2171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWeatherLocByCode~ close cursor e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 2167
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 2169
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2173
    :goto_3
    const/4 v2, 0x0

    :cond_2
    throw v3

    .line 2170
    :catch_3
    move-exception v0

    .line 2171
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWeatherLocByCode~ close cursor e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private handleBatteryUpdate(II)V
    .locals 3
    .parameter "plugStatus"
    .parameter "batteryLevel"

    .prologue
    const/4 v1, 0x1

    .line 580
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 581
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    :cond_0
    move v0, v1

    .line 582
    .local v0, pluggedIn:Z
    :goto_0
    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mPluggedIn:Z

    if-eq v0, v2, :cond_1

    .line 583
    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->setWakeLock(Z)V

    .line 585
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mPluggedIn:Z

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryLevel:I

    if-ne p2, v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mPrePluggedIn:Z

    if-eq v0, v2, :cond_3

    .line 586
    :cond_2
    iput p2, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryLevel:I

    .line 587
    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mPluggedIn:Z

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mPrePluggedIn:Z

    .line 588
    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mPrePluggedIn:Z

    invoke-direct {p0, v2}, Lcom/htc/android/worldclock/DeskClock;->refreshBattery(Z)V

    .line 589
    if-nez v0, :cond_3

    .line 590
    iput-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mShowColon:Z

    .line 591
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshColon()V

    .line 594
    :cond_3
    return-void

    .line 581
    .end local v0           #pluggedIn:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 1626
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1627
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeskClock"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1628
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1629
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mLooper:Landroid/os/Looper;

    .line 1630
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$12;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/DeskClock$12;-><init>(Lcom/htc/android/worldclock/DeskClock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    .line 1653
    return-void
.end method

.method private initRefresh()V
    .locals 1

    .prologue
    .line 1769
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1770
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshNextAlarm()V

    .line 1771
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshDate()V

    .line 1773
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v0, :cond_0

    .line 1779
    :goto_0
    return-void

    .line 1777
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->updateWeatherDisplay()V

    .line 1778
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mPrePluggedIn:Z

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->refreshBattery(Z)V

    goto :goto_0
.end method

.method private initRegister()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 927
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 928
    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 958
    :goto_0
    return-void

    .line 933
    :cond_0
    new-instance v2, Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;

    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;-><init>(Lcom/htc/android/worldclock/DeskClock;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChangeObserver:Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;

    .line 934
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChangeObserver:Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;

    if-eqz v2, :cond_1

    .line 935
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChangeObserver:Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 937
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChangeObserver:Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 940
    sget-object v2, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "location"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 941
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "com.htc.htclocationservice"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 942
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChangeObserver:Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 947
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    new-instance v2, Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    iput-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;

    .line 949
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;

    if-eqz v2, :cond_2

    .line 950
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 954
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 955
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0, v6, v6}, Lcom/htc/android/worldclock/DeskClock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private initRegisterAndSchedule()V
    .locals 2

    .prologue
    .line 810
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 811
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 821
    :goto_0
    return-void

    .line 814
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v1, "android.intent.action.UMS_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string v1, "com.htc.intent.action.next_alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/worldclock/DeskClock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private initRes()V
    .locals 3

    .prologue
    .line 1541
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1542
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1543
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/android/worldclock/DeskClock;->CURRENT:Ljava/lang/String;

    .line 1544
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/android/worldclock/DeskClock;->DEGREE:Ljava/lang/String;

    .line 1545
    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/android/worldclock/DeskClock;->HIGH_INDICATOR:Ljava/lang/String;

    .line 1546
    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/android/worldclock/DeskClock;->LOW_INDICATOR:Ljava/lang/String;

    .line 1547
    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mBtnWeather:Landroid/graphics/drawable/Drawable;

    .line 1548
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mBtnWeather:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1549
    return-void
.end method

.method private initRestoreUI()V
    .locals 3

    .prologue
    .line 1747
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1748
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1754
    :goto_0
    return-void

    .line 1751
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1752
    .local v0, c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->m24HourMode:Z

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/DeskDigitalClock;->set24HourMode(Z)V

    .line 1753
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->updateTime(Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method private initRestoreView(Landroid/view/View;)V
    .locals 4
    .parameter "restore"

    .prologue
    const/4 v3, 0x0

    .line 1311
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1313
    const v1, 0x7f0b0030

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDate:Landroid/widget/TextView;

    .line 1315
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDate:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1316
    const v1, 0x7f0b0027

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    .line 1318
    const v1, 0x7f0b0036

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperature:Landroid/widget/TextView;

    .line 1319
    const v1, 0x7f0b0038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperature:Landroid/widget/TextView;

    .line 1320
    const v1, 0x7f0b003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowTemperature:Landroid/widget/TextView;

    .line 1321
    const v1, 0x7f0b0037

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighIndicator:Landroid/widget/TextView;

    .line 1322
    const v1, 0x7f0b0039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowIndicator:Landroid/widget/TextView;

    .line 1323
    const v1, 0x7f0b0034

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocation:Landroid/widget/TextView;

    .line 1324
    const v1, 0x7f0b0035

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherInformation:Landroid/widget/TextView;

    .line 1326
    const v1, 0x7f0b003b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherIcon:Landroid/widget/ImageView;

    .line 1327
    const v1, 0x7f0b0031

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    .line 1328
    const v1, 0x7f0b0032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mAlarmIcon:Landroid/widget/ImageView;

    .line 1330
    const v1, 0x7f0b0026

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDockModeButton:Landroid/widget/ImageButton;

    .line 1331
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDockModeButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mDockModeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1333
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1334
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.action.DESK_LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDockModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1341
    :goto_0
    const v1, 0x7f0b0033

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherView:Landroid/view/View;

    .line 1342
    const v1, 0x7f0b0025

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherNoDataTextView:Landroid/widget/TextView;

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location Service status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/DeskClock;->isUseWirelessNetworks(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1344
    const v1, 0x7f0b003c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherDisable:Landroid/view/View;

    .line 1345
    const v1, 0x7f0b003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTurnOnLocServiceView:Landroid/view/View;

    .line 1346
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTurnOnLocServiceView:Landroid/view/View;

    new-instance v2, Lcom/htc/android/worldclock/DeskClock$6;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/DeskClock$6;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1354
    return-void

    .line 1338
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDockModeButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private initSaverUI()V
    .locals 3

    .prologue
    .line 1757
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1758
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1766
    :goto_0
    return-void

    .line 1762
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1763
    .local v0, c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->m24HourMode:Z

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/DeskDigitalClock;->set24HourMode(Z)V

    .line 1764
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 1765
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverColon:Landroid/widget/ImageView;

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private initSaverView(Landroid/view/View;)V
    .locals 1
    .parameter "saver"

    .prologue
    .line 1393
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1394
    const v0, 0x7f0b0030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverDate:Landroid/widget/TextView;

    .line 1395
    const v0, 0x7f0b0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverNextAlarm:Landroid/widget/TextView;

    .line 1396
    const v0, 0x7f0b0032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverAlarmIcon:Landroid/widget/ImageView;

    .line 1397
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1398
    return-void
.end method

.method private initTimer()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x7d0

    const-wide/32 v7, 0xea60

    .line 734
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 736
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSecondTimer:Ljava/util/Timer;

    .line 737
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$SecondTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/DeskClock$SecondTask;-><init>(Lcom/htc/android/worldclock/DeskClock;Lcom/htc/android/worldclock/DeskClock$1;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSecondTask:Lcom/htc/android/worldclock/DeskClock$SecondTask;

    .line 738
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSecondTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSecondTask:Lcom/htc/android/worldclock/DeskClock$SecondTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    rem-long/2addr v2, v4

    sub-long v2, v9, v2

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mMinuteTimer:Ljava/util/Timer;

    .line 746
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$MinuteTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/DeskClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/DeskClock;Lcom/htc/android/worldclock/DeskClock$1;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mMinuteTask:Lcom/htc/android/worldclock/DeskClock$MinuteTask;

    .line 747
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mMinuteTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mMinuteTask:Lcom/htc/android/worldclock/DeskClock$MinuteTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    rem-long/2addr v2, v4

    sub-long v2, v7, v2

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 752
    :goto_1
    return-void

    .line 740
    :catch_0
    move-exception v6

    .line 741
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialiaze mSecondTimer fail,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 750
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialiaze mMinuteTask fail,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isUseWirelessNetworks(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1274
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadFormatAndScale()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 783
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 784
    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 807
    :goto_0
    return-void

    .line 790
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/android/worldclock/DeskClock;->getDateFormat(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mDateFormat:Ljava/lang/String;

    .line 791
    invoke-direct {p0, v3}, Lcom/htc/android/worldclock/DeskClock;->getDateFormat(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverDateFormat:Ljava/lang/String;

    .line 795
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/weather/WSPUtility;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, tempUnit:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 797
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mCentigrate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v1           #tempUnit:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCentigrate is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/worldclock/DeskClock;->mCentigrate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    .restart local v1       #tempUnit:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mCentigrate:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 801
    .end local v1           #tempUnit:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "get getTemperatureUnit fail"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadPreference()V
    .locals 4

    .prologue
    .line 1782
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1783
    sget-object v2, Lcom/htc/android/worldclock/DeskClock;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1784
    :try_start_0
    const-string v1, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/htc/android/worldclock/DeskClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1786
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->getNextAlarm(Landroid/content/SharedPreferences;)V

    .line 1787
    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->getDateFormat(Landroid/content/SharedPreferences;)V

    .line 1789
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v1, :cond_0

    .line 1790
    monitor-exit v2

    .line 1796
    :goto_0
    return-void

    .line 1793
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->getWeather(Landroid/content/SharedPreferences;)V

    .line 1794
    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->getBattery(Landroid/content/SharedPreferences;)V

    .line 1795
    monitor-exit v2

    goto :goto_0

    .end local v0           #settings:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private moveScreenSaver()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 354
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 355
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStopped:Z

    if-eqz v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/htc/android/worldclock/DeskClock;->moveScreenSaverTo(IIZ)V

    goto :goto_0
.end method

.method private moveScreenSaverTo(IIZ)V
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "moveMessage"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, -0x2

    .line 371
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 372
    iget-boolean v4, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    if-nez v4, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const v5, 0x7f0b002f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 378
    .local v3, time_date:Landroid/view/View;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 379
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 381
    if-ltz p1, :cond_2

    if-gez p2, :cond_3

    .line 382
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 383
    .local v2, myWidth:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 384
    .local v1, myHeight:I
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mRNG:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int p1, v4

    .line 385
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mRNG:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int p2, v4

    .line 388
    .end local v1           #myHeight:I
    .end local v2           #myWidth:I
    :cond_3
    const-string v4, "screen saver: %d: jumping to (%d,%d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 391
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v4, v9, v9, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    if-eqz p3, :cond_0

    .line 399
    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v5, 0x2001

    const-wide/32 v6, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    rem-long/2addr v8, v10

    sub-long v8, v10, v8

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private onAlarmUpdate()V
    .locals 2

    .prologue
    .line 1847
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1848
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1853
    :goto_0
    return-void

    .line 1851
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->getNextAlarm(Landroid/content/SharedPreferences;)V

    .line 1852
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private onCityUpdate()V
    .locals 1

    .prologue
    .line 1837
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1838
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1843
    :goto_0
    return-void

    .line 1842
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getAllDisplayTimeZone()V

    goto :goto_0
.end method

.method private onDoResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 755
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 756
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 760
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStopped:Z

    .line 762
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->loadFormatAndScale()V

    .line 763
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->setCurrentDay()V

    .line 764
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mResReady:Z

    .line 765
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 766
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->initRegisterAndSchedule()V

    .line 767
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mInit:Z

    goto :goto_0
.end method

.method private onInitParent()V
    .locals 2

    .prologue
    .line 1657
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1658
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1672
    :goto_0
    return-void

    .line 1662
    :cond_0
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStateRes:Lcom/htc/weather/StateResources;

    .line 1663
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStateRes:Lcom/htc/weather/StateResources;

    invoke-virtual {v0, p0}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 1665
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    .line 1667
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->initRes()V

    .line 1669
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->loadPreference()V

    .line 1670
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private onRemains()V
    .locals 3

    .prologue
    .line 1728
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1729
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1744
    :goto_0
    return-void

    .line 1734
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->initRegister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    .line 1738
    .local v0, tabs:Lcom/htc/android/worldclock/WorldClockTabControl;
    if-eqz v0, :cond_1

    .line 1739
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/WorldClockTabControl;->setTabCallback(Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;)V

    .line 1741
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->setCurrentDay()V

    .line 1742
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->m24HourMode:Z

    .line 1743
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1735
    .end local v0           #tabs:Lcom/htc/android/worldclock/WorldClockTabControl;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private refreshAlarm()V
    .locals 2

    .prologue
    .line 646
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 647
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStopped:Z

    if-eqz v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 654
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mResReady:Z

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private refreshAll()V
    .locals 1

    .prologue
    .line 705
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 706
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshDate()V

    .line 707
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshAlarm()V

    .line 708
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mPrePluggedIn:Z

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->refreshBattery(Z)V

    .line 709
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshWeather()V

    .line 710
    return-void
.end method

.method private refreshBattery(Z)V
    .locals 5
    .parameter "pluggedIn"

    .prologue
    const/4 v4, 0x0

    .line 597
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 598
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 608
    :goto_0
    return-void

    .line 602
    :cond_0
    if-eqz p1, :cond_1

    .line 603
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    const v1, 0x7f080079

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/worldclock/DeskClock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshColon()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 627
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStopped:Z

    if-eqz v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mRestoreView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 631
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mShowColon:Z

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mColon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mColon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 637
    :cond_2
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mShowColon:Z

    if-eqz v0, :cond_3

    .line 638
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverColon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 640
    :cond_3
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverColon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshDate()V
    .locals 3

    .prologue
    .line 611
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 612
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    if-nez v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDate:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDateFormat:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverDate:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverDateFormat:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshInit()V
    .locals 3

    .prologue
    .line 1676
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1677
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1693
    :goto_0
    return-void

    .line 1682
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1683
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1684
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1688
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mRestoreView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/htc/android/worldclock/DeskClock;->initRestoreView(Landroid/view/View;)V

    .line 1689
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->initRestoreUI()V

    .line 1690
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->initRefresh()V

    .line 1692
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v2, 0x1007

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private refreshInitSavers()V
    .locals 2

    .prologue
    .line 1713
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1714
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1724
    :goto_0
    return-void

    .line 1718
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->setupSaverViews()V

    .line 1720
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->initSaverView(Landroid/view/View;)V

    .line 1721
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->initSaverUI()V

    .line 1723
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private refreshNextAlarm()V
    .locals 3

    .prologue
    .line 662
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 663
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStopped:Z

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 669
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mInit:Z

    if-eqz v0, :cond_0

    .line 672
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mResReady:Z

    if-eqz v0, :cond_0

    .line 676
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mAlarmEnabled:Z

    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v0, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mAlarmTimeString:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/htc/android/worldclock/DeskClock;->setNextAlarmInfo(ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private refreshRemains()V
    .locals 2

    .prologue
    .line 1697
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1698
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mRefreshRemains:Z

    if-nez v0, :cond_0

    .line 1706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mRefreshRemains:Z

    .line 1708
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mInitSaverCallback:Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/WorldClockTabControl;->setInitSaverCallback(Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;)V

    .line 1709
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/WorldClockTabControl;->checkRemainTabsAndSavers()V

    goto :goto_0
.end method

.method private refreshResume()V
    .locals 1

    .prologue
    .line 772
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 773
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 778
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshAll()V

    .line 779
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mPluggedIn:Z

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->setWakeLock(Z)V

    goto :goto_0
.end method

.method private refreshWeather()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 518
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 521
    invoke-static {p0}, Lcom/htc/android/worldclock/DeskClock;->isUseWirelessNetworks(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherDisable:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherDisable:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherNoDataTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    :goto_0
    return-void

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherDisable:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 531
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherDisable:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 536
    :cond_4
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/android/worldclock/DeskClock;->scheduleWeatherFetchDelayed(J)V

    .line 537
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->updateWeatherDisplay()V

    goto :goto_0
.end method

.method private registerWeatherReceiver(Ljava/lang/String;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 961
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerWeatherReceiver , code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 964
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 965
    .local v0, statusIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.sync.provider.weather.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/worldclock/DeskClock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 968
    return-void
.end method

.method private resetScreenSaverPosition(Z)V
    .locals 4
    .parameter "moveMessage"

    .prologue
    .line 362
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 364
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mRestoreView:Landroid/view/View;

    const v3, 0x7f0b002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 365
    .local v1, oldTimeDate:Landroid/view/View;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 366
    .local v0, oldLoc:[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 367
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v2, v3, p1}, Lcom/htc/android/worldclock/DeskClock;->moveScreenSaverTo(IIZ)V

    .line 368
    return-void
.end method

.method private resetWeatherData()V
    .locals 1

    .prologue
    .line 1613
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1615
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    .line 1616
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    .line 1617
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    .line 1618
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighIndicatorString:Ljava/lang/String;

    .line 1619
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowIndicatorString:Ljava/lang/String;

    .line 1620
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherInformationString:Ljava/lang/String;

    .line 1621
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherConditionId:I

    .line 1622
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    .line 1623
    return-void
.end method

.method private restoreScreen(Z)V
    .locals 5
    .parameter "refresh"

    .prologue
    const/4 v4, 0x0

    .line 412
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 413
    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    if-nez v2, :cond_0

    .line 440
    :goto_0
    return-void

    .line 416
    :cond_0
    const-string v2, "restoreScreen"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 417
    iput-boolean v4, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    iput-boolean v4, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    .line 420
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 421
    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v2, v2, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    if-eqz v2, :cond_3

    const/16 v0, 0x7f

    .line 427
    .local v0, alpha:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 429
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mRestoreView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 432
    invoke-direct {p0, v4}, Lcom/htc/android/worldclock/DeskClock;->doDim(Z)V

    .line 434
    if-eqz p1, :cond_2

    .line 435
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshAll()V

    .line 437
    :cond_2
    invoke-direct {p0, v4}, Lcom/htc/android/worldclock/DeskClock;->setNightMode(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/WorldClockTabControl;->initScreenOrientation()V

    .line 439
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v3, 0x2001

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 426
    .end local v0           #alpha:I
    :cond_3
    const/16 v0, 0xff

    goto :goto_1
.end method

.method private savePreference()V
    .locals 4

    .prologue
    .line 1044
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1045
    sget-object v2, Lcom/htc/android/worldclock/DeskClock;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1046
    :try_start_0
    const-string v1, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/htc/android/worldclock/DeskClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1049
    .local v0, settings:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDateFormat:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDateFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setShortDateFormat(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverDateFormat:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverDateFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setLongDateFormat(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1057
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1058
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTemperature(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1061
    :cond_2
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1062
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setHighTemperature(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1066
    :cond_3
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1067
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setLowTemperature(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1071
    :cond_4
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1072
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1075
    :cond_5
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherInformationString:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1076
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherInformationString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setInformation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1079
    :cond_6
    iget v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherConditionId:I

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setConditionId(Landroid/content/SharedPreferences;I)V

    .line 1081
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mPluggedIn:Z

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setPluggedIn(Landroid/content/SharedPreferences;Z)V

    .line 1082
    iget v1, p0, Lcom/htc/android/worldclock/DeskClock;->mBatteryLevel:I

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setBatteryLevel(Landroid/content/SharedPreferences;I)V

    .line 1083
    monitor-exit v2

    .line 1084
    return-void

    .line 1083
    .end local v0           #settings:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 444
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 445
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v1, :cond_0

    .line 470
    :goto_0
    return-void

    .line 448
    :cond_0
    const-string v1, "saveScreen"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 450
    iput-boolean v3, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    iput-boolean v3, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    .line 451
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/WorldClockTabControl;->setFullScreen()V

    .line 454
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v1, v2, v2}, Lcom/htc/android/worldclock/WorldClockTabControl;->setWindowTint(ZZ)V

    .line 460
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mRestoreView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v1, v1, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    invoke-direct {p0, v1}, Lcom/htc/android/worldclock/DeskClock;->setSaverColor(Z)V

    .line 464
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshDate()V

    .line 465
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshAlarm()V

    .line 467
    invoke-direct {p0, v3}, Lcom/htc/android/worldclock/DeskClock;->setNightMode(Z)V

    .line 468
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/DeskClock;->setRequestedOrientation(I)V

    .line 469
    invoke-direct {p0, v3}, Lcom/htc/android/worldclock/DeskClock;->resetScreenSaverPosition(Z)V

    goto :goto_0
.end method

.method private scheduleWeatherFetchDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 479
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 480
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherFetchScheduled:Z

    if-eqz v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduling weather fetch message for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms from now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherFetchScheduled:Z

    .line 488
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setNextAlarmInfo(ZZLjava/lang/String;)V
    .locals 7
    .parameter "enabled"
    .parameter "dimmed"
    .parameter "timeString"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 681
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 683
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    if-nez v1, :cond_1

    .line 684
    iget-wide v1, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarmTime:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    const v2, -0x8c868d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    :goto_0
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDeskClockResUtils:Lcom/htc/android/worldclock/DeskClockResUtils;

    invoke-virtual {v1, p1, p3}, Lcom/htc/android/worldclock/DeskClockResUtils;->alarmDisplay(ZLjava/lang/String;)V

    .line 702
    :goto_1
    return-void

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 691
    :cond_1
    if-eqz p2, :cond_2

    const v0, -0x8f8f90

    .line 692
    .local v0, color:I
    :cond_2
    iget-wide v1, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarmTime:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_3

    .line 693
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverAlarmIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    :goto_2
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDeskClockResUtils:Lcom/htc/android/worldclock/DeskClockResUtils;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p3}, Lcom/htc/android/worldclock/DeskClockResUtils;->alarmDisplay(Landroid/app/Activity;ZLjava/lang/String;)V

    goto :goto_1

    .line 696
    :cond_3
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 697
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverAlarmIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setNightMode(Z)V
    .locals 2
    .parameter "night"

    .prologue
    .line 473
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 474
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/DeskClock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 475
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setNightMode(Z)V

    .line 476
    return-void
.end method

.method private setSaverColor(Z)V
    .locals 10
    .parameter "dimmed"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const v3, -0x8f8f90

    const v7, 0x7f0b0032

    const v6, 0x7f0b0031

    .line 1414
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1415
    if-eqz p1, :cond_0

    const/16 v0, 0x7f

    .line 1416
    .local v0, alpha:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const v4, 0x7f0b0029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1417
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const v4, 0x7f0b002a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1418
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const v4, 0x7f0b002b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1419
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const v4, 0x7f0b002c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1420
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const v4, 0x7f0b002d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1421
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1423
    if-eqz p1, :cond_1

    move v1, v3

    .line 1424
    .local v1, color:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const v4, 0x7f0b000d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1425
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1426
    iget-wide v2, p0, Lcom/htc/android/worldclock/DeskClock;->mNextAlarmTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 1427
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1428
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1434
    :goto_3
    return-void

    .line 1415
    .end local v0           #alpha:I
    .end local v1           #color:I
    :cond_0
    const/16 v0, 0xff

    goto/16 :goto_0

    .line 1423
    .restart local v0       #alpha:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 1424
    .restart local v1       #color:I
    :cond_2
    const v3, -0x3b3b3c

    goto :goto_2

    .line 1430
    :cond_3
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1431
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1432
    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method private setScreenSaverTimeOut()V
    .locals 7

    .prologue
    const-wide/32 v5, 0x927c0

    const/16 v4, 0x2000

    const/4 v3, 0x0

    .line 824
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 825
    iget v0, p0, Lcom/htc/android/worldclock/DeskClock;->mIdleTimeoutEpoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/worldclock/DeskClock;->mIdleTimeoutEpoch:I

    .line 827
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mPrevState:Z

    if-eqz v0, :cond_2

    .line 828
    iput-boolean v3, p0, Lcom/htc/android/worldclock/DeskClock;->mPrevState:Z

    .line 830
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    if-eqz v0, :cond_0

    .line 831
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->m24HourMode:Z

    .line 833
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->refreshRemains()V

    .line 834
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/android/worldclock/DeskClock;->mIdleTimeoutEpoch:I

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 850
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v0, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 839
    invoke-direct {p0, v3}, Lcom/htc/android/worldclock/DeskClock;->doDim(Z)V

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/android/worldclock/DeskClock;->mIdleTimeoutEpoch:I

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/android/worldclock/DeskClock;->mIdleTimeoutEpoch:I

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setWakeLock(Z)V
    .locals 2
    .parameter "hold"

    .prologue
    .line 406
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "hold"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ing wake lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/WorldClockTabControl;->setWakeLock(Z)V

    .line 409
    return-void

    .line 407
    :cond_0
    const-string v0, " releas"

    goto :goto_0
.end method

.method private setupRestoreViews()V
    .locals 2

    .prologue
    .line 1502
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1503
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mRestoreView:Landroid/view/View;

    .line 1504
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mRestoreView:Landroid/view/View;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/DeskDigitalClock;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    .line 1505
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/DeskDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mColon:Landroid/widget/ImageView;

    .line 1506
    return-void
.end method

.method private setupSaverViews()V
    .locals 3

    .prologue
    const v2, 0x7f0b0028

    .line 1509
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1510
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    .line 1511
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/DeskDigitalClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/DeskDigitalClock;->setSaverMode(Z)V

    .line 1512
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/DeskDigitalClock;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    .line 1513
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/DeskDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverColon:Landroid/widget/ImageView;

    .line 1514
    return-void
.end method

.method private startLocSettingActivity()V
    .locals 3

    .prologue
    .line 1280
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1282
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1285
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Launch Location Setting Failed"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unInitRegister()V
    .locals 2

    .prologue
    .line 979
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChangeObserver:Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 983
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 984
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 988
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 991
    :goto_1
    return-void

    .line 989
    :catch_0
    move-exception v0

    goto :goto_1

    .line 985
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private unInitRegisterAndSchedule()V
    .locals 1

    .prologue
    .line 882
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unInitTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 890
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSecondTask:Lcom/htc/android/worldclock/DeskClock$SecondTask;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClock$SecondTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 895
    :goto_0
    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSecondTask:Lcom/htc/android/worldclock/DeskClock$SecondTask;

    .line 898
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mMinuteTask:Lcom/htc/android/worldclock/DeskClock$MinuteTask;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClock$MinuteTask;->cancel()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 901
    :goto_1
    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mMinuteTask:Lcom/htc/android/worldclock/DeskClock$MinuteTask;

    .line 904
    :try_start_2
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mSecondTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 907
    :goto_2
    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSecondTimer:Ljava/util/Timer;

    .line 910
    :try_start_3
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mMinuteTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 913
    :goto_3
    iput-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mMinuteTimer:Ljava/util/Timer;

    .line 914
    return-void

    .line 911
    :catch_0
    move-exception v0

    goto :goto_3

    .line 905
    :catch_1
    move-exception v0

    goto :goto_2

    .line 899
    :catch_2
    move-exception v0

    goto :goto_1

    .line 893
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private unRegisterWeatherReceiver()V
    .locals 1

    .prologue
    .line 971
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 973
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :goto_0
    return-void

    .line 974
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unscheduleWeatherFetch()V
    .locals 1

    .prologue
    .line 492
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherFetchScheduled:Z

    .line 494
    return-void
.end method

.method private updateWeatherData(Lcom/htc/util/weather/WSPData;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 1161
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1162
    const/4 v3, 0x0

    .line 1164
    .local v3, index:I
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getLastUpdate()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/htc/android/worldclock/WeatherUtils;->isOverdue(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1165
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/worldclock/WeatherUtils;->getDayDiff(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1167
    if-gez v3, :cond_3

    .line 1168
    const/4 v3, 0x0

    .line 1174
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 1176
    iget-boolean v6, p0, Lcom/htc/android/worldclock/DeskClock;->mCentigrate:Z

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurTempC()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    .line 1178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/worldclock/DeskClock;->DEGREE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    .line 1183
    :cond_1
    :try_start_0
    iget-boolean v6, p0, Lcom/htc/android/worldclock/DeskClock;->mCentigrate:Z

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v1

    .line 1185
    .local v1, highTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/worldclock/DeskClock;->DEGREE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    .line 1187
    iget-boolean v6, p0, Lcom/htc/android/worldclock/DeskClock;->mCentigrate:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v5

    .line 1189
    .local v5, lowTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/worldclock/DeskClock;->DEGREE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    .line 1191
    if-lez v3, :cond_2

    .line 1192
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    .line 1195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/worldclock/DeskClock;->DEGREE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    .line 1199
    :cond_2
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v4

    .line 1200
    .local v4, information:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v2

    .line 1201
    .local v2, id:Ljava/lang/String;
    :goto_4
    iget-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mStateRes:Lcom/htc/weather/StateResources;

    invoke-virtual {v6, v2}, Lcom/htc/weather/StateResources;->getConditionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherInformationString:Ljava/lang/String;

    .line 1202
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherConditionId:I

    .line 1203
    iget-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mStateRes:Lcom/htc/weather/StateResources;

    iget v7, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherConditionId:I

    invoke-virtual {v6, v7}, Lcom/htc/weather/StateResources;->getConditionIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1204
    iget-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    sget-object v6, Lcom/htc/android/worldclock/DeskClock;->HIGH_INDICATOR:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighIndicatorString:Ljava/lang/String;

    .line 1211
    sget-object v6, Lcom/htc/android/worldclock/DeskClock;->LOW_INDICATOR:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowIndicatorString:Ljava/lang/String;

    .line 1214
    iget-object v6, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v7, 0x1001

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1215
    .end local v1           #highTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #information:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #lowTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    return-void

    .line 1169
    :cond_3
    const/4 v6, 0x4

    if-le v3, v6, :cond_0

    .line 1170
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 1176
    :cond_4
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurTempF()I

    move-result v6

    goto/16 :goto_1

    .line 1183
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_2

    .line 1187
    .restart local v1       #highTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_3

    .line 1200
    .restart local v4       #information:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #lowTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v6

    goto :goto_4

    .line 1206
    .end local v1           #highTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #information:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #lowTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1207
    .local v0, e:Ljava/lang/Exception;
    goto :goto_5
.end method

.method private updateWeatherDisplay()V
    .locals 3

    .prologue
    .line 542
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 543
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeZone:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 549
    .local v0, c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->m24HourMode:Z

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/DeskDigitalClock;->set24HourMode(Z)V

    .line 550
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 551
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    if-eqz v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    iget-boolean v2, p0, Lcom/htc/android/worldclock/DeskClock;->m24HourMode:Z

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/DeskDigitalClock;->set24HourMode(Z)V

    .line 553
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mSaverTime:Lcom/htc/android/worldclock/DeskDigitalClock;

    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 557
    .end local v0           #c:Ljava/util/Calendar;
    :cond_2
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperature:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 561
    iget v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherConditionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 562
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperature:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherTemperatureString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperature:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowTemperature:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherHighIndicatorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLowIndicatorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocation:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherInformation:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherInformationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherNoDataTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 572
    :cond_3
    invoke-static {p0}, Lcom/htc/android/worldclock/DeskClock;->isUseWirelessNetworks(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherNoDataTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1583
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1584
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mResReady:Z

    if-nez v1, :cond_1

    .line 1585
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1607
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1588
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1607
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1596
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    if-nez v1, :cond_0

    .line 1600
    :sswitch_2
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDockModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1601
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 1604
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1588
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x52 -> :sswitch_2
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 1438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1447
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1440
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v0, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v1, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v1, v1, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    .line 1442
    invoke-direct {p0, v2}, Lcom/htc/android/worldclock/DeskClock;->doDim(Z)V

    goto :goto_0

    .line 1441
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected getAllDisplayTimeZone()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1886
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1887
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->getNetworkTimeZoneCity()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 1891
    .local v0, curLoc:Lcom/htc/util/weather/WeatherLocation;
    const/4 v2, 0x1

    .line 1892
    .local v2, needUpdate:Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    if-eqz v3, :cond_0

    .line 1893
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1895
    const/4 v2, 0x0

    .line 1898
    :cond_0
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v3, :cond_1

    .line 1899
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1900
    const/4 v2, 0x0

    .line 1904
    :cond_1
    iget-boolean v3, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeChanged:Z

    if-eqz v3, :cond_2

    .line 1905
    iput-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeChanged:Z

    .line 1906
    const/4 v2, 0x1

    .line 1907
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->setCurrentDay()V

    .line 1910
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllDisplayTimeZone, needUpdate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1911
    if-nez v2, :cond_3

    .line 1926
    :goto_0
    return-void

    .line 1916
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->resetWeatherData()V

    .line 1918
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mNetworkTimeZoneCity:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mNetworkTimeZoneId:Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 1919
    .local v1, locationExist:Z
    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/DeskClock;->setCurrentHomeTime(Z)V

    .line 1920
    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/DeskClock;->setCurrentHomeWeather(Z)V

    .line 1921
    if-eqz v1, :cond_5

    .line 1922
    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    goto :goto_0

    .line 1924
    :cond_5
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mLocCode:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/android/worldclock/DeskClock;->getWeatherLocByCode(Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    goto :goto_0
.end method

.method public launchLocSetting()V
    .locals 4

    .prologue
    .line 1302
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1303
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->startLocSettingActivity()V

    .line 1304
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mCheckSettingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1306
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock;->mCheckSettingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1308
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1452
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1453
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1454
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    if-nez v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDeskClockResUtils:Lcom/htc/android/worldclock/DeskClockResUtils;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClockResUtils;->resetLayout()V

    .line 1459
    :goto_0
    return-void

    .line 1457
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->resetScreenSaverPosition(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 1483
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1484
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onCreate(Landroid/os/Bundle;)V

    .line 1485
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1487
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DeskClock;->checkIntentAndState(Landroid/os/Bundle;)V

    .line 1489
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->setContentView(I)V

    .line 1490
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/WorldClockTabControl;->initBackground()V

    .line 1492
    new-instance v0, Lcom/htc/android/worldclock/DeskClockResUtils;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClockResUtils;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDeskClockResUtils:Lcom/htc/android/worldclock/DeskClockResUtils;

    .line 1493
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDeskClockResUtils:Lcom/htc/android/worldclock/DeskClockResUtils;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClockResUtils;->initResources()V

    .line 1494
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->setupRestoreViews()V

    .line 1496
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->initHandler()V

    .line 1497
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getTouching()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mTouching:[Z

    .line 1498
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1499
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 995
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 996
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mDestroyed:Z

    .line 999
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1000
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1002
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1003
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1005
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1006
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1007

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1007
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1008
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1009
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1013
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1014
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1015
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1018
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1022
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->unInitRegister()V

    .line 1023
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->unRegisterWeatherReceiver()V

    .line 1024
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->unInitRegisterAndSchedule()V

    .line 1026
    iput-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mContentResolver:Landroid/content/ContentResolver;

    .line 1027
    iput-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChangeObserver:Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;

    .line 1028
    iput-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;

    .line 1029
    iput-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mTimeZone:Ljava/util/TimeZone;

    .line 1030
    iput-object v2, p0, Lcom/htc/android/worldclock/DeskClock;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    .line 1032
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/DeskClock$4;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/DeskClock$4;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1039
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onDestroy()V

    .line 1040
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1041
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1564
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1565
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1566
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v0, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    if-eqz v0, :cond_3

    .line 1568
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v0, :cond_1

    .line 1569
    invoke-direct {p0, v1}, Lcom/htc/android/worldclock/DeskClock;->restoreScreen(Z)V

    .line 1571
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v0, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 1572
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    .line 1573
    invoke-direct {p0, v1}, Lcom/htc/android/worldclock/DeskClock;->doDim(Z)V

    :cond_2
    move v0, v1

    .line 1578
    :goto_0
    return v0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/htc/android/worldclock/CloseMenuIME;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 854
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 855
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mStopped:Z

    .line 861
    invoke-direct {p0, v2}, Lcom/htc/android/worldclock/DeskClock;->restoreScreen(Z)V

    .line 864
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 866
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    iput-boolean v2, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    .line 875
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->unInitRegisterAndSchedule()V

    .line 876
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->unscheduleWeatherFetch()V

    .line 877
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->unInitTimer()V

    .line 878
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onPause()V

    .line 879
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 719
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 720
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onResume()V

    .line 722
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->setScreenSaverTimeOut()V

    .line 724
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DeskClock;->doDim(Z)V

    .line 725
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->initTimer()V

    .line 727
    iget-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->mInit:Z

    if-nez v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 730
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->onDoResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1553
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1554
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState, mScreenSaverState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mDimmed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v0, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1558
    const-string v0, "screen_saver_mode"

    iget-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mScreenSaverState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1559
    const-string v1, "screen_dimmed"

    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v0, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1560
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 918
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 919
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 921
    iput-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mStopped:Z

    .line 922
    iput-boolean v1, p0, Lcom/htc/android/worldclock/DeskClock;->mCityChanged:Z

    .line 923
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onStop()V

    .line 924
    return-void
.end method

.method protected queryTimeZoneName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .parameter "timezoneId"

    .prologue
    .line 2029
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2030
    const/4 v0, 0x2

    new-array v13, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v13, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-object v1, v13, v0

    .line 2031
    .local v13, timeZoneName:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timezoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2032
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v12, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2033
    .local v12, systemLocale:Ljava/util/Locale;
    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 2034
    .local v11, systemLang:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    .line 2035
    .local v10, systemCountry:Ljava/lang/String;
    const-string v0, "zh"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    const-string v0, "CN"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2037
    const-string v11, "zh"

    .line 2047
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 2050
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/worldclock/CityInfo$LocationColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2056
    :goto_1
    if-eqz v6, :cond_4

    .line 2057
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2058
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2059
    .local v9, index:I
    const-string v0, "en"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2060
    .local v8, engIndex:I
    if-gez v9, :cond_1

    move v9, v8

    .line 2062
    :cond_1
    if-ltz v9, :cond_2

    .line 2063
    const/4 v0, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 2067
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 2069
    .end local v8           #engIndex:I
    .end local v9           #index:I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2070
    const/4 v6, 0x0

    .line 2072
    :cond_4
    return-object v13

    .line 2038
    .end local v6           #c:Landroid/database/Cursor;
    :cond_5
    const-string v0, "TW"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2039
    const-string v11, "zhTW"

    goto :goto_0

    .line 2040
    :cond_6
    const-string v0, "HK"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2041
    const-string v11, "zhTW"

    goto :goto_0

    .line 2042
    :cond_7
    const-string v0, "SG"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    const-string v11, "zh"

    goto :goto_0

    .line 2052
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2053
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "queryTimeZoneName fail"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setCurrentDay()V
    .locals 1

    .prologue
    .line 1087
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1088
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DeskClock;->m24HourMode:Z

    .line 1089
    return-void
.end method

.method protected setCurrentHomeTime(Z)V
    .locals 7
    .parameter "locationExist"

    .prologue
    const/4 v6, 0x0

    .line 1952
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1953
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1954
    .local v0, calNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 1955
    .local v2, tzNow:Ljava/util/TimeZone;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/worldclock/DeskClock;->mCurrentDay:I

    .line 1959
    const/4 v1, 0x0

    .line 1961
    .local v1, idNow:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1962
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mNetworkTimeZoneId:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/worldclock/DeskClock;->mNetworkTimeZoneCity:Ljava/lang/String;

    sget-object v5, Lcom/htc/android/worldclock/DeskClock;->CURRENT:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/htc/android/worldclock/DeskClock;->addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V

    .line 1971
    :goto_0
    return-void

    .line 1964
    :cond_0
    sget-boolean v3, Lcom/htc/android/worldclock/Global;->CHS_SKU:Z

    if-eqz v3, :cond_1

    .line 1965
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock;->mNetworkTimeZoneCity:Ljava/lang/String;

    sget-object v4, Lcom/htc/android/worldclock/DeskClock;->CURRENT:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/htc/android/worldclock/DeskClock;->addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V

    goto :goto_0

    .line 1968
    :cond_1
    const-string v3, ""

    sget-object v4, Lcom/htc/android/worldclock/DeskClock;->CURRENT:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/htc/android/worldclock/DeskClock;->addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V

    goto :goto_0
.end method

.method protected setCurrentHomeWeather(Z)V
    .locals 0
    .parameter "locationExist"

    .prologue
    .line 1974
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1976
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeskClock;->getWeatherDataByLocation()Z

    .line 1977
    return-void
.end method
