.class public Lcom/htc/idlescreen/base/reminderview/WeatherView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/reminderview/WeatherView$1;,
        Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;,
        Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;,
        Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;,
        Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;
    }
.end annotation


# static fields
.field public static final ACTION_INTENT_LOCATE:Ljava/lang/String; = "com.htc.Weather.intent.action.LOCATE"

.field public static final LAUNCHAP_CLASSNAME:Ljava/lang/String; = "com.htc.Weather.WeatherActivity"

.field public static final LAUNCHSETTING_CLASSNAME:Ljava/lang/String; = "com.htc.Weather.WeatherSettings"

.field private static final LOG_PREFIX:Ljava/lang/String; = "WeatherView"

.field private static RES_TL_RAIN:Ljava/lang/String; = null

.field private static final WAHT_UI_PLAYLOOP:I = 0x2711

.field private static final WAHT_UI_SCNENE_PLAYLOOP:I = 0x2712

.field private static final WEATHER_PACKAGE:Ljava/lang/String; = "com.htc.weatheridlescreen"

.field public static final WEATHER_PACKAGENAME:Ljava/lang/String; = "com.htc.Weather"

.field private static final WEATHER_SCENE_MAIN:Ljava/lang/String; = "Port/main_state/"

.field private static final WEATHER_SCENE_MAIN_LAND:Ljava/lang/String; = "Land/main_state/"

.field private static sAddWeatherScenePath:Z


# instance fields
.field private mAnimeState:Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;

.field private mCloudTL:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mCurCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mCurCondition:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mCurConditionId:I

.field private mCurTemp3label:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mCurTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mHTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mIsPortrait:Z

.field private mLTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mResume:Z

.field private mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field protected mStateResources:Lcom/htc/weather/StateResources;

.field private mUIHandler:Landroid/os/Handler;

.field private mWeatherContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field mWeatherScene:Lcom/htc/fusion/fx/FxScene;

.field private mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mWeatherplaybackListener:Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;

.field private mplaybackListener:Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->sAddWeatherScenePath:Z

    .line 280
    const-string v0, "timeline.rain"

    sput-object v0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->RES_TL_RAIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"
    .parameter "isPortrait"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 68
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mResume:Z

    .line 69
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;-><init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;Lcom/htc/idlescreen/base/reminderview/WeatherView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mplaybackListener:Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;

    .line 70
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;-><init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;Lcom/htc/idlescreen/base/reminderview/WeatherView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherplaybackListener:Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mIsPortrait:Z

    .line 72
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;-><init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;

    .line 75
    sget-object v0, Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;->NONE:Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mAnimeState:Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;

    .line 207
    iput v1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurConditionId:I

    .line 111
    iput-boolean p5, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mIsPortrait:Z

    .line 112
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->initScene()V

    .line 113
    return-void
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/idlescreen/base/reminderview/WeatherView;Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;)Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mAnimeState:Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mResume:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method private getFxSceneByWeatherCondition(I)Lcom/htc/fusion/fx/FxScene;
    .locals 4
    .parameter "conditionID"

    .prologue
    const/16 v3, 0xa

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, scenePath:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v1, :cond_3

    .line 303
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mIsPortrait:Z

    if-nez v1, :cond_1

    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x27

    if-eq p1, v1, :cond_0

    const/16 v1, 0x28

    if-eq p1, v1, :cond_0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_1

    .line 306
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Land/main_state/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "L.m10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    const-string v1, "WeatherView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFxSceneByWeatherCondition() - scenePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    return-object v1

    .line 309
    :cond_1
    const-string v0, "Port/main_state/"

    .line 310
    if-ge p1, v3, :cond_2

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_3
    const-string v0, "Port/main_state/"

    .line 318
    if-ge p1, v3, :cond_4

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/WeatherView;
    .locals 7
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 98
    const-string v6, "Port/base/Lockscreen_weather_alert.m10"

    .line 99
    .local v6, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 100
    const-string v6, "Land/base/Lockscreen_weather_alert.m10"

    .line 102
    :cond_0
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 103
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v4, :cond_1

    .line 104
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/WeatherView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/idlescreen/base/reminderview/WeatherView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Z)V

    .line 106
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWeatherRes()Lcom/htc/weather/StateResources;
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mStateResources:Lcom/htc/weather/StateResources;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mStateResources:Lcom/htc/weather/StateResources;

    .line 462
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mStateResources:Lcom/htc/weather/StateResources;

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mStateResources:Lcom/htc/weather/StateResources;

    return-object v0
.end method

.method private getWeatherScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 5
    .parameter "condition"

    .prologue
    .line 283
    sget-boolean v3, Lcom/htc/idlescreen/base/reminderview/WeatherView;->sAddWeatherScenePath:Z

    if-nez v3, :cond_0

    .line 284
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getFxEngineCallback()Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    move-result-object v1

    .line 285
    .local v1, engine:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    if-eqz v1, :cond_0

    .line 286
    invoke-interface {v1}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->getViewObject()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v2

    .line 287
    .local v2, viewObj:Lcom/htc/fusion/fx/FxViewObject;
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.weatheridlescreen"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 288
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    .line 289
    const-string v3, "WeatherView"

    const-string v4, "getWeatherScene setPackageResourcePath"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/idlescreen/base/reminderview/WeatherView;->sAddWeatherScenePath:Z

    .line 293
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #engine:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    .end local v2           #viewObj:Lcom/htc/fusion/fx/FxViewObject;
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->getFxSceneByWeatherCondition(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    return-object v3
.end method

.method private launchSettingAp()V
    .locals 5

    .prologue
    .line 443
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 445
    const-string v2, "com.htc.Weather"

    const-string v3, "com.htc.Weather.WeatherSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WeatherView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchSettingAp e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchWeatherAp()V
    .locals 5

    .prologue
    .line 425
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.Weather.intent.action.LOCATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 427
    const-string v2, "com.htc.Weather"

    const-string v3, "com.htc.Weather.WeatherActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    const-string v2, "choose_tab"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WeatherView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchWeatherAp e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playBuild()V
    .locals 2

    .prologue
    .line 475
    sget-object v0, Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;->BUILD:Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mAnimeState:Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;

    .line 476
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 477
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 478
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 480
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCloudTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 481
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Build"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCloudTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Transition"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 485
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "Build"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 487
    :cond_0
    return-void
.end method

.method private setWeatherScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 6
    .parameter "scene"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 254
    const-string v0, "WeatherView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWeatherScene scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    .line 259
    iput-object v5, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 260
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    sget-object v1, Lcom/htc/idlescreen/base/reminderview/WeatherView;->RES_TL_RAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 262
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxScene;->setAsync(Z)V

    .line 266
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherplaybackListener:Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 268
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 269
    invoke-virtual {p1, v3}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 270
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_2
    const-string v0, "WeatherView"

    const-string v1, "setWeatherScene no scene"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 275
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private stopPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 491
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 492
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 494
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCloudTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 495
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 497
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 500
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCloudTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 502
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 504
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 506
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->stopPlay()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mResume:Z

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setWeatherScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 165
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 166
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 170
    :cond_1
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 171
    const-string v0, "WeatherView"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public getDescript(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter "descript"

    .prologue
    .line 468
    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "Helvetica Neue LT Pro"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, span:Landroid/text/style/TypefaceSpan;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 470
    .local v0, contentStringBuilder:Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 471
    return-object v0
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->WEATHER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 13

    .prologue
    const/16 v12, 0x21

    const/4 v11, 0x0

    .line 116
    const-string v8, "WeatherView"

    const-string v9, "initScene"

    invoke-static {v8, v9}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 118
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 119
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 120
    .local v3, res:Landroid/content/res/Resources;
    const v8, 0x7f040027

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, settingLabel:Ljava/lang/String;
    const v8, 0x7f04006e

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, forecastLabel:Ljava/lang/String;
    sget-object v8, Lcom/htc/idlescreen/base/mode10/WeatherR;->RES_DRAG_SETTING:[Ljava/lang/String;

    const-string v9, ""

    const/4 v10, 0x2

    invoke-virtual {p0, p0, v8, v9, v10}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 124
    sget-object v8, Lcom/htc/idlescreen/base/mode10/WeatherR;->RES_DRAG_FORECAST:[Ljava/lang/String;

    const-string v9, ""

    const/4 v10, 0x3

    invoke-virtual {p0, p0, v8, v9, v10}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 126
    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v9, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mContext:Landroid/content/Context;

    const v10, 0x7f020007

    invoke-virtual {v8, v9, v10}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 127
    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v9, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mContext:Landroid/content/Context;

    const v10, 0x7f020004

    invoke-virtual {v8, v9, v10}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 129
    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 130
    .local v0, buttonFontSize:I
    if-lez v0, :cond_0

    .line 131
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    .local v6, settingStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v7, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 133
    .local v7, span_size:Landroid/text/style/CharacterStyle;
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v11, v8, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 134
    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v8, v6}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    .local v2, forgotStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v2, v7, v11, v8, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 138
    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v8, v2}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 146
    .end local v2           #forgotStringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v6           #settingStringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v7           #span_size:Landroid/text/style/CharacterStyle;
    :goto_0
    const-string v8, "timeline.weather_comp"

    invoke-virtual {v4, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 147
    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v8}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mplaybackListener:Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;

    invoke-interface {v8, v9}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 149
    const-string v8, "Cloud_flyThru"

    invoke-virtual {v4, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCloudTL:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 150
    const-string v8, "scenecontainer.main_weather_state"

    invoke-virtual {v4, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 152
    const-string v8, "textlabel.citytemphi"

    invoke-virtual {v4, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mHTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 153
    const-string v8, "textlabel.citytemplow"

    invoke-virtual {v4, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mLTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 154
    const-string v8, "textlabel.citytemp"

    invoke-virtual {v4, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 155
    const-string v8, "textlabel.citytemp_3digit"

    invoke-virtual {v4, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemp3label:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 156
    const-string v8, "textlabel.cityname"

    invoke-virtual {v4, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 157
    const-string v8, "textlabel.condition"

    invoke-virtual {v4, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurCondition:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 158
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->update()V

    .line 159
    return-void

    .line 141
    :cond_0
    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v8, v5}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v8, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v8, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isShowShortcut()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "WeatherView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mResume:Z

    .line 179
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->stopPlay()V

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 184
    const-string v0, "WeatherView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mCurConditionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurConditionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mResume:Z

    .line 186
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->playBuild()V

    .line 187
    return-void
.end method

.method public onRingDragEnd(Z)V
    .locals 2
    .parameter "unlock"

    .prologue
    const/4 v1, 0x1

    .line 362
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragEnd(Z)V

    .line 363
    if-nez p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 365
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 367
    :cond_0
    return-void
.end method

.method public onRingDragStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragStart()V

    .line 371
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 372
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 373
    return-void
.end method

.method public onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 1
    .parameter "draggable"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->launchSettingAp()V

    .line 199
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->dismissWeatherAlert()V

    .line 200
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->launchWeatherAp()V

    goto :goto_0
.end method

.method public onRingUnlockStart()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingUnlockStart()V

    .line 204
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->dismissWeatherAlert()V

    .line 205
    return-void
.end method

.method public onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 341
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 342
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 348
    :cond_1
    return-void
.end method

.method public onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 337
    return-void
.end method

.method public onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 351
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 352
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 353
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mForecastBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 359
    :cond_1
    return-void
.end method

.method public unlockByDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 209
    const-string v3, "WeatherView"

    const-string v4, "update"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getWeatherData()Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    move-result-object v1

    .line 219
    .local v1, data:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;
    if-eqz v1, :cond_0

    .line 220
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mHTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->HTemp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mLTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->LTemp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 222
    const-string v3, "WeatherView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update data.CurTemp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurTemp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurTemp:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurTemp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 224
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemp3label:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurTemp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemp3label:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 227
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 236
    :goto_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 237
    iget v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurConditionId:I

    iget v4, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurCondition:I

    if-eq v3, v4, :cond_0

    .line 239
    iget v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurCondition:I

    iput v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurConditionId:I

    .line 240
    const-string v3, "WeatherView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurConditionId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurConditionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->getWeatherRes()Lcom/htc/weather/StateResources;

    move-result-object v3

    iget v4, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurConditionId:I

    invoke-virtual {v3, v4}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, conditionStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurCondition:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 244
    iget v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurConditionId:I

    invoke-direct {p0, v3}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->getWeatherScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 245
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->setWeatherScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 246
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mResume:Z

    if-eqz v3, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->playBuild()V

    .line 251
    .end local v0           #conditionStr:Ljava/lang/String;
    .end local v2           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_0
    return-void

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemp3label:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurTemp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemp3label:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 233
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mCurTemplabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method
