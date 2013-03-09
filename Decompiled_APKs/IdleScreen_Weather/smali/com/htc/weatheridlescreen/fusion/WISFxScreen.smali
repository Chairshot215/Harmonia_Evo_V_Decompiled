.class public Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
.super Ljava/lang/Object;
.source "WISFxScreen.java"


# static fields
.field private static final FX_CTL_CURRENT:I = 0x1

.field private static final FX_CTL_NEXT:I = 0x2

.field private static final FX_CTL_NONE:I = 0x0

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"


# instance fields
.field private FRAME_BG_DAY_TO_NIGHT:I

.field private FRAME_BG_DAY_TO_RAIN:I

.field private FRAME_BG_NIGHT_TO_DAY:I

.field private FRAME_BG_NIGHT_TO_RAIN:I

.field private FRAME_BG_RAIN_TO_DAY:I

.field private FRAME_BG_RAIN_TO_NIGHT:I

.field private PREFIX:Ljava/lang/String;

.field private mBGFrame:I

.field private mContext:Landroid/content/Context;

.field private mCurrentML:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

.field private mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mFxSceneForBGInOut:Lcom/htc/fusion/fx/FxScene;

.field private mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mHasNewWeatherData:Z

.field private mIWhoIsFxWeaCtl:I

.field private mIsCurrentTLC:Z

.field private mIsNight:Z

.field private mIsPortrait:Z

.field private mIsPreview:Z

.field private mIsRaining:Z

.field private mJustCreate:Z

.field private mNextML:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;ZLcom/htc/fusion/fx/FxScene;)V
    .locals 4
    .parameter "context"
    .parameter "fxScene"
    .parameter "isPortrait"
    .parameter "fxSceneBG"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "[WISFxScreen_"

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mContext:Landroid/content/Context;

    .line 24
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 25
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 26
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    .line 27
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    .line 30
    iput v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIWhoIsFxWeaCtl:I

    .line 35
    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_DAY_TO_NIGHT:I

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_NIGHT_TO_DAY:I

    .line 37
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_DAY_TO_RAIN:I

    .line 38
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_RAIN_TO_DAY:I

    .line 39
    const/16 v0, 0x51

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_NIGHT_TO_RAIN:I

    .line 40
    const/16 v0, 0x65

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_RAIN_TO_NIGHT:I

    .line 41
    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mBGFrame:I

    .line 43
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 44
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxSceneForBGInOut:Lcom/htc/fusion/fx/FxScene;

    .line 46
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsRaining:Z

    .line 47
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsNight:Z

    .line 50
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z

    .line 52
    iput-boolean v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPortrait:Z

    .line 53
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 478
    new-instance v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$1;-><init>(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mCurrentML:Lcom/htc/fusion/fx/MessageListener;

    .line 506
    new-instance v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;

    invoke-direct {v0, p0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;-><init>(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mNextML:Lcom/htc/fusion/fx/MessageListener;

    .line 746
    iput-boolean v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mJustCreate:Z

    .line 747
    iput-boolean v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsCurrentTLC:Z

    .line 748
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPreview:Z

    .line 57
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mContext:Landroid/content/Context;

    .line 58
    iput-boolean p3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPortrait:Z

    .line 59
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPortrait:Z

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "P] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    .line 63
    :goto_0
    iput-object p2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 64
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 68
    :cond_0
    iput-object p4, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxSceneForBGInOut:Lcom/htc/fusion/fx/FxScene;

    .line 69
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->InitWeatherControl()V

    .line 70
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z

    .line 71
    return-void

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    goto :goto_0
.end method

.method private InitWeatherControl()V
    .locals 21

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 154
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "t.lockscreen_ring_positionY"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "timeline.weather_composition_first"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "timeline.weather_composition_sec"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, "Cloud_flyThru"

    aput-object v18, v16, v17

    .line 162
    .local v16, mNameArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v6

    .line 164
    .local v6, mFxItemArray:[Lcom/htc/fusion/fx/FxObject;
    const/16 v17, 0x0

    aget-object v7, v6, v17

    check-cast v7, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 166
    .local v7, mFxTLCRing:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v7, :cond_0

    .line 167
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 170
    :cond_0
    new-instance v18, Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/16 v17, 0x1

    aget-object v17, v6, v17

    check-cast v17, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPortrait:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Landroid/content/Context;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 173
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mCurrentML:Lcom/htc/fusion/fx/MessageListener;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_1
    :goto_0
    new-instance v18, Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/16 v17, 0x2

    aget-object v17, v6, v17

    check-cast v17, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPortrait:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Landroid/content/Context;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 185
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mNextML:Lcom/htc/fusion/fx/MessageListener;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :cond_2
    :goto_1
    const/16 v17, 0x3

    aget-object v17, v6, v17

    check-cast v17, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 203
    .end local v6           #mFxItemArray:[Lcom/htc/fusion/fx/FxObject;
    .end local v7           #mFxTLCRing:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v16           #mNameArray:[Ljava/lang/String;
    :cond_3
    const/16 v8, 0x64

    .line 204
    .local v8, mInOutFrame:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxSceneForBGInOut:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxSceneForBGInOut:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxSceneForBGInOut:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v17, v0

    const-string v18, "Out"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v11

    .line 207
    .local v11, mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    if-eqz v11, :cond_4

    .line 208
    iget v8, v11, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 209
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxSceneForBGInOut:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v17, v0

    int-to-float v0, v8

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxSceneForBGInOut:Lcom/htc/fusion/fx/FxScene;

    move-object/from16 v17, v0

    const-string v18, "timeline.weather_bg"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v17

    check-cast v17, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 215
    .end local v11           #mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const-string v18, "day_to_night"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v9

    .line 219
    .local v9, mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    if-eqz v9, :cond_6

    .line 220
    iget v5, v9, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 221
    .local v5, mFrame:I
    if-ltz v5, :cond_6

    .line 222
    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_DAY_TO_NIGHT:I

    .line 225
    .end local v5           #mFrame:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const-string v18, "night_to_day"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v12

    .line 226
    .local v12, mMarkerNTD:Lcom/htc/fusion/fx/Marker;
    if-eqz v12, :cond_7

    .line 227
    iget v5, v12, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 228
    .restart local v5       #mFrame:I
    if-ltz v5, :cond_7

    .line 229
    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_NIGHT_TO_DAY:I

    .line 232
    .end local v5           #mFrame:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const-string v18, "day_to_rain"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v10

    .line 233
    .local v10, mMarkerDTR:Lcom/htc/fusion/fx/Marker;
    if-eqz v10, :cond_8

    .line 234
    iget v5, v10, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 235
    .restart local v5       #mFrame:I
    if-ltz v5, :cond_8

    .line 236
    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_DAY_TO_RAIN:I

    .line 239
    .end local v5           #mFrame:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const-string v18, "rain_to_day"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v14

    .line 240
    .local v14, mMarkerRTD:Lcom/htc/fusion/fx/Marker;
    if-eqz v14, :cond_9

    .line 241
    iget v5, v14, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 242
    .restart local v5       #mFrame:I
    if-ltz v5, :cond_9

    .line 243
    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_RAIN_TO_DAY:I

    .line 246
    .end local v5           #mFrame:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const-string v18, "night_to_rain"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v13

    .line 247
    .local v13, mMarkerNTR:Lcom/htc/fusion/fx/Marker;
    if-eqz v13, :cond_a

    .line 248
    iget v5, v13, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 249
    .restart local v5       #mFrame:I
    if-ltz v5, :cond_a

    .line 250
    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_NIGHT_TO_RAIN:I

    .line 253
    .end local v5           #mFrame:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v17, v0

    const-string v18, "rain_to_night"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v15

    .line 254
    .local v15, mMarkerRTN:Lcom/htc/fusion/fx/Marker;
    if-eqz v15, :cond_b

    .line 255
    iget v5, v15, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 256
    .restart local v5       #mFrame:I
    if-ltz v5, :cond_b

    .line 257
    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_RAIN_TO_NIGHT:I

    .line 268
    .end local v5           #mFrame:I
    :cond_b
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->initialBackgroundFrame(ZZ)V

    .line 270
    .end local v9           #mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    .end local v10           #mMarkerDTR:Lcom/htc/fusion/fx/Marker;
    .end local v12           #mMarkerNTD:Lcom/htc/fusion/fx/Marker;
    .end local v13           #mMarkerNTR:Lcom/htc/fusion/fx/Marker;
    .end local v14           #mMarkerRTD:Lcom/htc/fusion/fx/Marker;
    .end local v15           #mMarkerRTN:Lcom/htc/fusion/fx/Marker;
    :cond_c
    return-void

    .line 175
    .end local v8           #mInOutFrame:I
    .restart local v6       #mFxItemArray:[Lcom/htc/fusion/fx/FxObject;
    .restart local v7       #mFxTLCRing:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v16       #mNameArray:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 176
    .local v4, e:Ljava/lang/Exception;
    const-string v17, "WIS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "InitWeatherControl() - Exception = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v17, "WIS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "InitWeatherControl() - mFxCurrentWeaCtl = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v17, "WIS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "InitWeatherControl() - mFxCurrentWeaCtl.getPlaybackCompleteSource() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 188
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v17, "WIS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "InitWeatherControl() - Exception = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v17, "WIS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "InitWeatherControl() - mFxNextWeaCtl = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v17, "WIS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "InitWeatherControl() - mFxNextWeaCtl.getPlaybackCompleteSource() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIWhoIsFxWeaCtl:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/data/WeatherData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;Lcom/htc/weatheridlescreen/data/WeatherData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playNewWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/fusion/WISFxControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/fusion/WISFxControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPreview:Z

    return v0
.end method

.method private checkBackgroundEffect(ZZ)V
    .locals 2
    .parameter "isRain_New"
    .parameter "isNight_New"

    .prologue
    .line 642
    const/4 v0, -0x1

    .line 643
    .local v0, mEffect:I
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsRaining:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 644
    if-eqz p2, :cond_2

    .line 645
    const/4 v0, 0x5

    .line 660
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsRaining:Z

    .line 661
    iput-boolean p2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsNight:Z

    .line 664
    if-ltz v0, :cond_1

    .line 665
    invoke-direct {p0, v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playBackgroundEffect(I)V

    .line 666
    :cond_1
    return-void

    .line 647
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 648
    :cond_3
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsRaining:Z

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    .line 649
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsNight:Z

    if-eqz v1, :cond_4

    .line 650
    const/4 v0, 0x3

    goto :goto_0

    .line 652
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 653
    :cond_5
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsRaining:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 654
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsNight:Z

    if-eqz v1, :cond_6

    if-nez p2, :cond_6

    .line 655
    const/4 v0, 0x2

    goto :goto_0

    .line 656
    :cond_6
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsNight:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 657
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkMarkedIsPlaying(Lcom/htc/weatheridlescreen/fusion/WISFxControl;Ljava/lang/String;)Z
    .locals 3
    .parameter "mControl"
    .parameter "mMarked"

    .prologue
    const/4 v1, 0x0

    .line 391
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 394
    :cond_1
    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->getLatestPlayingMarked()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, mPlayingMarked:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private initialBackgroundFrame(ZZ)V
    .locals 2
    .parameter "isRain"
    .parameter "isNight"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 551
    if-eqz p1, :cond_1

    .line 552
    iget v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_RAIN_TO_DAY:I

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mBGFrame:I

    .line 560
    :goto_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mBGFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 562
    iput-boolean p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsRaining:Z

    .line 563
    iput-boolean p2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsNight:Z

    goto :goto_0

    .line 554
    :cond_1
    if-eqz p2, :cond_2

    .line 555
    iget v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_NIGHT_TO_DAY:I

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mBGFrame:I

    goto :goto_1

    .line 557
    :cond_2
    iget v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_DAY_TO_NIGHT:I

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mBGFrame:I

    goto :goto_1
.end method

.method private isSameWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;Lcom/htc/weatheridlescreen/data/WeatherData;)Z
    .locals 1
    .parameter "data1"
    .parameter "data2"

    .prologue
    const/4 v0, 0x0

    .line 275
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 279
    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {p1, p2}, Lcom/htc/weatheridlescreen/data/WeatherData;->compareData(Lcom/htc/weatheridlescreen/data/WeatherData;)Z

    move-result v0

    goto :goto_0
.end method

.method private playBackgroundEffect(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 587
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 592
    :cond_0
    const/16 v5, 0xf

    .line 593
    .local v5, mDelayTime:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 597
    :pswitch_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_DAY_TO_NIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 598
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "day_to_night"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    goto :goto_0

    .line 603
    :pswitch_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_NIGHT_TO_DAY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 604
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "night_to_day"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    goto :goto_0

    .line 609
    :pswitch_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_DAY_TO_RAIN:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 610
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "day_to_rain"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    goto :goto_0

    .line 615
    :pswitch_3
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_RAIN_TO_DAY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 616
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "rain_to_day"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    goto :goto_0

    .line 621
    :pswitch_4
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_NIGHT_TO_RAIN:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 622
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "night_to_rain"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    goto :goto_0

    .line 627
    :pswitch_5
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->FRAME_BG_RAIN_TO_NIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 628
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "rain_to_night"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private playNewWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;)V
    .locals 6
    .parameter "mData"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsRain()Z

    move-result v0

    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsNight()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkBackgroundEffect(ZZ)V

    .line 373
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, p1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setWeatherInfo(Lcom/htc/weatheridlescreen/data/WeatherData;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 378
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "Exit"

    invoke-virtual {v0, v1, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 382
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "Build"

    invoke-virtual {v0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Transition"

    const/high16 v3, 0x3f80

    const/16 v5, 0xf

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    .line 387
    :cond_3
    return-void
.end method


# virtual methods
.method public checkCurrentWeatherCondition()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, mHasIndexChange:Z
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-eqz v5, :cond_1

    .line 410
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v5}, Lcom/htc/weatheridlescreen/data/WeatherData;->changeTodayIndex()Z

    move-result v0

    .line 412
    if-eqz v0, :cond_4

    .line 413
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v5}, Lcom/htc/weatheridlescreen/data/WeatherData;->getOffsetIndex()I

    move-result v1

    .line 414
    .local v1, mOffset:I
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v5}, Lcom/htc/weatheridlescreen/data/WeatherData;->getTotalDataSize()I

    move-result v2

    .line 416
    .local v2, mTotalDataSize:I
    if-ltz v1, :cond_0

    if-le v1, v2, :cond_2

    .line 417
    :cond_0
    const-string v4, "WIS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "checkCurrentWeatherCondition() - Invalid Weather Data!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->noWeatherData()V

    .line 419
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 431
    .end local v1           #mOffset:I
    .end local v2           #mTotalDataSize:I
    :cond_1
    :goto_0
    return v3

    .line 422
    .restart local v1       #mOffset:I
    .restart local v2       #mTotalDataSize:I
    :cond_2
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v5, :cond_3

    .line 423
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v5}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setFameToLoopInState()V

    .line 424
    :cond_3
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {p0, v5, v4, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->updateWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;ZZ)V

    .end local v1           #mOffset:I
    .end local v2           #mTotalDataSize:I
    :goto_1
    move v3, v4

    .line 429
    goto :goto_0

    .line 427
    :cond_4
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playBuildMarkerForCurrent()V

    goto :goto_1
.end method

.method public checkCurrentWeatherConditionForInvisible()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, mHasIndexChange:Z
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-eqz v3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v3}, Lcom/htc/weatheridlescreen/data/WeatherData;->changeTodayIndex()Z

    move-result v0

    .line 462
    if-eqz v0, :cond_1

    .line 463
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v3}, Lcom/htc/weatheridlescreen/data/WeatherData;->getOffsetIndex()I

    move-result v1

    .line 464
    .local v1, mOffset:I
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v3}, Lcom/htc/weatheridlescreen/data/WeatherData;->getTotalDataSize()I

    move-result v2

    .line 466
    .local v2, mTotalDataSize:I
    if-ltz v1, :cond_0

    if-le v1, v2, :cond_2

    .line 467
    :cond_0
    const-string v3, "WIS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "checkCurrentWeatherConditionForInvisible() - Invalid Weather Data!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->noWeatherData()V

    .line 475
    .end local v1           #mOffset:I
    .end local v2           #mTotalDataSize:I
    :cond_1
    :goto_0
    return-void

    .line 471
    .restart local v1       #mOffset:I
    .restart local v2       #mTotalDataSize:I
    :cond_2
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {p0, v3, v4, v4}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->updateWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;ZZ)V

    goto :goto_0
.end method

.method public noWeatherData()V
    .locals 4

    .prologue
    .line 723
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 724
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIWhoIsFxWeaCtl:I

    .line 725
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setWeatherInfo(Lcom/htc/weatheridlescreen/data/WeatherData;)V

    .line 730
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 732
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->initialBackgroundFrame(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "noWeatherData() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 130
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->onDestroy()V

    .line 131
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 135
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->onDestroy()V

    .line 136
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    .line 138
    :cond_1
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 139
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 140
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 141
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 142
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxSceneForBGInOut:Lcom/htc/fusion/fx/FxScene;

    .line 143
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mContext:Landroid/content/Context;

    .line 144
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    .line 145
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mJustCreate:Z

    .line 146
    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsCurrentTLC:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPreview:Z

    .line 148
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIWhoIsFxWeaCtl:I

    .line 77
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPreview:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->stop()V

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->onPause()V

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->stop()V

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkCurrentWeatherCondition()Z

    .line 101
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIWhoIsFxWeaCtl:I

    .line 112
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->stop()V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->stop()V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    goto :goto_0
.end method

.method public playBackgroundEffect(Z)V
    .locals 4
    .parameter "isNight"

    .prologue
    .line 569
    move v1, p1

    .line 570
    .local v1, mIsNight:Z
    const/4 v2, 0x1

    .line 571
    .local v2, mIsRain:Z
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-eqz v3, :cond_0

    .line 572
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v3}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsRain()Z

    move-result v2

    .line 573
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v3}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsNight()Z

    move-result v1

    .line 576
    :cond_0
    if-nez v2, :cond_2

    if-eq v1, p1, :cond_2

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, mEffect:I
    if-nez p1, :cond_1

    .line 580
    const/4 v0, 0x2

    .line 581
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playBackgroundEffect(I)V

    .line 583
    .end local v0           #mEffect:I
    :cond_2
    return-void
.end method

.method public declared-synchronized playBuildMarkerForCurrent()V
    .locals 6

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->stop()V

    .line 439
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherData;->checkRainAndNightState()V

    .line 443
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsRain()Z

    move-result v0

    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsNight()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkBackgroundEffect(ZZ)V

    .line 444
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 446
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "Build"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Transition"

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_2
    monitor-exit p0

    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playLoopInMarker()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 671
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-nez v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIWhoIsFxWeaCtl:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 676
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 681
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playLoopInMarker(Z)V

    goto :goto_0

    .line 686
    :cond_3
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_4

    .line 687
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 691
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playLoopInMarker(Z)V

    goto :goto_0
.end method

.method public playWeatherConditionForPreview(ILjava/lang/String;)V
    .locals 7
    .parameter "condition"
    .parameter "description"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 751
    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPreview:Z

    .line 757
    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1c

    if-ne p1, v2, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mJustCreate:Z

    if-eqz v2, :cond_5

    .line 767
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mJustCreate:Z

    .line 768
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsCurrentTLC:Z

    .line 769
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v2, :cond_2

    .line 770
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 772
    :cond_2
    sget-object v2, Lcom/htc/weatheridlescreen/WISConsts;->TABLE_BACKGROUND:[I

    aget v2, v2, p1

    if-ne v2, v0, :cond_3

    move v2, v0

    :goto_1
    sget-object v3, Lcom/htc/weatheridlescreen/WISConsts;->TABLE_BACKGROUND:[I

    aget v3, v3, p1

    if-ne v3, v4, :cond_4

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->initialBackgroundFrame(ZZ)V

    .line 773
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setWeatherCondition(ILjava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 776
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "Build"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v6

    .line 816
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "WIS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "playWeatherConditionForPreview() - Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    move v2, v1

    .line 772
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    .line 781
    :cond_5
    :try_start_1
    sget-object v2, Lcom/htc/weatheridlescreen/WISConsts;->TABLE_BACKGROUND:[I

    aget v2, v2, p1

    if-ne v2, v0, :cond_9

    move v2, v0

    :goto_3
    sget-object v3, Lcom/htc/weatheridlescreen/WISConsts;->TABLE_BACKGROUND:[I

    aget v3, v3, p1

    if-ne v3, v4, :cond_a

    :goto_4
    invoke-direct {p0, v2, v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkBackgroundEffect(ZZ)V

    .line 782
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsCurrentTLC:Z

    if-eqz v0, :cond_b

    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsCurrentTLC:Z

    .line 784
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_6

    .line 785
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setWeatherCondition(ILjava/lang/String;)V

    .line 787
    :cond_6
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_7

    .line 788
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 789
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "Exit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V

    .line 791
    :cond_7
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_8

    .line 792
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 793
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "Build"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V

    .line 810
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Transition"

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    goto/16 :goto_0

    :cond_9
    move v2, v1

    .line 781
    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_4

    .line 797
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsCurrentTLC:Z

    .line 798
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_c

    .line 799
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setWeatherCondition(ILjava/lang/String;)V

    .line 801
    :cond_c
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_d

    .line 802
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 803
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "Exit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V

    .line 805
    :cond_d
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_8

    .line 806
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 807
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "Build"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public setLoopInFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIWhoIsFxWeaCtl:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 703
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->stop()V

    .line 705
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 706
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setFameToLoopInState()V

    goto :goto_0

    .line 710
    :cond_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->stop()V

    .line 712
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 713
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setFameToLoopInState()V

    goto :goto_0
.end method

.method public declared-synchronized updateWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;ZZ)V
    .locals 7
    .parameter "weatherData"
    .parameter "needToPlay"
    .parameter "neeToCompare"

    .prologue
    .line 287
    monitor-enter p0

    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 294
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 295
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    invoke-direct {p0, v0, p1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->isSameWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;Lcom/htc/weatheridlescreen/data/WeatherData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v6

    .line 363
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WIS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updateWeatherData() - Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 300
    :cond_2
    if-nez p2, :cond_6

    .line 302
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIWhoIsFxWeaCtl:I

    .line 303
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, p1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setWeatherInfo(Lcom/htc/weatheridlescreen/data/WeatherData;)V

    .line 306
    :cond_3
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsRain()Z

    move-result v0

    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsNight()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->initialBackgroundFrame(ZZ)V

    .line 308
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-nez v0, :cond_4

    .line 309
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->setLoopInFrame()V

    .line 317
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    goto :goto_0

    .line 313
    :cond_5
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-nez v0, :cond_4

    .line 314
    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsRain()Z

    move-result v0

    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsNight()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->initialBackgroundFrame(ZZ)V

    goto :goto_1

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    if-nez v0, :cond_a

    .line 323
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 324
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_7

    .line 325
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0, p1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setWeatherInfo(Lcom/htc/weatheridlescreen/data/WeatherData;)V

    .line 326
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 327
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "Build"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V

    .line 329
    :cond_7
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_8

    .line 330
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Transition"

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_9

    .line 333
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 335
    :cond_9
    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsRain()Z

    move-result v0

    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getIsNight()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkBackgroundEffect(ZZ)V

    goto/16 :goto_0

    .line 339
    :cond_a
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z

    .line 341
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 342
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "LoopIn"

    invoke-direct {p0, v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkMarkedIsPlaying(Lcom/htc/weatheridlescreen/fusion/WISFxControl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 343
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->stop()V

    .line 348
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 349
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "LoopIn"

    invoke-direct {p0, v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkMarkedIsPlaying(Lcom/htc/weatheridlescreen/fusion/WISFxControl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 350
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->stop()V

    .line 355
    :cond_c
    :goto_3
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z

    if-nez v0, :cond_0

    .line 357
    invoke-direct {p0, p1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playNewWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;)V

    goto/16 :goto_0

    .line 345
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z

    goto :goto_2

    .line 352
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
