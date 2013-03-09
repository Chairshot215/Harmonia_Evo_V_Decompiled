.class Lcom/htc/weatheridlescreen/fusion/WISFxControl;
.super Ljava/lang/Object;
.source "WISFxControl.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"


# instance fields
.field private PREFIX:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mFrameLoopInFirstTCL:I

.field mFrameLoopInMainStatusScene:I

.field private mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

.field private mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mIsPortrait:Z

.field private mIsVisible:Z

.field private mLatestPlayingMarked:Ljava/lang/String;

.field private mMainStateML:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;Landroid/content/Context;Z)V
    .locals 4
    .parameter "control"
    .parameter "context"
    .parameter "isPortrait"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "[WeatherControl_"

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->PREFIX:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 32
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 33
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    .line 34
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 36
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 37
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 38
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 39
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 40
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 41
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 43
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mContext:Landroid/content/Context;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mLatestPlayingMarked:Ljava/lang/String;

    .line 46
    iput-boolean v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mIsVisible:Z

    .line 47
    iput-boolean v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mIsPortrait:Z

    .line 190
    new-instance v0, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;

    invoke-direct {v0, p0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;-><init>(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mMainStateML:Lcom/htc/fusion/fx/MessageListener;

    .line 449
    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    .line 450
    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInMainStatusScene:I

    .line 51
    iput-object p2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mContext:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 53
    iput-boolean p3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mIsPortrait:Z

    .line 54
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mIsPortrait:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "P] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->PREFIX:Ljava/lang/String;

    .line 58
    :goto_0
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->findFxControlObject()V

    .line 59
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->PREFIX:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/weatheridlescreen/fusion/WISFxControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mLatestPlayingMarked:Ljava/lang/String;

    return-object p1
.end method

.method private findFxControlObject()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    const-string v0, "findFxControlObject() - "

    .line 64
    .local v0, FUNCTION:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v3, :cond_0

    .line 95
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "scenecontainer.main_weather_state"

    aput-object v3, v2, v5

    const-string v3, "textlabel.cityname"

    aput-object v3, v2, v6

    const-string v3, "textlabel.condition"

    aput-object v3, v2, v7

    const-string v3, "textlabel.citytemp_3digit"

    aput-object v3, v2, v8

    const-string v3, "textlabel.citytemp"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "textlabel.citytemphi"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "textlabel.citytemplow"

    aput-object v4, v2, v3

    .line 78
    .local v2, mNameArray:[Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 80
    .local v1, mFxItemArray:[Lcom/htc/fusion/fx/FxObject;
    aget-object v3, v1, v5

    check-cast v3, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 81
    aget-object v3, v1, v6

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 82
    aget-object v3, v1, v7

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 83
    aget-object v3, v1, v8

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 84
    aget-object v3, v1, v9

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 85
    const/4 v3, 0x5

    aget-object v3, v1, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 86
    const/4 v3, 0x6

    aget-object v3, v1, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    goto :goto_0
.end method

.method private getFxSceneByWeatherCondition(IZ)Lcom/htc/fusion/fx/FxScene;
    .locals 4
    .parameter "conditionID"
    .parameter "isMainState"

    .prologue
    const/16 v3, 0xa

    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, mScenePath:Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 390
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    iget-boolean v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mIsPortrait:Z

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

    .line 394
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

    .line 420
    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    return-object v1

    .line 397
    :cond_1
    const-string v0, "Port/main_state/"

    .line 398
    if-ge p1, v3, :cond_2

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
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

    .line 405
    :cond_3
    const-string v0, "Port/main_state/"

    .line 406
    if-ge p1, v3, :cond_4

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
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

    .line 412
    :cond_5
    const-string v0, "Port/forecast/s_"

    .line 413
    if-ge p1, v3, :cond_6

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_6
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

    goto/16 :goto_0
.end method

.method private noWeatherData()V
    .locals 4

    .prologue
    .line 214
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 217
    :cond_0
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 218
    const-string v1, ""

    .line 219
    .local v1, mStrNoData:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 231
    .end local v1           #mStrNoData:Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 234
    :cond_3
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_4

    .line 235
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 237
    :cond_4
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_5

    .line 238
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 240
    :cond_5
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_6

    .line 241
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 243
    :cond_6
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_7

    .line 244
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 246
    :cond_7
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_a

    .line 247
    iget v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    if-gez v2, :cond_9

    .line 248
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "LoopIn"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 249
    .local v0, mLoopInMarkerFirst:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_8

    .line 250
    iget v2, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    .line 252
    :cond_8
    iget v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    if-gez v2, :cond_9

    .line 253
    const/16 v2, 0x5c

    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    .line 255
    .end local v0           #mLoopInMarkerFirst:Lcom/htc/fusion/fx/Marker;
    :cond_9
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 257
    :cond_a
    return-void

    .line 227
    :cond_b
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLatestPlayingMarked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mLatestPlayingMarked:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 151
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    .line 153
    :cond_0
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 154
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    .line 155
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 156
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 157
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 158
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 159
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 160
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 161
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 162
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 163
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mContext:Landroid/content/Context;

    .line 164
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->PREFIX:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mLatestPlayingMarked:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->resetUI()V

    .line 427
    return-void
.end method

.method public playLoopInMarker(Z)V
    .locals 5
    .parameter "isCurrent"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 125
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 127
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "LoopIn"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "LoopIn"

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mLatestPlayingMarked:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "LoopIn"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;IFZ)V

    .line 133
    :cond_1
    return-void
.end method

.method public playMarker(Ljava/lang/String;Z)V
    .locals 2
    .parameter "szMarker"
    .parameter "isCurrent"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mLatestPlayingMarked:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 114
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "LoopIn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 120
    :cond_2
    return-void
.end method

.method public resetUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 447
    :cond_3
    return-void
.end method

.method public setFameToLoopInState()V
    .locals 4

    .prologue
    .line 454
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_4

    .line 456
    iget v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    if-gez v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "LoopIn"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 458
    .local v0, mLoopInMarkerFirst:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 459
    iget v2, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    .line 461
    :cond_0
    iget v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    if-gez v2, :cond_1

    .line 462
    const/16 v2, 0x5c

    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    .line 464
    .end local v0           #mLoopInMarkerFirst:Lcom/htc/fusion/fx/Marker;
    :cond_1
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInFirstTCL:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 467
    iget v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInMainStatusScene:I

    if-gez v2, :cond_3

    .line 468
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    const-string v3, "LoopIn"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 469
    .local v1, mLoopInMarkerMainStatusScene:Lcom/htc/fusion/fx/Marker;
    if-eqz v1, :cond_2

    .line 470
    iget v2, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInMainStatusScene:I

    .line 472
    :cond_2
    iget v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInMainStatusScene:I

    if-gez v2, :cond_3

    .line 473
    const/16 v2, 0x4f

    iput v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInMainStatusScene:I

    .line 475
    .end local v1           #mLoopInMarkerMainStatusScene:Lcom/htc/fusion/fx/Marker;
    :cond_3
    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    iget v3, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFrameLoopInMainStatusScene:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 477
    :cond_4
    return-void
.end method

.method public setVisilbe(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mIsVisible:Z

    .line 101
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 103
    :cond_0
    return-void
.end method

.method public declared-synchronized setWeatherCondition(ILjava/lang/String;)V
    .locals 3
    .parameter "condition"
    .parameter "description"

    .prologue
    .line 261
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->getFxSceneByWeatherCondition(IZ)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 263
    .local v0, mFxSceneForMainState:Lcom/htc/fusion/fx/FxScene;
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 264
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 265
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 266
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxScene;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    .line 270
    :cond_0
    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    .line 271
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxScene;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mMainStateML:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 274
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "timeline.rain"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, p2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_4

    .line 286
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_5

    .line 289
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 291
    :cond_5
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_6

    .line 292
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 294
    :cond_6
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_7

    .line 295
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_7
    monitor-exit p0

    return-void

    .line 261
    .end local v0           #mFxSceneForMainState:Lcom/htc/fusion/fx/FxScene;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setWeatherInfo(Lcom/htc/weatheridlescreen/data/WeatherData;)V
    .locals 7
    .parameter "weatherData"

    .prologue
    .line 306
    monitor-enter p0

    if-nez p1, :cond_1

    .line 308
    :try_start_0
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->noWeatherData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 312
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getOffsetIndex()I

    move-result v2

    .line 313
    .local v2, mOffsetIndex:I
    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getConditionId()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 314
    .local v3, mTotalCount:I
    if-lt v2, v3, :cond_2

    .line 318
    add-int/lit8 v2, v3, -0x1

    .line 321
    :cond_2
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v5, :cond_3

    .line 322
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 324
    :cond_3
    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getConditionId()Ljava/util/ArrayList;

    move-result-object v0

    .line 325
    .local v0, mConditionID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->getFxSceneByWeatherCondition(IZ)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 327
    .local v1, mFxSceneForMainState:Lcom/htc/fusion/fx/FxScene;
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 328
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v5, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 329
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSCMainState:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 330
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v5, :cond_4

    .line 331
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/FxScene;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 332
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    .line 334
    :cond_4
    iput-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    .line 335
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v5, :cond_5

    .line 336
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/FxScene;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mMainStateML:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v5, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 337
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 338
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    const-string v6, "timeline.rain"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 342
    :cond_5
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v5, :cond_0

    .line 348
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_6

    .line 349
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 353
    :cond_6
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_7

    .line 354
    iget-object v6, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getConditionName()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 358
    :cond_7
    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentTemperature()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, strCurrTemp:Ljava/lang/String;
    if-nez v4, :cond_8

    .line 360
    const-string v4, ""

    .line 362
    :cond_8
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_b

    .line 363
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v5, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 364
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 365
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_9

    .line 366
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 378
    :cond_9
    :goto_1
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_a

    .line 379
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLHighTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentHighTemperature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 380
    :cond_a
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_0

    .line 381
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLLowTemperature:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentLowTemperature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 306
    .end local v0           #mConditionID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1           #mFxSceneForMainState:Lcom/htc/fusion/fx/FxScene;
    .end local v2           #mOffsetIndex:I
    .end local v3           #mTotalCount:I
    .end local v4           #strCurrTemp:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 369
    .restart local v0       #mConditionID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v1       #mFxSceneForMainState:Lcom/htc/fusion/fx/FxScene;
    .restart local v2       #mOffsetIndex:I
    .restart local v3       #mTotalCount:I
    .restart local v4       #strCurrTemp:Ljava/lang/String;
    :cond_b
    :try_start_2
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_c

    .line 370
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentTemperature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 371
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 373
    :cond_c
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_9

    .line 374
    iget-object v5, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCurTemp3Digit:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mLatestPlayingMarked:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 144
    :cond_1
    return-void
.end method
