.class Lcom/htc/weatheridlescreen/service/WISService$MyEngine;
.super Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
.source "WISService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weatheridlescreen/service/WISService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEngine"
.end annotation


# instance fields
.field mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

.field mDisplay:Landroid/view/Display;

.field private mEMCFxScreen_P:Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;

.field private mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

.field private mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

.field private mFxSceneOfEM_P:Lcom/htc/fusion/fx/FxScene;

.field private mFxScene_L:Lcom/htc/fusion/fx/FxScene;

.field private mFxScene_P:Lcom/htc/fusion/fx/FxScene;

.field private mHasDataUpdateCallback:Z

.field private mHasWeatherData:Z

.field private mIsFirstOnResume:Z

.field private mIsPortrait:Z

.field private mIsStartLockScreen:Z

.field private mIsVisible:Z

.field private mM10PathOfEM_P:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Landroid/content/SharedPreferences;

.field private mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

.field private mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

.field private mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

.field private mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

.field final synthetic this$0:Lcom/htc/weatheridlescreen/service/WISService;


# direct methods
.method public constructor <init>(Lcom/htc/weatheridlescreen/service/WISService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 3
    .parameter
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 173
    iput-object p1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISService;

    .line 174
    invoke-direct {p0, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    .line 42
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPreference:Landroid/content/SharedPreferences;

    .line 43
    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z

    .line 44
    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsVisible:Z

    .line 45
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z

    .line 46
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPowerManager:Landroid/os/PowerManager;

    .line 49
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 50
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 51
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 52
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 55
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mM10PathOfEM_P:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneOfEM_P:Lcom/htc/fusion/fx/FxScene;

    .line 57
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mEMCFxScreen_P:Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;

    .line 60
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    .line 61
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    .line 65
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 66
    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z

    .line 67
    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsStartLockScreen:Z

    .line 68
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsFirstOnResume:Z

    .line 70
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mDisplay:Landroid/view/Display;

    .line 73
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    .line 74
    new-instance v0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;

    invoke-direct {v0, p0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;-><init>(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    .line 175
    return-void
.end method

.method static synthetic access$002(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Lcom/htc/weatheridlescreen/data/WeatherData;)Lcom/htc/weatheridlescreen/data/WeatherData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsStartLockScreen:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->releaseFxScene()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setFxScene(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    return-object v0
.end method

.method private declared-synchronized releaseFxScene()V
    .locals 4

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 613
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Lcom/htc/fusion/fx/FxScene;

    const/4 v2, 0x0

    check-cast v2, Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v1, v2}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V

    .line 614
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setBackground(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V

    .line 616
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 618
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 622
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 624
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 625
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 626
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    .line 627
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    .line 628
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mEMCFxScreen_P:Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;

    .line 629
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneOfEM_P:Lcom/htc/fusion/fx/FxScene;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 636
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 637
    monitor-exit p0

    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "WIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WISService] releaseFxScene() - e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 636
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 608
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setFxBackground()V
    .locals 10

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    :try_start_1
    iget-boolean v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsStartLockScreen:Z

    if-nez v7, :cond_0

    .line 532
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    :goto_0
    monitor-exit p0

    return-void

    .line 536
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    if-nez v7, :cond_3

    .line 537
    const-string v7, "Port/Lockscreen_weather_bg.m10"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    .line 539
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    if-eqz v7, :cond_3

    .line 540
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 541
    const/16 v4, 0x64

    .line 542
    .local v4, mInOutFrame:I
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "Out"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    .line 543
    .local v6, mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    if-eqz v6, :cond_1

    .line 544
    iget v4, v6, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 546
    :cond_1
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 547
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "timeline.weather_bg"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 548
    .local v2, mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v2, :cond_3

    .line 549
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 550
    const-string v7, "day_to_night"

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v5

    .line 551
    .local v5, mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    const/4 v1, 0x0

    .line 552
    .local v1, mFrame:I
    if-eqz v5, :cond_2

    .line 553
    iget v1, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 554
    if-gez v1, :cond_2

    .line 555
    const/4 v1, 0x0

    .line 557
    :cond_2
    int-to-float v7, v1

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 558
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 563
    .end local v1           #mFrame:I
    .end local v2           #mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v4           #mInOutFrame:I
    .end local v5           #mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    .end local v6           #mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    :cond_3
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->hasLandscapeMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 564
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    if-nez v7, :cond_6

    .line 565
    const-string v7, "Land/Lockscreen_weather_bg_l.m10"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    .line 567
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    if-eqz v7, :cond_6

    .line 568
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 569
    const/16 v4, 0x64

    .line 570
    .restart local v4       #mInOutFrame:I
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "Out"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    .line 571
    .restart local v6       #mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    if-eqz v6, :cond_4

    .line 572
    iget v4, v6, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 574
    :cond_4
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 575
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "timeline.weather_bg"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 577
    .local v3, mFxTLCForBG_L:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v3, :cond_6

    .line 578
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 579
    const-string v7, "day_to_night"

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v5

    .line 580
    .restart local v5       #mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    const/4 v1, 0x0

    .line 581
    .restart local v1       #mFrame:I
    if-eqz v5, :cond_5

    .line 582
    iget v1, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 583
    if-gez v1, :cond_5

    .line 584
    const/4 v1, 0x0

    .line 586
    :cond_5
    int-to-float v7, v1

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 587
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 592
    .end local v1           #mFrame:I
    .end local v3           #mFxTLCForBG_L:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v4           #mInOutFrame:I
    .end local v5           #mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    .end local v6           #mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    :cond_6
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    iget-object v8, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v7, v8}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setBackground(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 599
    :goto_1
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 529
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 594
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v7, "WIS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WISService] setFxBackground() - e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized setFxScene(Z)V
    .locals 8
    .parameter "hasWeatherData"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 423
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setFxBackground()V

    .line 424
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    :try_start_1
    iget-boolean v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsStartLockScreen:Z

    if-nez v3, :cond_0

    .line 427
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :goto_0
    monitor-exit p0

    return-void

    .line 432
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 434
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_2

    .line 435
    const-string v3, "Port/Lockscreen_weather.m10"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 437
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v3, :cond_1

    .line 439
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v3}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 440
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 442
    :cond_1
    new-instance v3, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    iget-object v4, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISService;

    invoke-virtual {v4}, Lcom/htc/weatheridlescreen/service/WISService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;ZLcom/htc/fusion/fx/FxScene;)V

    iput-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 445
    :cond_2
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_4

    .line 446
    const-string v3, "Land/Lockscreen_weather_l.m10"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 448
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    if-eqz v3, :cond_4

    .line 449
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v3, :cond_3

    .line 450
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v3}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 451
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 453
    :cond_3
    new-instance v3, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    iget-object v4, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISService;

    invoke-virtual {v4}, Lcom/htc/weatheridlescreen/service/WISService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;ZLcom/htc/fusion/fx/FxScene;)V

    iput-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 456
    :cond_4
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    iget-object v4, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v3, v4}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V

    .line 457
    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-eqz v3, :cond_6

    .line 458
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v3}, Lcom/htc/weatheridlescreen/data/WeatherData;->changeTodayIndex()Z

    .line 460
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v3, :cond_5

    .line 461
    iget-object v4, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    iget-boolean v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsVisible:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z

    if-eqz v3, :cond_7

    move v3, v1

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->updateWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;ZZ)V

    .line 462
    :cond_5
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v3, :cond_6

    .line 463
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    iget-object v4, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    iget-boolean v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsVisible:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z

    if-nez v5, :cond_8

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v3, v4, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->updateWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 521
    :cond_6
    :goto_3
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 423
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_7
    move v3, v2

    .line 461
    goto :goto_1

    :cond_8
    move v1, v2

    .line 463
    goto :goto_2

    .line 472
    :cond_9
    if-eqz p1, :cond_d

    .line 473
    :try_start_5
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_b

    .line 474
    const-string v1, "Port/Lockscreen_weather.m10"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 476
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_b

    .line 477
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v1}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;

    .line 478
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_a

    .line 479
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 480
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 482
    :cond_a
    new-instance v1, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISService;

    invoke-virtual {v2}, Lcom/htc/weatheridlescreen/service/WISService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;ZLcom/htc/fusion/fx/FxScene;)V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 485
    :cond_b
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-eqz v1, :cond_c

    .line 486
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/data/WeatherData;->changeTodayIndex()Z

    .line 487
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_c

    .line 488
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    iget-boolean v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsVisible:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->updateWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;ZZ)V

    .line 490
    :cond_c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mEMCFxScreen_P:Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneOfEM_P:Lcom/htc/fusion/fx/FxScene;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 516
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    const-string v1, "WIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WISService] setFxScene() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 495
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d
    :try_start_7
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneOfEM_P:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_e

    .line 496
    const-string v1, "Lockscreen_common_error.m10"

    invoke-virtual {p0, v1}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->getCommonM10Path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mM10PathOfEM_P:Ljava/lang/String;

    .line 498
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mM10PathOfEM_P:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneOfEM_P:Lcom/htc/fusion/fx/FxScene;

    .line 500
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneOfEM_P:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_e

    .line 501
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mEMCFxScreen_P:Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;

    .line 502
    new-instance v1, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISService;

    invoke-virtual {v2}, Lcom/htc/weatheridlescreen/service/WISService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneOfEM_P:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v1, v2, v3}, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mEMCFxScreen_P:Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;

    .line 503
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxSceneOfEM_P:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v1}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;

    .line 506
    :cond_e
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_6

    .line 507
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_f

    .line 508
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 511
    :cond_f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 182
    invoke-virtual {p0, v2}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setShowLiveWallpaper(Z)V

    .line 183
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z

    .line 185
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISService;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/service/WISService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WeatherIdleScreen_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPreference:Landroid/content/SharedPreferences;

    .line 186
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 190
    :cond_0
    new-instance v0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISService;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/service/WISService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    .line 191
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->initHandler()V

    .line 193
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->setDataUpdateCallback(Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;)V

    .line 194
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->requestWeatherData()V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/service/WISService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPowerManager:Landroid/os/PowerManager;

    .line 198
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 326
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPreference:Landroid/content/SharedPreferences;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->unInitHandler()V

    .line 330
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->releaseFxScene()V

    .line 333
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 334
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z

    .line 335
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z

    .line 336
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mDisplay:Landroid/view/Display;

    .line 337
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onDestroy()V

    .line 338
    return-void
.end method

.method public onOrientationChanged(Z)V
    .locals 4
    .parameter "bPortrait"

    .prologue
    .line 390
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onOrientationChanged(Z)V

    .line 392
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z

    if-eq v1, p1, :cond_0

    .line 397
    if-eqz p1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playLoopInMarker()V

    .line 399
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->setLoopInFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :cond_1
    iput-boolean p1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z

    .line 415
    return-void

    .line 402
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playLoopInMarker()V

    .line 403
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->setLoopInFrame()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "WIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WISService] onOrientationChanged() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onPause()V

    .line 299
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onPause()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onPause()V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 307
    :cond_2
    return-void
.end method

.method public onRenderableChange(Z)V
    .locals 0
    .parameter "rendable"

    .prologue
    .line 374
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onRenderableChange(Z)V

    .line 375
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onResume()V

    .line 229
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 235
    monitor-enter p0

    .line 238
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z

    if-eqz v1, :cond_5

    .line 239
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onResume()V

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkCurrentWeatherConditionForInvisible()V

    .line 243
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->setLoopInFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    if-eqz v1, :cond_4

    .line 290
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->requestWeatherData()V

    .line 292
    :cond_4
    iput-boolean v4, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsFirstOnResume:Z

    goto :goto_0

    .line 247
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_6

    .line 248
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onResume()V

    .line 249
    :cond_6
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkCurrentWeatherConditionForInvisible()V

    .line 251
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->setLoopInFrame()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "WIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WISService] onResume() - For Tablet Device - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 260
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 264
    :cond_7
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z

    if-eqz v1, :cond_3

    .line 265
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsFirstOnResume:Z

    if-nez v1, :cond_8

    .line 266
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkCurrentWeatherCondition()Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    iput-boolean v4, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z

    .line 268
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->releaseFxScene()V

    .line 269
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z

    invoke-direct {p0, v1}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setFxScene(Z)V

    goto :goto_2

    .line 273
    :cond_8
    monitor-enter p0

    .line 276
    :try_start_4
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_9

    .line 277
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playBuildMarkerForCurrent()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 284
    :cond_9
    :goto_3
    :try_start_5
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 279
    :catch_1
    move-exception v0

    .line 281
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v1, "WIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WISService] onResume() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 380
    const-string v0, "WIS_WeatherCityCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->resetCityForWeatherDataReceiver()V

    .line 383
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->requestWeatherData()V

    .line 386
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onStart()V

    .line 205
    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsStartLockScreen:Z

    .line 206
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISService;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Lcom/htc/weatheridlescreen/service/WISService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mDisplay:Landroid/view/Display;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z

    if-eqz v0, :cond_3

    .line 216
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z

    invoke-direct {p0, v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setFxScene(Z)V

    .line 222
    :goto_1
    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsFirstOnResume:Z

    .line 223
    return-void

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_3
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setFxBackground()V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onStop()V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsStartLockScreen:Z

    .line 314
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onStop()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onStop()V

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->releaseFxScene()V

    .line 319
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 345
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 352
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 360
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsVisible:Z

    .line 367
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onVisibilityChanged(Z)V

    .line 368
    return-void
.end method
