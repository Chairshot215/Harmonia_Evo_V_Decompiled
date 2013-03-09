.class public Lcom/htc/WeatherWallpaper/WeatherWallpaperService;
.super Landroid/app/Service;
.source "WeatherWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;,
        Lcom/htc/WeatherWallpaper/WeatherWallpaperService$UIHandler;
    }
.end annotation


# static fields
.field static final ACTION_HIDE:Ljava/lang/String; = "com.htc.weatherwallpaper.service.intent.action.HIDE_WEATHER_WALLPAPER"

.field static final ACTION_SHOW:Ljava/lang/String; = "com.htc.weatherwallpaper.service.intent.action.SHOW_WEATHER_WALLPAPER"

.field static final ACTION_WEATHER_ANIMATION_DONE:Ljava/lang/String; = "com.htc.weatherwallpaper.service.intent.action.WEATHER_WALLPAPER_DISMISS"

.field private static final COLUMN_SIZE:I = 0x5

.field public static final MSG_KILL_PROCESS:I = -0xffffff8

.field public static final MSG_STOP_SERVICE:I = -0xffffff7

.field private static final TAG:Ljava/lang/String; = "[WeatherOverlay]"

.field public static logFlag:Z

.field private static mIsPlaying:Z

.field private static final mMap2Overlay:[I


# instance fields
.field private final mBinder:Lcom/htc/WeatherWallpaper/IWeatherWallpaperService$Stub;

.field private mFusionSurface:Landroid/view/SurfaceView;

.field private mPlaybackListener:Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;

.field mScene:Lcom/htc/fusion/fx/FxScene;

.field private mSoundEffect:Lcom/htc/Weather/SoundEffect;

.field private mUIHandler:Landroid/os/Handler;

.field mViewObject:Lcom/htc/fusion/fx/FxViewObject;

.field private m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    .line 62
    sput-boolean v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mIsPlaying:Z

    .line 129
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mMap2Overlay:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 66
    iput-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mFusionSurface:Landroid/view/SurfaceView;

    .line 67
    iput-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 68
    iput-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 140
    iput-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mUIHandler:Landroid/os/Handler;

    .line 476
    new-instance v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;

    invoke-direct {v0, p0, v1}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;-><init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;)V

    iput-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mPlaybackListener:Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;

    .line 523
    new-instance v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$2;

    invoke-direct {v0, p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$2;-><init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;)V

    iput-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mBinder:Lcom/htc/WeatherWallpaper/IWeatherWallpaperService$Stub;

    return-void
.end method

.method private findAnimationControl(III)V
    .locals 9
    .parameter "animationID"
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 417
    packed-switch p1, :pswitch_data_0

    .line 463
    const-string v4, "[WeatherOverlay]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animationID not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->stopSelf()V

    .line 469
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v4, :cond_3

    const-string v4, "[WeatherOverlay]"

    const-string v5, "TimelineControl is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    :goto_1
    return-void

    .line 419
    :pswitch_0
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.01_sun_light"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    goto :goto_0

    .line 422
    :pswitch_1
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.02_party_cloudy"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.03_rain"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    goto :goto_0

    .line 428
    :pswitch_3
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.04_ice_snow"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    goto :goto_0

    .line 431
    :pswitch_4
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.05_Sun"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 434
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.sunlight"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 435
    .local v1, fxTimelineSun:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v1, :cond_2

    .line 437
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_2
    mul-int/lit8 v4, p2, 0x5

    add-int/2addr v4, p3

    add-int/lit8 v3, v4, 0x1

    .line 442
    .local v3, postition:I
    const-string v4, "[WeatherOverlay]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v7, v8, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 446
    .end local v3           #postition:I
    :cond_2
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.sunposition"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 447
    .local v2, lightTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v2, :cond_0

    .line 449
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    :goto_3
    const-string v4, "start"

    invoke-virtual {v2, v4, v7, v8, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto/16 :goto_0

    .line 438
    .end local v2           #lightTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v4, "[WeatherOverlay]"

    const-string v5, "setVisibility-no such method."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 450
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    .restart local v2       #lightTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    :catch_1
    move-exception v0

    .line 451
    .restart local v0       #e:Ljava/lang/NoSuchMethodError;
    const-string v4, "[WeatherOverlay]"

    const-string v5, "setVisibility,no such method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 457
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    .end local v1           #fxTimelineSun:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v2           #lightTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    :pswitch_5
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.06_thunder"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    goto/16 :goto_0

    .line 460
    :pswitch_6
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.07_windy"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    goto/16 :goto_0

    .line 471
    :cond_3
    iget-object v4, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mPlaybackListener:Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;

    invoke-interface {v4, v5}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 472
    sget-boolean v4, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    if-eqz v4, :cond_1

    const-string v4, "[WeatherOverlay]"

    const-string v5, "set listener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getAnimationID(I)I
    .locals 5
    .parameter "condition"

    .prologue
    const/4 v1, -0x1

    .line 502
    if-lez p1, :cond_0

    sget-object v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mMap2Overlay:[I

    array-length v2, v2

    if-le p1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 507
    :cond_1
    :goto_0
    return v0

    .line 504
    :cond_2
    sget-object v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mMap2Overlay:[I

    add-int/lit8 v3, p1, -0x1

    aget v0, v2, v3

    .line 506
    .local v0, animationID:I
    const-string v2, "[WeatherOverlay]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animationID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private isLandscape()Z
    .locals 4

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 405
    .local v1, manager:Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    .line 406
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 407
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 408
    const/4 v2, 0x1

    .line 411
    .end local v0           #display:Landroid/view/Display;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private playAnimationMarker(I)V
    .locals 6
    .parameter "animationID"

    .prologue
    const/4 v5, 0x1

    .line 487
    const-string v1, "[WeatherOverlay]"

    const-string v2, "Start to play transition!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "start"

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 499
    :cond_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "[WeatherOverlay]"

    const-string v2, "setVisibility,no such method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playWeatherCondtion(III)V
    .locals 2
    .parameter "condition"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getAnimationID(I)I

    move-result v0

    .line 379
    .local v0, animationID:I
    invoke-direct {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->setMode10Scene()V

    .line 381
    invoke-direct {p0, v0, p2, p3}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->findAnimationControl(III)V

    .line 383
    invoke-direct {p0, v0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->playAnimationMarker(I)V

    .line 385
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v1, p1}, Lcom/htc/Weather/SoundEffect;->startMediaPlayer(I)V

    .line 386
    :cond_0
    return-void
.end method

.method private setMode10Scene()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 389
    invoke-direct {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->isLandscape()Z

    move-result v0

    .line 390
    .local v0, land:Z
    if-ne v0, v3, :cond_2

    .line 391
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const-string v2, "Land/weather_overlay.m10"

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 392
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_0

    .line 393
    const-string v1, "[WeatherOverlay]"

    const-string v2, "can\'t load landscape .m10 file"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const-string v2, "Port/weather_overlay.m10"

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 400
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_1

    const-string v1, "[WeatherOverlay]"

    const-string v2, "can\'t load scene sucessfully. scene is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    return-void

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const-string v2, "Port/weather_overlay.m10"

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method


# virtual methods
.method public initFusion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 328
    iget-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->dispose()V

    .line 330
    iput-object v3, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxSkinUtility;->loadSkinResource(Landroid/content/Context;I)V

    .line 339
    :goto_0
    invoke-static {v3}, Lcom/htc/fusion/fx/FxViewObject;->create(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 340
    iget-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    .line 341
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mFusionSurface:Landroid/view/SurfaceView;

    .line 342
    iget-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mFusionSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;

    invoke-direct {v1, p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;-><init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 357
    iget-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mFusionSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 358
    return-void

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxSkinUtility;->loadSkinResource(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mBinder:Lcom/htc/WeatherWallpaper/IWeatherWallpaperService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v6, -0xffffff7

    .line 178
    new-instance v3, Lcom/htc/Weather/SoundEffect;

    invoke-virtual {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/Weather/SoundEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    .line 181
    :try_start_0
    iget-object v3, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/Weather/SoundEffect;->SETTING_KEY_SYNC_SOUND:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/htc/Weather/SoundEffect;->setSoundOn(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_1
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$UIHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$UIHandler;-><init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;)V

    iput-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mUIHandler:Landroid/os/Handler;

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 194
    return-void

    :cond_1
    move v1, v2

    .line 181
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "[WeatherOverlay]"

    const-string v3, "no sound setting"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/SoundEffect;->setSoundOn(Z)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const v5, -0xffffff8

    .line 290
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 293
    .local v1, wm:Landroid/view/WindowManager;
    :try_start_0
    iget-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mFusionSurface:Landroid/view/SurfaceView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    iget-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v3, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxViewObject;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 304
    iget-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxViewObject;->dispose()V

    .line 305
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 308
    const-string v2, "[WeatherOverlay]"

    const-string v3, "gigi wallpaper onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v2}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    .line 312
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mIsPlaying:Z

    .line 313
    sget-boolean v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    if-eqz v2, :cond_2

    const-string v2, "[WeatherOverlay]"

    const-string v3, "onDestroy()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_2
    iget-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object v2, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[WeatherOverlay]"

    const-string v3, "The exception was caught: cantt remove the view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 18
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, action:Ljava/lang/String;
    const-string v2, "com.htc.weatherwallpaper.service.intent.action.SHOW_WEATHER_WALLPAPER"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 201
    sget-boolean v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    if-eqz v2, :cond_0

    const-string v2, "[WeatherOverlay]"

    const-string v3, "Show"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v14

    .line 206
    .local v14, wallpaperMgr:Landroid/app/WallpaperManager;
    const/16 v17, 0x0

    .line 207
    .local v17, wminfo:Landroid/app/WallpaperInfo;
    const/4 v15, 0x0

    .line 208
    .local v15, wallpapername:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 209
    invoke-virtual {v14}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v17

    .line 210
    :cond_1
    if-eqz v17, :cond_2

    .line 211
    invoke-virtual/range {v17 .. v17}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 213
    :cond_2
    if-eqz v15, :cond_4

    const-string v2, "com.htc.android.WeatherLiveWallpaper"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.htc.android.weatherlivewallpaper"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    :cond_3
    const-string v2, "[WeatherOverlay]"

    const-string v3, "weather live wallpaper exist, no play weather overlay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->stopSelf()V

    .line 219
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mFusionSurface:Landroid/view/SurfaceView;

    if-nez v2, :cond_9

    .line 220
    sget-boolean v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    if-eqz v2, :cond_5

    const-string v2, "[WeatherOverlay]"

    const-string v3, "Create"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_5
    sget-boolean v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mIsPlaying:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 222
    sget-boolean v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    if-eqz v2, :cond_6

    const-string v2, "[WeatherOverlay]"

    const-string v3, "service is already running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_6
    const/4 v2, 0x2

    .line 286
    .end local v14           #wallpaperMgr:Landroid/app/WallpaperManager;
    .end local v15           #wallpapername:Ljava/lang/String;
    .end local v17           #wminfo:Landroid/app/WallpaperInfo;
    :goto_0
    return v2

    .line 225
    .restart local v14       #wallpaperMgr:Landroid/app/WallpaperManager;
    .restart local v15       #wallpapername:Ljava/lang/String;
    .restart local v17       #wminfo:Landroid/app/WallpaperInfo;
    :cond_7
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mIsPlaying:Z

    .line 226
    const-string v2, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 227
    .local v16, wm:Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 228
    .local v9, dpy:Landroid/view/Display;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x64

    const/16 v5, 0x18

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 241
    .local v1, wlp:Landroid/view/WindowManager$LayoutParams;
    const-string v2, "Weather wallpaper surface"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->initFusion()V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mFusionSurface:Landroid/view/SurfaceView;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    const-string v2, "WeatherCondition"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 265
    .local v8, condition:I
    const-string v2, "iconInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    .line 267
    .local v11, iconInfo:[I
    if-nez v11, :cond_c

    const/4 v12, 0x0

    .line 268
    .local v12, posX:I
    :goto_1
    if-nez v11, :cond_d

    const/4 v13, 0x0

    .line 270
    .local v13, posY:I
    :goto_2
    sget-boolean v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    if-eqz v2, :cond_8

    .line 271
    const-string v2, "[WeatherOverlay]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand , condition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",posX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",posY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->playWeatherCondtion(III)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v1           #wlp:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #condition:I
    .end local v9           #dpy:Landroid/view/Display;
    .end local v11           #iconInfo:[I
    .end local v12           #posX:I
    .end local v13           #posY:I
    .end local v14           #wallpaperMgr:Landroid/app/WallpaperManager;
    .end local v15           #wallpapername:Ljava/lang/String;
    .end local v16           #wm:Landroid/view/WindowManager;
    .end local v17           #wminfo:Landroid/app/WallpaperInfo;
    :cond_9
    :goto_3
    const-string v2, "com.htc.weatherwallpaper.service.intent.action.HIDE_WEATHER_WALLPAPER"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 283
    sget-boolean v2, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    if-eqz v2, :cond_a

    const-string v2, "[WeatherOverlay]"

    const-string v3, "Hide"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->stopSelf()V

    .line 286
    :cond_b
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 267
    .restart local v1       #wlp:Landroid/view/WindowManager$LayoutParams;
    .restart local v8       #condition:I
    .restart local v9       #dpy:Landroid/view/Display;
    .restart local v11       #iconInfo:[I
    .restart local v14       #wallpaperMgr:Landroid/app/WallpaperManager;
    .restart local v15       #wallpapername:Ljava/lang/String;
    .restart local v16       #wm:Landroid/view/WindowManager;
    .restart local v17       #wminfo:Landroid/app/WallpaperInfo;
    :cond_c
    const/4 v2, 0x0

    :try_start_1
    aget v12, v11, v2

    goto :goto_1

    .line 268
    .restart local v12       #posX:I
    :cond_d
    const/4 v2, 0x1

    aget v13, v11, v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 276
    .end local v1           #wlp:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #condition:I
    .end local v9           #dpy:Landroid/view/Display;
    .end local v11           #iconInfo:[I
    .end local v12           #posX:I
    .end local v14           #wallpaperMgr:Landroid/app/WallpaperManager;
    .end local v15           #wallpapername:Ljava/lang/String;
    .end local v16           #wm:Landroid/view/WindowManager;
    .end local v17           #wminfo:Landroid/app/WallpaperInfo;
    :catch_0
    move-exception v10

    .line 277
    .local v10, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 278
    const-string v2, "[WeatherOverlay]"

    const-string v3, "OOM,but catched"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->stopSelf()V

    goto :goto_3
.end method
