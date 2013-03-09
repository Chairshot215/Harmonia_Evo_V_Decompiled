.class public Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;
.super Ljava/lang/Object;
.source "AnalogClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;,
        Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;,
        Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;
    }
.end annotation


# static fields
.field public static final WHAT_ON_INIT:I = 0x2329


# instance fields
.field private mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

.field private mApplication:Landroid/content/Context;

.field private mBShowCityLabel:Z

.field private mBoolAppDestroy:Z

.field private mCityCode:Ljava/lang/String;

.field private mCityName:Ljava/lang/String;

.field private mClockClick:Landroid/view/View$OnClickListener;

.field private mFxControlsLand:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

.field private mFxControlsPort:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

.field private mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

.field protected mIsHomeClock:Z

.field private mOrientation:I

.field mPauseByAddToHome:Z

.field private mResContext:Landroid/content/Context;

.field private mSceneLand:Lcom/htc/fusion/fx/FxScene;

.field private mScenePort:Lcom/htc/fusion/fx/FxScene;

.field private mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

.field private mTimeCtrlLock:Ljava/lang/Object;

.field private mTimeListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

.field protected mTimeZoneChanged:Z

.field protected mTimeZoneStr:Ljava/lang/String;

.field private mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mUiState:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

.field private mUiWorker:Landroid/os/Handler$Callback;

.field protected mUseCurrentLocation:Z

.field private mWorker:Landroid/os/Handler$Callback;

.field private mhHandler:Landroid/os/Handler;

.field private mhUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;ILcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;Lcom/htc/clock3dwidget/ClockRes;)V
    .locals 5
    .parameter "resContext"
    .parameter "appContext"
    .parameter "host"
    .parameter "scenePort"
    .parameter "sceneLand"
    .parameter "orientation"
    .parameter "callback"
    .parameter "res"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mOrientation:I

    .line 48
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mBShowCityLabel:Z

    .line 50
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;

    invoke-direct {v1, p0, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$1;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    .line 51
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUseCurrentLocation:Z

    .line 52
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mIsHomeClock:Z

    .line 53
    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mCityCode:Ljava/lang/String;

    .line 54
    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mCityName:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeZoneStr:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeZoneChanged:Z

    .line 57
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrlLock:Ljava/lang/Object;

    .line 58
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mPauseByAddToHome:Z

    .line 59
    iput-boolean v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mBoolAppDestroy:Z

    .line 60
    sget-object v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->NONE:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiState:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    .line 207
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$1;

    invoke-direct {v1, p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$1;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mClockClick:Landroid/view/View$OnClickListener;

    .line 294
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;

    invoke-direct {v1, p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mWorker:Landroid/os/Handler$Callback;

    .line 392
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;

    invoke-direct {v1, p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiWorker:Landroid/os/Handler$Callback;

    .line 73
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mResContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mApplication:Landroid/content/Context;

    .line 75
    if-eqz p3, :cond_1

    .line 76
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mWorker:Landroid/os/Handler$Callback;

    invoke-interface {p3, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 77
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiWorker:Landroid/os/Handler$Callback;

    invoke-interface {p3, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 83
    :goto_0
    iput-object p4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 84
    iput-object p5, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    .line 85
    iput p6, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mOrientation:I

    .line 87
    iput-object p7, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    .line 88
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mResContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mApplication:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    .line 90
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v1, v2, p8}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;-><init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/clock3dwidget/ClockRes;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    .line 91
    sget-boolean v1, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_LAND:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    :goto_1
    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    .line 92
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    invoke-virtual {v1, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->bind(Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;)V

    .line 93
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mOrientation:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    :goto_2
    invoke-virtual {v2, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->init(Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;)V

    .line 95
    if-eqz p3, :cond_0

    .line 96
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mClockClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, defaultCurName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/clock/util/location/LocationUtil;->setDefaultLocName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->initView()V

    .line 103
    const v1, 0x9001

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(IJ)V

    .line 104
    return-void

    .line 79
    .end local v0           #defaultCurName:Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mWorker:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    .line 80
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiWorker:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    goto :goto_0

    .line 91
    :cond_2
    new-instance v1, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v1, v2, p8}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;-><init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/clock3dwidget/ClockRes;)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mApplication:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doActivityResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->initData(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock/util/time/TimeCtrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;)Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiState:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doTimeChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doFormatChanged()V

    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->unInitTimeCtrl()V

    .line 187
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->unbind(Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;)V

    .line 189
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->clear()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 199
    :cond_2
    return-void
.end method

.method private doActivityResult(Landroid/content/Intent;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 582
    if-nez p1, :cond_0

    .line 586
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->switchToNewCity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private doConfigurationChanged()V
    .locals 3

    .prologue
    .line 623
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->init(Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;)V

    .line 624
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doResume()V

    .line 625
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;

    goto :goto_0
.end method

.method private doFormatChanged()V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/time/TimeCtrl;->is24HourFormat()Z

    move-result v1

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/time/TimeCtrl;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setDateFormat(ZLjava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->onTimeChanged()V

    .line 608
    :cond_0
    return-void
.end method

.method private doResumeInKeyguard()V
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, msg:Landroid/os/Message;
    const v1, 0x9015

    iput v1, v0, Landroid/os/Message;->what:I

    .line 204
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 205
    return-void
.end method

.method private doTimeChanged()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->onTimeChanged()V

    .line 600
    :cond_0
    return-void
.end method

.method private hasNonUiMessage(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    .line 471
    :goto_0
    return v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    goto :goto_0

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initData(Ljava/lang/String;Z)V
    .locals 3
    .parameter "citnameCode"
    .parameter "bShowCityLabel"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_1

    const-string v2, "Home City"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mIsHomeClock:Z

    .line 216
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUseCurrentLocation:Z

    .line 225
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mCityCode:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->unInitTimeCtrl()V

    .line 227
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->initTimeCtrl()V

    .line 228
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/time/TimeCtrl;->updateFormat()Z

    .line 229
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/time/TimeCtrl;->is24HourFormat()Z

    move-result v1

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/time/TimeCtrl;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setDateFormat(ZLjava/lang/String;)V

    .line 231
    iput-boolean p2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mBShowCityLabel:Z

    .line 232
    const v0, 0x8005

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendUiMessageDelayed(IJ)V

    .line 233
    return-void

    .line 218
    :cond_1
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mIsHomeClock:Z

    .line 219
    if-eqz p1, :cond_2

    const-string v2, "Current City"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUseCurrentLocation:Z

    .line 221
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->hasCurrentLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUseCurrentLocation:Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 219
    goto :goto_1
.end method

.method private initTimeCtrl()V
    .locals 7

    .prologue
    .line 236
    iget-object v6, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrlLock:Ljava/lang/Object;

    monitor-enter v6

    .line 237
    :try_start_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 238
    .local v4, handler:Landroid/os/Handler;
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    if-eqz v0, :cond_2

    .line 240
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUseCurrentLocation:Z

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;

    invoke-direct {v0}, Lcom/htc/clock/util/time/CurLocationTimeCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mResContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mCityCode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/clock/util/time/TimeCtrl;->init(Landroid/content/Context;Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;ILandroid/os/Handler;Ljava/lang/String;)V

    .line 255
    :goto_1
    monitor-exit v6

    .line 256
    return-void

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mIsHomeClock:Z

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Lcom/htc/clock/util/time/HomeTimeCtrl;

    invoke-direct {v0}, Lcom/htc/clock/util/time/HomeTimeCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    goto :goto_0

    .line 255
    .end local v4           #handler:Landroid/os/Handler;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    .restart local v4       #handler:Landroid/os/Handler;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/htc/clock/util/time/TimeCtrl;

    invoke-direct {v0}, Lcom/htc/clock/util/time/TimeCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    goto :goto_0

    .line 250
    :cond_2
    new-instance v0, Lcom/htc/clock/util/time/TimeCtrl;

    invoke-direct {v0}, Lcom/htc/clock/util/time/TimeCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    .line 251
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mResContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    const/4 v3, 0x6

    iget-object v5, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mCityCode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/clock/util/time/TimeCtrl;->init(Landroid/content/Context;Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;ILandroid/os/Handler;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private obtainNonUiMessage()Landroid/os/Message;
    .locals 2

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 505
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 510
    :cond_0
    :goto_0
    return-object v0

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method private removeMessages()V
    .locals 1

    .prologue
    .line 165
    const v0, 0x9001

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 166
    const v0, 0x9002

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 168
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 169
    const v0, 0x9003

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 170
    const v0, 0x9205

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 171
    const v0, 0x9011

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 172
    const v0, 0x9012

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 173
    const v0, 0x9014

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 176
    const v0, 0x8001

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 177
    const v0, 0x8022

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 178
    const v0, 0x8019

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 179
    const v0, 0x8004

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 180
    const v0, 0x8005

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 181
    const v0, 0x8011

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 182
    return-void
.end method

.method private switchToNewCity(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    invoke-interface {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;->savePropertyData(Landroid/content/Intent;)V

    .line 612
    const v0, 0x9001

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(IJ)V

    .line 613
    return-void
.end method

.method private unInitTimeCtrl()V
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/time/TimeCtrl;->uninit()V

    .line 263
    :cond_0
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public doActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 149
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->obtainNonUiMessage()Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, msg:Landroid/os/Message;
    const v1, 0x9014

    iput v1, v0, Landroid/os/Message;->what:I

    .line 152
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(Landroid/os/Message;J)V

    .line 155
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mBoolAppDestroy:Z

    .line 159
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeMessages()V

    .line 160
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->clear()V

    .line 161
    return-void
.end method

.method public doHostMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 135
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOST_USER_PRESENT,arg1= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUiState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiState:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 136
    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiState:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    sget-object v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->PAUSED:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiState:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    sget-object v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->NONE:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    if-ne v0, v1, :cond_0

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doResumeInKeyguard()V

    goto :goto_0

    .line 143
    :pswitch_2
    const v0, 0x9011

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(IJ)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doPause()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x2

    .line 114
    const v1, 0x8022

    invoke-virtual {p0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 120
    iput v2, v0, Landroid/os/Message;->what:I

    .line 121
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 127
    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(Landroid/os/Message;J)V

    .line 128
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 124
    iput v2, v0, Landroid/os/Message;->what:I

    .line 125
    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method public doResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 107
    const v0, 0x8022

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 110
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(IJ)V

    .line 111
    return-void
.end method

.method public doTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mBoolAppDestroy:Z

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->doTiltChanged(F)V

    goto :goto_0
.end method

.method protected initView()V
    .locals 4

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->updateCityName()V

    .line 578
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setAnimationFeedback(ZLcom/htc/android/rosie/widget/Widget$Host$Worker;Landroid/os/Handler;)V

    .line 579
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const v1, 0x9011

    .line 616
    iput p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mOrientation:I

    .line 617
    invoke-direct {p0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->hasNonUiMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 620
    :cond_0
    return-void
.end method

.method public onNotifyWidgetPause(I)V
    .locals 3
    .parameter "notifyCause"

    .prologue
    .line 287
    const v0, 0x8001

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 288
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_0

    .line 289
    const v0, 0x9002

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(IJ)V

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setPause(Z)V

    goto :goto_0
.end method

.method protected removeNonUiMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method protected removeUiMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method protected sendNonUiMessageDelayed(IJ)V
    .locals 3
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    const-wide/16 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 476
    cmp-long v0, p2, v1

    if-lez v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 481
    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected sendNonUiMessageDelayed(Landroid/os/Message;J)V
    .locals 3
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    const-wide/16 v1, 0x0

    .line 489
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 490
    cmp-long v0, p2, v1

    if-lez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 495
    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    .line 496
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected sendUiMessageDelayed(IJ)V
    .locals 3
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    const-wide/16 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 431
    cmp-long v0, p2, v1

    if-lez v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 436
    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    .line 437
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected sendUiMessageDelayed(Landroid/os/Message;J)V
    .locals 3
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    const-wide/16 v1, 0x0

    .line 444
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 445
    cmp-long v0, p2, v1

    if-lez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 450
    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    .line 451
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected setCityName(Ljava/lang/String;)V
    .locals 2
    .parameter "cityName"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 547
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mBShowCityLabel:Z

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 549
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected showCityLabel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 558
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 559
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_3

    .line 560
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUseCurrentLocation:Z

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 562
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mIsHomeClock:Z

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 566
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 572
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected updateCityName()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/time/TimeCtrl;->getTimeZoneCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mCityName:Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mCityName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->setCityName(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->showCityLabel()V

    goto :goto_0
.end method

.method public updateTime()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->onTimeChanged()V

    .line 543
    :cond_0
    return-void
.end method

.method public updateTimeZone()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/time/TimeCtrl;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeZoneStr:Ljava/lang/String;

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeCtrl~ getCalendar mTimeZoneStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeZoneStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeZoneStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setTimeZone(Ljava/lang/String;)V

    .line 537
    :cond_0
    return-void
.end method

.method protected what_Is_Paused()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setPause(Z)V

    .line 390
    :cond_0
    return-void
.end method
