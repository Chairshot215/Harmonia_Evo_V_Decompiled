.class public Lcom/htc/clock3dwidget/weatherclock/WeatherView;
.super Ljava/lang/Object;
.source "WeatherView.java"


# static fields
.field static final ACTION_HIDE_WEATHER_WALLPAPER:Ljava/lang/String; = "com.htc.weatherwallpaper.service.intent.action.HIDE_WEATHER_WALLPAPER"

.field static final ACTION_SHOW_WEATHER_WALLPAPER:Ljava/lang/String; = "com.htc.weatherwallpaper.service.intent.action.SHOW_WEATHER_WALLPAPER"

.field protected static final flagUseTodayAnimation:Z

.field protected static final mMapToWeatherWallpaper:[I


# instance fields
.field API_level:I

.field conditionId:I

.field protected flagUseWeatherAnimation:Z

.field private m3DLock:Ljava/lang/Object;

.field private mArabic:Z

.field protected mBNeedToUpdate:Z

.field protected mBNeedUpdateTemp:Z

.field private mCellX:I

.field private mCellY:I

.field protected mCityRest:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mCityRestText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mCityView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mConditionLength:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mContext:Landroid/content/Context;

.field protected mDfMode:I

.field protected mFrameNumber:I

.field protected mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mHost:Lcom/htc/android/rosie/widget/Widget$Host;

.field protected mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mIsWeatherWallpaperShowing:Z

.field protected mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mMode:I

.field protected mNeedPlayWeatherWallpaperAnimation:Z

.field protected mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

.field protected mPlayAnimationWhenStartAnimation:Z

.field private mPlayWWPTime:J

.field protected mPreviousMode:I

.field protected mPreviousResId:I

.field protected mStateResources:Lcom/htc/weather/StateResources;

.field protected mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mTime:I

.field private mTodayAnimation:Lcom/htc/fusion/fx/FxScene;

.field protected mWeatherType:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mWeekDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mMapToWeatherWallpaper:[I

    return-void

    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Lcom/htc/android/rosie/widget/Widget$Host;)V
    .locals 5
    .parameter "context"
    .parameter "widget"
    .parameter "host"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->flagUseWeatherAnimation:Z

    .line 52
    iput v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPreviousResId:I

    .line 58
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFrameNumber:I

    .line 59
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTime:I

    .line 60
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mMode:I

    .line 61
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mDfMode:I

    .line 62
    iput v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPreviousMode:I

    .line 64
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNeedPlayWeatherWallpaperAnimation:Z

    .line 65
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPlayAnimationWhenStartAnimation:Z

    .line 71
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mArabic:Z

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->API_level:I

    .line 74
    iput v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->conditionId:I

    .line 86
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mBNeedToUpdate:Z

    .line 88
    iput v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCellX:I

    .line 89
    iput v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCellY:I

    .line 302
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mBNeedUpdateTemp:Z

    .line 456
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPlayWWPTime:J

    .line 529
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->m3DLock:Ljava/lang/Object;

    .line 578
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mIsWeatherWallpaperShowing:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, locale:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 79
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mArabic:Z

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mArabic:Z

    goto :goto_0
.end method

.method private getDrawableFromResId(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 511
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 512
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrawableFromResId~ can\'t get drawable object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x0

    .line 517
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 516
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_0
.end method

.method private declared-synchronized getWeatherRes()Lcom/htc/weather/StateResources;
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mStateResources:Lcom/htc/weather/StateResources;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mStateResources:Lcom/htc/weather/StateResources;

    .line 329
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mStateResources:Lcom/htc/weather/StateResources;

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mStateResources:Lcom/htc/weather/StateResources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPlayingWWP()Z
    .locals 6

    .prologue
    .line 497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 499
    .local v0, curTime:J
    iget-wide v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPlayWWPTime:J

    sub-long v2, v0, v4

    .line 500
    .local v2, dif:J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 501
    const/4 v4, 0x1

    .line 503
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setIndicatorText()V
    .locals 4

    .prologue
    .line 231
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, indH:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, indL:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mArabic:Z

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLocationInfoVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCityRest:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCityRest:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 279
    :cond_0
    return-void
.end method

.method private setTodayImage(I)V
    .locals 8
    .parameter "conditionId"

    .prologue
    const/4 v7, 0x1

    .line 335
    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v5, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPreviousResId:I

    if-eq v5, p1, :cond_0

    .line 340
    invoke-static {v7}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, m10Path:Ljava/lang/String;
    const/16 v5, 0xa

    if-ge p1, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, id:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".m10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    invoke-interface {v5, v3, v7}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTodayAnimation:Lcom/htc/fusion/fx/FxScene;

    .line 348
    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTodayAnimation:Lcom/htc/fusion/fx/FxScene;

    if-eqz v5, :cond_2

    .line 349
    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 350
    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTodayAnimation:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 351
    sget-boolean v5, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_TIMELINE:Z

    if-eqz v5, :cond_4

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeline.s_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, condition:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTodayAnimation:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5, v0}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 354
    .local v4, timelineToday:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v4, :cond_2

    .line 355
    const-string v5, "In"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 362
    .end local v0           #condition:Ljava/lang/String;
    .end local v4           #timelineToday:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_2
    :goto_2
    iput p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPreviousResId:I

    goto/16 :goto_0

    .line 343
    .end local v1           #id:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 358
    .restart local v1       #id:Ljava/lang/String;
    .restart local v3       #path:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTodayAnimation:Lcom/htc/fusion/fx/FxScene;

    const-string v6, "In"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setSunAnimate()V

    goto :goto_2
.end method

.method private setWeatherViewVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mWeekDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mWeekDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_5

    .line 293
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_6

    .line 295
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_7

    .line 297
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 298
    :cond_7
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_8

    .line 299
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 300
    :cond_8
    return-void
.end method

.method private showDataError()V
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_6

    .line 247
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_4

    .line 269
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 272
    :cond_4
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_5

    .line 273
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 275
    :cond_5
    return-void

    .line 250
    :cond_6
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public IsNeedUpdate()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mBNeedUpdateTemp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mBNeedToUpdate:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animationEnd()V
    .locals 1

    .prologue
    .line 453
    const-string v0, "animationEnd"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public attach3DObject()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public checkPlayAnimationTime()V
    .locals 3

    .prologue
    .line 521
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/"

    const-string v2, "WeatherWallpaperEasy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPlayAnimationWhenStartAnimation:Z

    .line 526
    :goto_0
    return-void

    .line 525
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPlayAnimationWhenStartAnimation:Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPreviousResId:I

    .line 376
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->uiStopTodayAnimation()V

    .line 377
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->detach3DObject()V

    .line 382
    return-void
.end method

.method public detach3DObject()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public initAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->flagUseWeatherAnimation:Z

    if-eqz v0, :cond_0

    .line 568
    iput v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFrameNumber:I

    .line 569
    iput v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTime:I

    .line 570
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->attach3DObject()V

    .line 572
    :cond_0
    return-void
.end method

.method public isUseWWPAnimation()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->flagUseWeatherAnimation:Z

    return v0
.end method

.method public isWeatherVisiable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getWeatherCtrl()Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v1

    .line 109
    .local v1, weatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->isLocServiceEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->isWithCurrentLocation()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v0, v3

    .line 111
    .local v0, isLocationEnable:Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "weatherView isWeatherVisiable~ isLocationEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 113
    sget-object v4, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->OK:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v5

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_2

    .line 117
    :goto_1
    return v3

    .end local v0           #isLocationEnable:Z
    :cond_1
    move v0, v2

    .line 109
    goto :goto_0

    .restart local v0       #isLocationEnable:Z
    :cond_2
    move v3, v2

    .line 117
    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-virtual {p0, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setInstanceVisiable(Z)V

    .line 555
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mIsWeatherWallpaperShowing:Z

    if-eqz v1, :cond_0

    .line 556
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mIsWeatherWallpaperShowing:Z

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.weatherwallpaper.service.intent.action.HIDE_WEATHER_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 560
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setInstanceVisiable(Z)V

    .line 551
    return-void
.end method

.method public requestShowWeatherWallpaper(IIIII)Z
    .locals 4
    .parameter "condition"
    .parameter "icon_x"
    .parameter "icon_y"
    .parameter "icon_w"
    .parameter "icon_h"

    .prologue
    const/4 v3, 0x1

    .line 584
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.weatherwallpaper.service.intent.action.SHOW_WEATHER_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "WeatherCondition"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    const/4 v2, 0x4

    new-array v0, v2, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    aput p3, v0, v3

    const/4 v2, 0x2

    aput p4, v0, v2

    const/4 v2, 0x3

    aput p5, v0, v2

    .line 587
    .local v0, iconInfo:[I
    const-string v2, "iconInfo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 588
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mIsWeatherWallpaperShowing:Z

    .line 589
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 590
    return v3
.end method

.method public setInstanceVisiable(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 547
    return-void
.end method

.method public setNeedPlayWeatherWallpaper(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNeedPlayWeatherWallpaperAnimation:Z

    .line 540
    return-void
.end method

.method public setPlayWWP(Z)V
    .locals 0
    .parameter "bPlayWWP"

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->flagUseWeatherAnimation:Z

    .line 576
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 459
    iput p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCellX:I

    .line 460
    iput p2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCellY:I

    .line 461
    return-void
.end method

.method public setSunAnimate()V
    .locals 3

    .prologue
    .line 389
    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->conditionId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->flagUseWeatherAnimation:Z

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTodayAnimation:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "sunlight"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 391
    .local v0, timelineToday:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_0

    .line 392
    const-string v1, "weather_overlay_light"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 395
    .end local v0           #timelineToday:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_0
    return-void
.end method

.method public startTodayAnimation()V
    .locals 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v1, 0x8009

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    .line 386
    return-void
.end method

.method public startWWPAnimation(J)Z
    .locals 6
    .parameter "delayTime"

    .prologue
    const v5, 0x8013

    const/4 v2, 0x0

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, bGoToPlay:Z
    iget-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->flagUseWeatherAnimation:Z

    if-eqz v3, :cond_4

    .line 426
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getWeatherCtrl()Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v1

    .line 427
    .local v1, wthCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    if-eqz v1, :cond_0

    sget-object v3, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->OK:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->isCurrentLocation()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->isLocServiceEnable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 431
    :cond_0
    if-eqz v1, :cond_1

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWWPAnimation~ wthCtrl.getLocState():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 449
    .end local v1           #wthCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    :goto_0
    return v2

    .line 435
    .restart local v1       #wthCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    :cond_1
    const-string v3, "startWWPAnimation~ wthCtrl is null"

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_2
    iget-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPlayAnimationWhenStartAnimation:Z

    if-nez v3, :cond_3

    .line 441
    const-string v3, "startWWPAnimation~ play"

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v3, v5}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 443
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v3, v5, p1, p2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    .line 445
    const/4 v0, 0x1

    .line 447
    :cond_3
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNeedPlayWeatherWallpaperAnimation:Z

    .end local v1           #wthCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    :cond_4
    move v2, v0

    .line 449
    goto :goto_0
.end method

.method public uiResetLayout()V
    .locals 0

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->uiUpdate()V

    .line 508
    return-void
.end method

.method public uiStartTodayAnimation()V
    .locals 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v1, 0x8009

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 414
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->flagUseWeatherAnimation:Z

    if-eqz v0, :cond_1

    .line 415
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPlayAnimationWhenStartAnimation:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v1, 0x8013

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    .line 419
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNeedPlayWeatherWallpaperAnimation:Z

    .line 421
    :cond_1
    return-void
.end method

.method public uiStartWWPAnimation()V
    .locals 9

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v7, 0x8013

    invoke-virtual {v0, v7}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 465
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->flagUseWeatherAnimation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->isPlayingWWP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    :cond_0
    const-string v0, "uiStartWWPAnimation~ fail"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 494
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    const/4 v2, -0x1

    .local v2, icon_x:I
    const/4 v3, -0x1

    .line 470
    .local v3, icon_y:I
    const/4 v4, -0x1

    .local v4, icon_w:I
    const/4 v5, -0x1

    .line 471
    .local v5, icon_h:I
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_3

    .line 472
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 473
    .local v6, location:[I
    iget v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCellX:I

    .line 474
    iget v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCellY:I

    .line 480
    .end local v6           #location:[I
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uiStartWWPAnimation~ mDfMode:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mDfMode:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " icon_x:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " icon_y:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " icon_w:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " icon_h:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 483
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mDfMode:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mDfMode:I

    sget-object v7, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mMapToWeatherWallpaper:[I

    array-length v7, v7

    if-gt v0, v7, :cond_1

    .line 484
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->buildCache()V

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPlayWWPTime:J

    .line 487
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getWeatherCtrl()Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocConditionIdInt()I

    move-result v1

    .line 489
    .local v1, conditionId:I
    if-eqz v1, :cond_1

    move-object v0, p0

    .line 490
    invoke-virtual/range {v0 .. v5}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->requestShowWeatherWallpaper(IIIII)Z

    goto :goto_0

    .line 477
    .end local v1           #conditionId:I
    :cond_3
    const-string v0, "uiStartWWPAnimation~ mImgToday null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public uiStopTodayAnimation()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v1, 0x800a

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->stop()V

    .line 371
    :cond_0
    return-void
.end method

.method public uiUpdate()V
    .locals 15

    .prologue
    .line 121
    const-string v12, "weatherView uiUpdate~"

    invoke-static {v12}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 122
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v12}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getWeatherCtrl()Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v11

    .line 123
    .local v11, weatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    const/4 v7, 0x0

    .line 124
    .local v7, locName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 125
    .local v9, openResetOption:Z
    const/4 v8, 0x0

    .line 126
    .local v8, openLocOption:Z
    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->isLocServiceEnable()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->isWithCurrentLocation()Z

    move-result v12

    if-nez v12, :cond_7

    :cond_0
    const/4 v5, 0x1

    .line 127
    .local v5, isLocationEnable:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->isWeatherVisiable()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 129
    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->getLocName()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->getLocConditionId()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, conditionIdStr:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "weather visible, condition id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 134
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->conditionId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_1
    iget v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->conditionId:I

    if-ltz v12, :cond_8

    .line 139
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->getWeatherRes()Lcom/htc/weather/StateResources;

    move-result-object v12

    iget v13, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->conditionId:I

    invoke-virtual {v12, v13}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v10

    .line 140
    .local v10, text:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v12, :cond_1

    .line 141
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v13, ""

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 143
    :cond_1
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v12, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 144
    iget v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->conditionId:I

    invoke-direct {p0, v12}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setTodayImage(I)V

    .line 150
    .end local v10           #text:Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->getLocTemp()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, LocTemp:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v12, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->getHTemp()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, HTemp:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->getLTemp()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, LTemp:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v12, :cond_2

    .line 155
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v12, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 157
    :cond_2
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v12, :cond_3

    .line 158
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v12, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 160
    :cond_3
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v12, :cond_4

    .line 161
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 163
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 164
    .local v6, length:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "temperature length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 165
    packed-switch v6, :pswitch_data_0

    .line 177
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mWeatherType:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v13, "position_3"

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 181
    :goto_3
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v12, :cond_5

    .line 182
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setIndicatorText()V

    .line 205
    .end local v0           #HTemp:Ljava/lang/String;
    .end local v1           #LTemp:Ljava/lang/String;
    .end local v2           #LocTemp:Ljava/lang/String;
    .end local v3           #conditionIdStr:Ljava/lang/String;
    .end local v6           #length:I
    :cond_5
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mCityView="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", openLocOption="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", openResetOption="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 207
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCityView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v12, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 208
    if-eqz v8, :cond_e

    .line 209
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setWeatherViewVisibility(Z)V

    .line 210
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setLocationInfoVisibility(Z)V

    .line 211
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCityRestText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v12, :cond_6

    .line 212
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCityRestText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v13, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060018

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 227
    :cond_6
    :goto_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mBNeedToUpdate:Z

    .line 228
    return-void

    .line 126
    .end local v5           #isLocationEnable:Z
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v3       #conditionIdStr:Ljava/lang/String;
    .restart local v5       #isLocationEnable:Z
    :catch_0
    move-exception v4

    .line 136
    .local v4, e:Ljava/lang/Exception;
    const/4 v12, -0x1

    iput v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->conditionId:I

    goto/16 :goto_1

    .line 146
    .end local v4           #e:Ljava/lang/Exception;
    :cond_8
    const/4 v12, -0x1

    iput v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPreviousResId:I

    .line 147
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->showDataError()V

    goto/16 :goto_2

    .line 168
    .restart local v0       #HTemp:Ljava/lang/String;
    .restart local v1       #LTemp:Ljava/lang/String;
    .restart local v2       #LocTemp:Ljava/lang/String;
    .restart local v6       #length:I
    :pswitch_0
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mWeatherType:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v13, "position_1"

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_3

    .line 171
    :pswitch_1
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mWeatherType:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v13, "position_2"

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_3

    .line 174
    :pswitch_2
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mWeatherType:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v13, "position_3"

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 186
    .end local v0           #HTemp:Ljava/lang/String;
    .end local v1           #LTemp:Ljava/lang/String;
    .end local v2           #LocTemp:Ljava/lang/String;
    .end local v3           #conditionIdStr:Ljava/lang/String;
    .end local v6           #length:I
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "weather not visible,LocState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 187
    sget-object v12, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v13

    if-eq v12, v13, :cond_a

    if-nez v5, :cond_d

    .line 189
    :cond_a
    if-nez v5, :cond_b

    .line 190
    const-string v7, ""

    .line 191
    const/4 v8, 0x1

    .line 202
    :goto_6
    const/4 v12, -0x1

    iput v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPreviousResId:I

    .line 203
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->showDataError()V

    goto/16 :goto_4

    .line 192
    :cond_b
    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->isLocServiceAvailable()Z

    move-result v12

    if-nez v12, :cond_c

    .line 193
    const-string v7, ""

    .line 194
    const/4 v9, 0x1

    goto :goto_6

    .line 196
    :cond_c
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060017

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 200
    :cond_d
    invoke-virtual {v11}, Lcom/htc/clock/util/location/LocationCtrl;->getLocName()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 215
    :cond_e
    if-eqz v9, :cond_f

    .line 216
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setWeatherViewVisibility(Z)V

    .line 217
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setLocationInfoVisibility(Z)V

    .line 218
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCityRestText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v12, :cond_6

    .line 219
    iget-object v12, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mCityRestText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v13, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f06001d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 223
    :cond_f
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setWeatherViewVisibility(Z)V

    .line 224
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setLocationInfoVisibility(Z)V

    goto/16 :goto_5

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public uiUpdateTempUnit()V
    .locals 3

    .prologue
    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mBNeedUpdateTemp:Z

    .line 311
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getWeatherCtrl()Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v0

    .line 312
    .local v0, weatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    sget-object v1, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->OK:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 314
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocTemp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->getHTemp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->getLTemp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->setIndicatorText()V

    .line 320
    :cond_0
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    .line 92
    const-string v1, "weatherView update~"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mBNeedToUpdate:Z

    .line 94
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->flagUseWeatherAnimation:Z

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getWeatherCtrl()Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v0

    .line 97
    .local v0, weatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocConditionIdInt()I

    move-result v1

    iput v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mDfMode:I

    .line 98
    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mDfMode:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mDfMode:I

    sget-object v2, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mMapToWeatherWallpaper:[I

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 99
    sget-object v1, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mMapToWeatherWallpaper:[I

    iget v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mDfMode:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mMode:I

    .line 100
    :cond_0
    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPreviousMode:I

    iget v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mMode:I

    if-eq v1, v2, :cond_1

    .line 101
    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mMode:I

    iput v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mPreviousMode:I

    .line 104
    .end local v0           #weatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v2, 0x8014

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    .line 105
    return-void
.end method

.method public updateTempUnit()V
    .locals 4

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mBNeedUpdateTemp:Z

    .line 306
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherView;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v1, 0x8014

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    .line 307
    return-void
.end method
