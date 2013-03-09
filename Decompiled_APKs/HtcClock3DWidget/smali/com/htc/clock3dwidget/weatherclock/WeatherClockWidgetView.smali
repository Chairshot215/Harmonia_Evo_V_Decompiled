.class public Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "WeatherClockWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;,
        Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;
    }
.end annotation


# static fields
.field static final ACTION_HIDE_WEATHER_WALLPAPER:Ljava/lang/String; = "com.htc.weatherwallpaper.service.intent.action.HIDE_WEATHER_WALLPAPER"

.field static final ACTION_SHOW_WEATHER_WALLPAPER:Ljava/lang/String; = "com.htc.weatherwallpaper.service.intent.action.SHOW_WEATHER_WALLPAPER"

.field public static final DEF_CITY:Ljava/lang/String; = "defCityCode_"

.field public static final TAG:Ljava/lang/String; = "WeatherClockWidget"

.field private static mbPlayWWPAtRosieStart:Z


# instance fields
.field private mApplication:Landroid/content/Context;

.field private mBChangeTimeZone:Z

.field private mBackIntent:Landroid/content/Intent;

.field private mBoolAppDestroy:Z

.field private mBoolAppResume:Z

.field private mClockClickListener:Landroid/view/View$OnClickListener;

.field protected mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

.field private mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFormatChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

.field private mFxControlsLand:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

.field private mFxControlsPort:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

.field private mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mInitCreate:Z

.field private mInitLock:Ljava/lang/Object;

.field private mInitPause:Z

.field private mInitResume:Z

.field private mLastResumeTime:J

.field private mLastUnLockTime:J

.field private mLock:Ljava/lang/Object;

.field private mLockScreenRec:Landroid/content/BroadcastReceiver;

.field private mLongClick:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOrientation:I

.field mPauseByAddToHome:Z

.field private mResContext:Landroid/content/Context;

.field private mResumeNotifyCaused:J

.field private mSceneLand:Lcom/htc/fusion/fx/FxScene;

.field private mScenePort:Lcom/htc/fusion/fx/FxScene;

.field private mSecureChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

.field private mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

.field private mUiWorker:Landroid/os/Handler$Callback;

.field private mViewContext:Landroid/content/Context;

.field private mWeatherClockClick:Landroid/view/View$OnClickListener;

.field private mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

.field private mWeatherListener:Lcom/htc/clock/util/location/LocationListener;

.field private mWeatherPress:Landroid/view/View;

.field private mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

.field mWidgetId:I

.field private mWorker:Landroid/os/Handler$Callback;

.field private m_bPlayingWWP:Z

.field private m_floatView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

.field private mbPlayWWPAtAdd:Z

.field private uiView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtRosieStart:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 52
    iput v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWidgetId:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mOrientation:I

    .line 61
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitCreate:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitResume:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitPause:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLock:Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_WEATHER:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    .line 186
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBChangeTimeZone:Z

    .line 187
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z

    .line 188
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z

    .line 189
    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBackIntent:Landroid/content/Intent;

    .line 192
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLongClick:Z

    .line 197
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtAdd:Z

    .line 199
    sget-object v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->NONE:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    .line 201
    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mContentResolver:Landroid/content/ContentResolver;

    .line 222
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$1;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$1;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockClickListener:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$2;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$2;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherClockClick:Landroid/view/View$OnClickListener;

    .line 779
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mPauseByAddToHome:Z

    .line 822
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWorker:Landroid/os/Handler$Callback;

    .line 1014
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiWorker:Landroid/os/Handler$Callback;

    .line 1109
    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->m_floatView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    .line 1248
    iput-wide v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResumeNotifyCaused:J

    .line 1249
    iput-wide v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLastUnLockTime:J

    .line 1250
    iput-wide v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLastResumeTime:J

    .line 1280
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->m_bPlayingWWP:Z

    .line 1352
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$5;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$5;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1364
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherListener:Lcom/htc/clock/util/location/LocationListener;

    .line 1400
    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFormatChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    .line 1401
    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSecureChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    .line 1423
    return-void
.end method

.method static synthetic access$000(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->hasNonUiMessage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherListener:Lcom/htc/clock/util/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLongClick:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLongClick:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->checkToPlayWWP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->stateToLog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->myOnNotifyWidgetPause(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->initData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->playWWPAtFirstTime()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBChangeTimeZone:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBChangeTimeZone:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->doConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mApplication:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getCityCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->launchWeatherClockAp()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->doActivityResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->enableLocationProvider()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getPosition()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtAdd:Z

    return p1
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-boolean p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtRosieStart:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;ZLandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->switchToNewCity(ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->uiView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->m_bPlayingWWP:Z

    return p1
.end method

.method static synthetic access$502(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;)Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    return-object p1
.end method

.method static synthetic access$602(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResumeNotifyCaused:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLastResumeTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    return-object v0
.end method

.method private checkToPlayWWP()Z
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 1283
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->isWidgetOnResume()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResumeNotifyCaused:J

    const-wide/16 v8, 0x1e

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    sget-object v7, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->RESUME_DELAY:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    if-eq v6, v7, :cond_2

    .line 1286
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkToPlayWWP~ isWidgetOnResume:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->isWidgetOnResume()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mResumeNotifyCaused:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResumeNotifyCaused:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mUiState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 1311
    :cond_1
    :goto_0
    return v10

    .line 1291
    :cond_2
    const-wide/16 v4, 0x1f4

    .line 1292
    .local v4, timeThreshold:J
    const-wide/16 v2, 0x514

    .line 1293
    .local v2, needDelayTime:J
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iget-boolean v6, v6, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mUseAnimation:Z

    if-nez v6, :cond_3

    .line 1294
    const-wide/16 v2, 0x258

    .line 1297
    :cond_3
    iget-boolean v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->m_bPlayingWWP:Z

    if-eqz v6, :cond_1

    .line 1299
    move-wide v0, v2

    .line 1300
    .local v0, delayTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLastResumeTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v0, v6

    .line 1302
    cmp-long v6, v0, v2

    if-lez v6, :cond_5

    .line 1303
    move-wide v0, v2

    .line 1307
    :cond_4
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkToPlayWWP~ delayTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 1308
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v6, v11, v12}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->startWWPAnimation(J)Z

    .line 1309
    iput-boolean v10, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->m_bPlayingWWP:Z

    goto :goto_0

    .line 1304
    :cond_5
    cmp-long v6, v0, v11

    if-gez v6, :cond_4

    .line 1305
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 539
    monitor-enter p0

    .line 540
    :try_start_0
    const-string v0, "weather clock clear~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->unInitReceiver()V

    .line 542
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsPort:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsLand:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->unbind(Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;)V

    .line 544
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->deInit()V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->unRegister()V

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 558
    :cond_3
    monitor-exit p0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private correctResourcesLocale()V
    .locals 5

    .prologue
    .line 563
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 564
    .local v2, res:Landroid/content/res/Resources;
    if-nez v2, :cond_1

    .line 565
    const-string v4, "Resources.getSystem() is null"

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, resISO3Language:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 572
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_2

    .line 573
    const-string v4, "res.getConfiguration() is null"

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, currentISO3Language:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 583
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 585
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private doActivityResult(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v1, "currentLocation"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 355
    .local v0, bCurLocation:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtAdd:Z

    .line 356
    invoke-direct {p0, v0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->switchToNewCity(ZLandroid/content/Intent;)V

    .line 357
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->savePropertyData(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private doConfigurationChanged()V
    .locals 3

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsPort:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsLand:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-nez v0, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsPort:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->init(Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;)V

    .line 1536
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mPreviousResId:I

    .line 1537
    const v0, 0x8020

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    .line 1538
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->update()V

    goto :goto_0

    .line 1535
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsLand:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    goto :goto_1
.end method

.method private doPause()V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removePauseMessage()V

    .line 165
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 167
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 168
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 169
    return-void
.end method

.method private doResume()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeResumeMessage()V

    .line 129
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 131
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 132
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method private doResumeInKeyguard()V
    .locals 2

    .prologue
    .line 411
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 412
    .local v0, msg:Landroid/os/Message;
    const v1, 0x9015

    iput v1, v0, Landroid/os/Message;->what:I

    .line 413
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 414
    return-void
.end method

.method private enableLocationProvider()V
    .locals 1

    .prologue
    .line 1478
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$7;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$7;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$7;->start()V

    .line 1485
    return-void
.end method

.method private getCityCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, cityCode:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/location/LocationCtrl;->getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "get city code fail"

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLocationFromCode(Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;
    .locals 3
    .parameter "code"

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mApplication:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/util/weather/WeatherUtility;->getLocationListByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 691
    .local v1, locationListCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 692
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    invoke-static {v1}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 697
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 699
    :cond_1
    return-object v0
.end method

.method private getLocationFromIntent(Landroid/content/Intent;)Lcom/htc/util/weather/WeatherLocation;
    .locals 4
    .parameter "intent"

    .prologue
    .line 672
    new-instance v1, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v1}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 674
    .local v1, loc:Lcom/htc/util/weather/WeatherLocation;
    const-string v2, "code_"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, code:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v1, v0}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 677
    const-string v2, "name_"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 678
    const-string v2, "timezone_"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 679
    const-string v2, "state_"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 680
    const-string v2, "country_"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 681
    const-string v2, "app_"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 682
    const-string v2, "latitude_"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 683
    const-string v2, "longitude_"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 684
    return-object v1
.end method

.method private hasNonUiMessage(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    .line 1197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initClock()V
    .locals 5

    .prologue
    .line 706
    const/4 v1, 0x0

    .line 707
    .local v1, timezone:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBackIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBackIntent:Landroid/content/Intent;

    const-string v3, "currentLocation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 710
    .local v0, isCurrentLocation:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBackIntent:Landroid/content/Intent;

    const-string v3, "timezone_"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .end local v0           #isCurrentLocation:Ljava/lang/Boolean;
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->initClock(Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private initClock(Ljava/lang/String;)V
    .locals 2
    .parameter "timezone"

    .prologue
    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initClock~ timezone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    .line 721
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setTimeZone(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->onTimeChanged(Z)V

    .line 724
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setOnClockClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    :goto_0
    return-void

    .line 726
    :cond_0
    const-string v0, "initClock~ mClockView is null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 596
    const-string v1, "initData~"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->correctResourcesLocale()V

    .line 599
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    .line 600
    .local v0, props:Ljava/util/Properties;
    if-nez v0, :cond_0

    .line 601
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtAdd:Z

    .line 602
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBackIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->savePropertyData(Landroid/content/Intent;)V

    .line 606
    :goto_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->initAnimation()V

    .line 607
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->initReceiver()V

    .line 608
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->updateFormat()V

    .line 609
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->checkSystemAutoSynTimezone()V

    .line 610
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->checkClockTimeZone()V

    .line 612
    return-void

    .line 604
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->loadPropertyData(Ljava/util/Properties;)V

    goto :goto_0
.end method

.method private initReceiver()V
    .locals 0

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->registerFormatObserver()V

    .line 1254
    return-void
.end method

.method private launchWeatherAp()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 269
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.htc.Weather.intent.action.LOCATE"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_4

    .line 271
    const-string v10, "com.htc.Weather"

    const-string v11, "com.htc.Weather.WeatherActivity"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v10, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v10}, Lcom/htc/clock/util/location/LocationCtrl;->getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v9

    .line 275
    .local v9, weatherLoc:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v9, :cond_0

    .line 276
    invoke-static {v9}, Lcom/htc/clock/util/location/LocationCtrl;->getWeatheApCityName(Lcom/htc/util/weather/WeatherLocation;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, cityName:Ljava/lang/String;
    const-string v10, "name_"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v10, "code_"

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v10, "app_"

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "launchWeatherAp~ name_:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 282
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "launchWeatherAp~ code_:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 283
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "launchWeatherAp~ app_:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 285
    .end local v1           #cityName:Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v10}, Lcom/htc/clock/util/location/LocationCtrl;->isCurrentLocation()Z

    move-result v10

    if-nez v10, :cond_3

    .line 286
    iget-object v10, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mViewContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.htc.elroy.Weather"

    invoke-static {v10, v11}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v8

    .line 289
    .local v8, locs:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v4, 0x0

    .line 290
    .local v4, inList:Z
    move-object v0, v8

    .local v0, arr$:[Lcom/htc/util/weather/WeatherLocation;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v6, v0, v3

    .line 291
    .local v6, l:Lcom/htc/util/weather/WeatherLocation;
    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 292
    const/4 v4, 0x1

    .line 296
    .end local v6           #l:Lcom/htc/util/weather/WeatherLocation;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "launchWeatherAp~ inList:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 297
    if-nez v4, :cond_3

    .line 298
    array-length v10, v8

    const/16 v11, 0xf

    if-ge v10, v11, :cond_2

    .line 299
    const/4 v10, 0x1

    new-array v8, v10, [Lcom/htc/util/weather/WeatherLocation;

    .line 300
    aput-object v9, v8, v12

    .line 301
    iget-object v10, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mViewContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.htc.elroy.Weather"

    invoke-static {v10, v11, v8}, Lcom/htc/util/weather/WeatherUtility;->addLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 304
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "launchWeatherAp~ add loc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 307
    :cond_2
    const-string v10, "com.htc.Weather.intent.action.ADD_LOCATION"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    .end local v0           #arr$:[Lcom/htc/util/weather/WeatherLocation;
    .end local v3           #i$:I
    .end local v4           #inList:Z
    .end local v7           #len$:I
    .end local v8           #locs:[Lcom/htc/util/weather/WeatherLocation;
    :cond_3
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    const/high16 v10, 0x400

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    :try_start_0
    iget-object v10, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mApplication:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v9           #weatherLoc:Lcom/htc/util/weather/WeatherLocation;
    :cond_4
    :goto_1
    return-void

    .line 290
    .restart local v0       #arr$:[Lcom/htc/util/weather/WeatherLocation;
    .restart local v3       #i$:I
    .restart local v4       #inList:Z
    .restart local v6       #l:Lcom/htc/util/weather/WeatherLocation;
    .restart local v7       #len$:I
    .restart local v8       #locs:[Lcom/htc/util/weather/WeatherLocation;
    .restart local v9       #weatherLoc:Lcom/htc/util/weather/WeatherLocation;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    .end local v0           #arr$:[Lcom/htc/util/weather/WeatherLocation;
    .end local v3           #i$:I
    .end local v4           #inList:Z
    .end local v6           #l:Lcom/htc/util/weather/WeatherLocation;
    .end local v7           #len$:I
    .end local v8           #locs:[Lcom/htc/util/weather/WeatherLocation;
    :catch_0
    move-exception v2

    .line 315
    .local v2, e:Landroid/content/ActivityNotFoundException;
    iget-object v10, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mViewContext:Landroid/content/Context;

    const-string v11, "Activity is not ready to execute"

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private launchWeatherClockAp()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->hasWeatherAp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->isLocServiceEnable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->isCurrentLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->launchLocSetting()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->isLocServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->launchResetCityActivity()V

    goto :goto_0

    .line 252
    :cond_2
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->launchWeatherAp()V

    goto :goto_0
.end method

.method private loadPropertyData(Ljava/util/Properties;)V
    .locals 8
    .parameter "props"

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, bCurLocation:Z
    const/4 v1, 0x0

    .line 617
    .local v1, bPlayWWP:Z
    const/4 v2, 0x0

    .line 618
    .local v2, code:Ljava/lang/String;
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->hasCurrentLocation()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 623
    :cond_0
    :try_start_0
    const-string v6, "isCurLocation"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 625
    const-string v6, "wwp_play_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 627
    if-nez v0, :cond_1

    .line 628
    const-string v6, "code_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 634
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initData~ from prop bCurLocation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 635
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 637
    const/4 v5, 0x0

    .line 638
    .local v5, loc:Lcom/htc/util/weather/WeatherLocation;
    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getLocationFromCode(Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v5

    .line 639
    if-nez v5, :cond_2

    .line 640
    new-instance v5, Lcom/htc/util/weather/WeatherLocation;

    .end local v5           #loc:Lcom/htc/util/weather/WeatherLocation;
    invoke-direct {v5}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 641
    .restart local v5       #loc:Lcom/htc/util/weather/WeatherLocation;
    invoke-virtual {v5, v2}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 642
    const-string v6, "name_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 643
    const-string v6, "state_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 644
    const-string v6, "country_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 645
    const-string v6, "timezone_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 646
    const-string v6, "app_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 647
    const-string v6, "latitude_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 648
    const-string v6, "longitude_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 650
    :cond_2
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v6, v5}, Lcom/htc/clock/util/location/LocationCtrl;->addLoc(Lcom/htc/util/weather/WeatherLocation;)Z

    .line 651
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v5}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/clock/util/location/LocationCtrl;->setLocKey(Ljava/lang/String;)V

    .line 668
    .end local v5           #loc:Lcom/htc/util/weather/WeatherLocation;
    :goto_1
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v6, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setPlayWWP(Z)V

    .line 669
    return-void

    .line 629
    :catch_0
    move-exception v4

    .line 630
    .local v4, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initData~ get isCurLocation property error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 653
    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    .line 654
    .local v3, defCityCode:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 655
    const-string v6, "defCityCode_"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 657
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initData~ defCityCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 658
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 659
    invoke-direct {p0, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getLocationFromCode(Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v5

    .line 660
    .restart local v5       #loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v6, v5}, Lcom/htc/clock/util/location/LocationCtrl;->addLoc(Lcom/htc/util/weather/WeatherLocation;)Z

    .line 661
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->addCurLoc()Z

    .line 662
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v5}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/clock/util/location/LocationCtrl;->setLocKey(Ljava/lang/String;)V

    goto :goto_1

    .line 664
    .end local v5           #loc:Lcom/htc/util/weather/WeatherLocation;
    :cond_5
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->addCurLoc()Z

    .line 665
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    const-string v7, "cur"

    invoke-virtual {v6, v7}, Lcom/htc/clock/util/location/LocationCtrl;->setLocKey(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private myOnNotifyWidgetPause(I)V
    .locals 4
    .parameter "notifyCause"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 782
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->isWidgetDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myOnNotifyWidgetPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 785
    const/16 v0, 0x28

    if-ne p1, v0, :cond_2

    .line 786
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mPauseByAddToHome:Z

    .line 790
    :goto_1
    sget-object v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->PAUSED:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    .line 791
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z

    .line 792
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtAdd:Z

    .line 793
    sput-boolean v2, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtRosieStart:Z

    .line 794
    const v0, 0x9004

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 795
    const v0, 0x9009

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 796
    const v0, 0x8009

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 797
    const v0, 0x8013

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 798
    const v0, 0x8001

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 801
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v0, :cond_3

    .line 802
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setPause(Z)V

    .line 808
    :goto_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v0, :cond_4

    .line 809
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->uiStopTodayAnimation()V

    .line 810
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setNeedPlayWeatherWallpaper(Z)V

    .line 811
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->onPause()V

    .line 812
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->isUseWWPAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLongClick:Z

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->detach3DObject()V

    goto :goto_0

    .line 788
    :cond_2
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mPauseByAddToHome:Z

    goto :goto_1

    .line 804
    :cond_3
    const-string v0, "onNotifyWidgetPause~ mClockView is null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 818
    :cond_4
    const-string v0, "onNotifyWidgetPause~ mWeatherView is null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private playWWPAtFirstTime()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1345
    sget-boolean v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtRosieStart:Z

    if-eqz v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->startWWPAnimation(J)Z

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtAdd:Z

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->startWWPAnimation(J)Z

    goto :goto_0
.end method

.method private registerFormatObserver()V
    .locals 6

    .prologue
    .line 1404
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1405
    :try_start_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mContentResolver:Landroid/content/ContentResolver;

    .line 1409
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1410
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFormatChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    if-nez v1, :cond_1

    .line 1411
    new-instance v1, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    invoke-direct {v1, p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFormatChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    .line 1412
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFormatChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSecureChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    if-nez v1, :cond_2

    .line 1416
    new-instance v1, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    invoke-direct {v1, p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSecureChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    .line 1417
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSecureChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1420
    :cond_2
    monitor-exit v2

    .line 1421
    return-void

    .line 1420
    .end local v0           #handler:Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerIntentReceivers()V
    .locals 0

    .prologue
    .line 1107
    return-void
.end method

.method private removeMessages()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 507
    const v0, 0x9004

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 508
    const v0, 0x9009

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 509
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 510
    const v0, 0x9001

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 511
    const v0, 0x9202

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 512
    const v0, 0x9201

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 513
    const v0, 0x9203

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 514
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 515
    const v0, 0x9204

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 516
    const v0, 0x9205

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 517
    const v0, 0x9011

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 518
    const v0, 0x9012

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 519
    const v0, 0x9013

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 520
    const v0, 0x9014

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 521
    const v0, 0x9016

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 523
    const v0, 0x9003

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 524
    const v0, 0x8016

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 525
    const v0, 0x8009

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 526
    const v0, 0x800a

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 527
    const v0, 0x8001

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 528
    const v0, 0x8020

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 529
    const v0, 0x8019

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 530
    const v0, 0x8014

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 531
    const v0, 0x8015

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 532
    const v0, 0x800c

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 533
    const v0, 0x8013

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 534
    const v0, 0x8012

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 535
    const v0, 0x8021

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 536
    return-void
.end method

.method private removePauseMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 146
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 149
    :cond_0
    return-void
.end method

.method private removeResumeMessage()V
    .locals 3

    .prologue
    const v2, 0x9004

    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 143
    :cond_1
    return-void
.end method

.method private saveInitProps(Lcom/htc/util/weather/WeatherLocation;Z)V
    .locals 4
    .parameter "weatherLoc"
    .parameter "bPlayWWP"

    .prologue
    .line 733
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 735
    .local v1, props:Ljava/util/Properties;
    const-string v2, "wwp_play_"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 736
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 738
    const-string v2, "name_"

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 739
    const-string v2, "state_"

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 740
    const-string v2, "country_"

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 741
    const-string v2, "code_"

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 742
    const-string v2, "latitude_"

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 743
    const-string v2, "longitude_"

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 744
    const-string v2, "app_"

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 745
    const-string v2, "timezone_"

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 746
    const-string v2, "isCurLocation"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->storeInstanceData(Ljava/util/Properties;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 759
    .end local v1           #props:Ljava/util/Properties;
    :goto_1
    return-void

    .line 749
    .restart local v1       #props:Ljava/util/Properties;
    :cond_0
    :try_start_2
    const-string v2, "isCurLocation"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 756
    .end local v1           #props:Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 757
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 753
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #props:Ljava/util/Properties;
    :catch_1
    move-exception v0

    .line 754
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private savePropertyData(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v3, "currentLocation"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    .local v0, bCurLocation:Z
    const-string v3, "wwp_play_"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 367
    .local v1, bPlayWWP:Z
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v3, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setPlayWWP(Z)V

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initData~ from intent bCurLocation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 369
    if-nez v0, :cond_1

    .line 371
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getLocationFromIntent(Landroid/content/Intent;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    .line 372
    .local v2, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v3, v2}, Lcom/htc/clock/util/location/LocationCtrl;->addLoc(Lcom/htc/util/weather/WeatherLocation;)Z

    .line 373
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/clock/util/location/LocationCtrl;->setLocKey(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, v2, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->saveInitProps(Lcom/htc/util/weather/WeatherLocation;Z)V

    goto :goto_0

    .line 377
    .end local v2           #loc:Lcom/htc/util/weather/WeatherLocation;
    :cond_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v3}, Lcom/htc/clock/util/location/LocationCtrl;->addCurLoc()Z

    .line 378
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    const-string v4, "cur"

    invoke-virtual {v3, v4}, Lcom/htc/clock/util/location/LocationCtrl;->setLocKey(Ljava/lang/String;)V

    .line 379
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->saveInitProps(Lcom/htc/util/weather/WeatherLocation;Z)V

    goto :goto_0
.end method

.method private startLocSettingActivity()V
    .locals 3

    .prologue
    .line 1459
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1461
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1463
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stateToLog()V
    .locals 7

    .prologue
    .line 1112
    invoke-static {}, Lcom/htc/clock/util/MyLog;->IsDebugLog()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1117
    .local v1, log:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-eqz v4, :cond_3

    .line 1118
    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v4}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v0

    .line 1119
    .local v0, locState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;
    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v4}, Lcom/htc/clock/util/location/LocationCtrl;->getState()Lcom/htc/clock/util/location/LocationCtrl$State;

    move-result-object v2

    .line 1120
    .local v2, state:Lcom/htc/clock/util/location/LocationCtrl$State;
    const-string v4, "stateToLog~ state:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1121
    const-string v4, "stateToLog~ locState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1122
    sget-object v4, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->ONLY_LOC:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    invoke-virtual {v4, v0}, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->OK:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    invoke-virtual {v4, v0}, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1124
    :cond_2
    const-string v4, "stateToLog~ weather update time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v5}, Lcom/htc/clock/util/location/LocationCtrl;->getLastUpdateTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1126
    const-string v4, "stateToLog~ weather locCode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v5}, Lcom/htc/clock/util/location/LocationCtrl;->getLocCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1128
    const-string v4, "locName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v5}, Lcom/htc/clock/util/location/LocationCtrl;->getLocName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1130
    const-string v4, "(lat,lng):("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v5}, Lcom/htc/clock/util/location/LocationCtrl;->getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1133
    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v4}, Lcom/htc/clock/util/location/LocationCtrl;->getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1135
    const-string v4, "stateToLog~ LocConditionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v5}, Lcom/htc/clock/util/location/LocationCtrl;->getLocConditionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1140
    .end local v0           #locState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;
    .end local v2           #state:Lcom/htc/clock/util/location/LocationCtrl$State;
    :cond_3
    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v4, :cond_4

    .line 1141
    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1142
    .local v3, tz:Ljava/util/TimeZone;
    const-string v4, "stateToLog~ listen timezone changed:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v5}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->getListenTimeZoneChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mReceiverRegistered:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iget-boolean v6, v6, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mReceiverRegistered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1146
    if-eqz v3, :cond_5

    .line 1147
    const-string v4, " used timezone:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1153
    .end local v3           #tz:Ljava/util/TimeZone;
    :cond_4
    :goto_1
    const-string v4, "\n---start last weather receive log---\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    const-string v4, "mBOnReceiveWeatherData:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    iget-boolean v5, v5, Lcom/htc/clock/util/location/LocationCtrl;->mBOnReceiveWeatherData:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1156
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v5, v5, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1157
    const-string v4, "\n---end last weather receive log---"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1158
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1159
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1149
    .restart local v3       #tz:Ljava/util/TimeZone;
    :cond_5
    const-string v4, " tz null"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private switchToNewCity(ZLandroid/content/Intent;)V
    .locals 6
    .parameter "bCurLocation"
    .parameter "data"

    .prologue
    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z

    if-eqz v3, :cond_0

    .line 419
    monitor-exit p0

    .line 452
    :goto_0
    return-void

    .line 421
    :cond_0
    if-eqz p2, :cond_1

    .line 422
    const-string v3, "wwp_play_"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 423
    .local v0, bPlayWWP:Z
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v3, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setPlayWWP(Z)V

    .line 426
    .end local v0           #bPlayWWP:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-eqz v3, :cond_2

    .line 427
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v3}, Lcom/htc/clock/util/location/LocationCtrl;->unRegister()V

    .line 429
    :cond_2
    new-instance v3, Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/clock/util/location/LocationCtrl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    .line 430
    const/4 v2, 0x0

    .line 431
    .local v2, loc:Lcom/htc/util/weather/WeatherLocation;
    if-nez p1, :cond_4

    .line 432
    invoke-direct {p0, p2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getLocationFromIntent(Landroid/content/Intent;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    .line 433
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v3, v2}, Lcom/htc/clock/util/location/LocationCtrl;->addLoc(Lcom/htc/util/weather/WeatherLocation;)Z

    .line 437
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/clock/util/location/LocationCtrl;->setLocKey(Ljava/lang/String;)V

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult~ loc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 443
    :goto_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v3}, Lcom/htc/clock/util/location/LocationCtrl;->getState()Lcom/htc/clock/util/location/LocationCtrl$State;

    move-result-object v3

    sget-object v4, Lcom/htc/clock/util/location/LocationCtrl$State;->START:Lcom/htc/clock/util/location/LocationCtrl$State;

    if-eq v3, v4, :cond_3

    .line 444
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 445
    .local v1, handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherListener:Lcom/htc/clock/util/location/LocationListener;

    invoke-virtual {v3, v1, v4}, Lcom/htc/clock/util/location/LocationCtrl;->register(Landroid/os/Handler;Lcom/htc/clock/util/location/LocationListener;)V

    .line 446
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v3}, Lcom/htc/clock/util/location/LocationCtrl;->checkLocEnable()Z

    .line 449
    .end local v1           #handler:Landroid/os/Handler;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->testWeatherCtrl()V

    .line 450
    const v3, 0x9203

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V

    .line 451
    monitor-exit p0

    goto :goto_0

    .end local v2           #loc:Lcom/htc/util/weather/WeatherLocation;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 440
    .restart local v2       #loc:Lcom/htc/util/weather/WeatherLocation;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v3}, Lcom/htc/clock/util/location/LocationCtrl;->addCurLoc()Z

    .line 441
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    const-string v4, "cur"

    invoke-virtual {v3, v4}, Lcom/htc/clock/util/location/LocationCtrl;->setLocKey(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private unInitReceiver()V
    .locals 3

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLockScreenRec:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLockScreenRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLockScreenRec:Landroid/content/BroadcastReceiver;

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_3

    .line 1264
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFormatChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFormatChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFormatChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSecureChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    if-eqz v0, :cond_2

    .line 1271
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSecureChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSecureChangeObserver:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;

    .line 1275
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mContentResolver:Landroid/content/ContentResolver;

    .line 1277
    :cond_3
    monitor-exit v1

    .line 1278
    return-void

    .line 1277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public buildCache()V
    .locals 0

    .prologue
    .line 1445
    return-void
.end method

.method public checkClockTimeZone()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1316
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-nez v2, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/location/LocationCtrl;->getTimeZoneId()Ljava/lang/String;

    move-result-object v1

    .line 1320
    .local v1, timezoneId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkClockTimeZone~ timezoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkClockTimeZone~ isTimezoneAutoSyn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->isTimezoneAutoSyn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 1323
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/location/LocationCtrl;->isCurrentLocation()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1324
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2, v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setListenTimeZoneChanged(Z)V

    .line 1325
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 1327
    :cond_2
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->isTimezoneAutoSyn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1328
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2, v5}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setListenTimeZoneChanged(Z)V

    .line 1329
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2, v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 1331
    :cond_3
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/location/LocationCtrl;->isLocServiceEnable()Z

    move-result v0

    .line 1332
    .local v0, locEnable:Z
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v2

    sget-object v3, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    if-eq v2, v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    if-nez v0, :cond_5

    .line 1334
    :cond_4
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2, v5}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setListenTimeZoneChanged(Z)V

    .line 1335
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2, v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1337
    :cond_5
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2, v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setListenTimeZoneChanged(Z)V

    .line 1338
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getNotifyType()I
    .locals 1

    .prologue
    .line 325
    const/16 v0, 0x32

    return v0
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 1516
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 1519
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1507
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 1510
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v2, "OpenSettings"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.clock3dwidget"

    const-string v3, "com.htc.clock3dwidget.setting.HtcClockSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v2, "index"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const/4 v1, 0x1

    .line 214
    .local v1, wwpPlay:Z
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->isUseWWPAnimation()Z

    move-result v1

    .line 217
    :cond_0
    const-string v2, "wwp_play_"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getWeatherCtrl()Lcom/htc/clock/util/location/LocationCtrl;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    return-object v0
.end method

.method public isAttach3DObject()Z
    .locals 1

    .prologue
    .line 1229
    const-string v0, "isAttach3DObject"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 1230
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->isUseWWPAnimation()Z

    move-result v0

    .line 1233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 1492
    const/4 v0, 0x1

    return v0
.end method

.method protected isSharingHandlerThread()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public isWidgetDestroy()Z
    .locals 1

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z

    return v0
.end method

.method public isWidgetOnResume()Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z

    if-nez v0, :cond_1

    .line 1238
    :cond_0
    const/4 v0, 0x0

    .line 1240
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public launchLocSetting()V
    .locals 3

    .prologue
    const v2, 0x9016

    .line 1470
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->startLocSettingActivity()V

    .line 1471
    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->hasNonUiMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {p0, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 1474
    :cond_0
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V

    .line 1475
    return-void
.end method

.method public launchResetCityActivity()V
    .locals 4

    .prologue
    .line 1449
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getSettingIntent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1450
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "widget_city_reset"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1451
    iget v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWidgetId:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1452
    :catch_0
    move-exception v0

    .line 1453
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 340
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->onActivityResult(IILandroid/content/Intent;)V

    .line 341
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 343
    .local v0, msg:Landroid/os/Message;
    const v1, 0x9014

    iput v1, v0, Landroid/os/Message;->what:I

    .line 344
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 345
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(Landroid/os/Message;J)V

    .line 347
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfiguration"

    .prologue
    const v1, 0x9011

    .line 1525
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1526
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mOrientation:I

    .line 1527
    invoke-direct {p0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->hasNonUiMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 1530
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "saved"

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    invoke-static {v1, v3}, Lcom/htc/clock3dwidget/ClockUtils;->getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 71
    sget-boolean v0, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_LAND:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    .line 72
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mApplication:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mApplication:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mOrientation:I

    .line 75
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/clock3dwidget/ClockUtils;->getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z

    .line 493
    const-string v0, "weather clock onActivityDestroy~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeMessages()V

    .line 496
    :try_start_0
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 500
    return-void

    .line 497
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onEdit()V
    .locals 4

    .prologue
    .line 1498
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getSettingIntent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1499
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 386
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 390
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getPositionX(I)I

    move-result v0

    .line 391
    .local v0, x:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getPositionY(I)I

    move-result v1

    .line 392
    .local v1, y:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HOST_RESUME_IN_KEYGUARD(x,y)=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v2, v0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setPosition(II)V

    goto :goto_0

    .line 397
    .end local v0           #x:I
    .end local v1           #y:I
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HOST_USER_PRESENT,arg1= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUiState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 398
    iget v2, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    sget-object v3, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->PAUSED:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    sget-object v3, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->NONE:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    if-ne v2, v3, :cond_0

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->doResumeInKeyguard()V

    goto :goto_0

    .line 405
    :pswitch_2
    const v2, 0x9011

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNotifyWidgetPause(I)V
    .locals 2
    .parameter "notifyCause"

    .prologue
    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotifyWidgetPause notifyCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->isWidgetDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    const v0, 0x9004

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 769
    const v0, 0x8009

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 770
    const v0, 0x8013

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 771
    const v0, 0x8001

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 773
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 154
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitCreate:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->doPause()V

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitPause:Z

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWorker:Landroid/os/Handler$Callback;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 81
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiWorker:Landroid/os/Handler$Callback;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 82
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mViewContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBackIntent:Landroid/content/Intent;

    .line 84
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z

    .line 85
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLongClick:Z

    .line 86
    new-instance v1, Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/clock/util/location/LocationCtrl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    .line 87
    new-instance v1, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;-><init>(Landroid/content/Context;Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Lcom/htc/android/rosie/widget/Widget$Host;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    .line 88
    new-instance v1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v1, v2}, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;-><init>(Lcom/htc/fusion/fx/FxScene;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsPort:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    .line 89
    sget-boolean v1, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_LAND:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsPort:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    :goto_0
    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsLand:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    .line 90
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsPort:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsLand:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    invoke-virtual {v1, v2, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->bind(Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;)V

    .line 91
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mOrientation:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsPort:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->init(Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;)V

    .line 92
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->init()V

    .line 93
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherClockClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setOnWeatherClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, defaultCurName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/clock/util/location/LocationUtil;->setDefaultLocName(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->initClock()V

    .line 98
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z

    .line 99
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->registerIntentReceivers()V

    .line 100
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v2, 0x9001

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 101
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->checkPlayAnimationTime()V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherClock onPostCreate ~ mInitResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitResume:Z

    if-eqz v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->doResume()V

    .line 107
    :cond_0
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitPause:Z

    if-eqz v1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->doPause()V

    .line 110
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitCreate:Z

    .line 111
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    return-void

    .line 89
    .end local v0           #defaultCurName:Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v1, v2}, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;-><init>(Lcom/htc/fusion/fx/FxScene;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mFxControlsLand:Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;

    goto :goto_1

    .line 111
    .restart local v0       #defaultCurName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherClock onResume ~ mInitCreate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitCreate:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->doResume()V

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mInitResume:Z

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized onSettingChanged()V
    .locals 3

    .prologue
    .line 1436
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1442
    :goto_0
    monitor-exit p0

    return-void

    .line 1439
    :cond_0
    :try_start_1
    const-string v0, "onSettingChanged"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v1, 0x9205

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1441
    const v0, 0x9205

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onTiltChanged(F)V

    .line 331
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->doTiltChanged(F)V

    goto :goto_0
.end method

.method protected removeNonUiMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1222
    :cond_0
    return-void
.end method

.method protected removeUiMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1191
    :cond_0
    return-void
.end method

.method protected sendNonUiMessageDelayed(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 1202
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0
.end method

.method protected sendNonUiMessageDelayed(Landroid/os/Message;J)V
    .locals 2
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 1211
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendUiMessageDelayed(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 1180
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0
.end method

.method protected sendUiMessageDelayed(IJII)V
    .locals 3
    .parameter "what"
    .parameter "delayMillis"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1168
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1169
    iput p4, v0, Landroid/os/Message;->arg1:I

    .line 1170
    iput p5, v0, Landroid/os/Message;->arg2:I

    .line 1171
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_1

    .line 1172
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    .line 1176
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1174
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public skinApply()V
    .locals 0

    .prologue
    .line 1488
    return-void
.end method

.method public testWeatherCtrl()V
    .locals 2

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "testWeatherCtrl~ getLocCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->getLocCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "testWeatherCtrl~ getLocName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->getLocName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "testWeatherCtrl~ getLocConditionIdInt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->getLocConditionIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "testWeatherCtrl~ getState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->getState()Lcom/htc/clock/util/location/LocationCtrl$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public updateScrollCache()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method
