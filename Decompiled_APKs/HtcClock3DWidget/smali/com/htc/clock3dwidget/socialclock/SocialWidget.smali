.class public Lcom/htc/clock3dwidget/socialclock/SocialWidget;
.super Ljava/lang/Object;
.source "SocialWidget.java"


# static fields
.field public static final WHAT_ON_INIT:I = 0x2329

.field public static final WHAT_ON_RESUME_DELAY:I = 0x232a

.field public static final WHAT_UI_UPDATE:I = 0x238d


# instance fields
.field private mApplication:Landroid/content/Context;

.field private mBoolAppDestroy:Z

.field private mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;

.field private mFxControlsLand:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

.field private mFxControlsPort:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

.field private mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mHost:Lcom/htc/android/rosie/widget/Widget$Host;

.field private mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

.field private mIsLoggedIn:Z

.field private mNeedToUpdate:Z

.field private mOnUpdateListener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;

.field private mOrientation:I

.field private mResContext:Landroid/content/Context;

.field private mResume:Z

.field private mSceneLand:Lcom/htc/fusion/fx/FxScene;

.field private mScenePort:Lcom/htc/fusion/fx/FxScene;

.field private mSocialClick:Landroid/view/View$OnClickListener;

.field private mSocialData:Lcom/htc/clock/util/social/SocialData;

.field private mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

.field private mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mUiWorker:Landroid/os/Handler$Callback;

.field private mWorker:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Intent;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;)V
    .locals 5
    .parameter "resContext"
    .parameter "appContext"
    .parameter "host"
    .parameter "intent"
    .parameter "scenePort"
    .parameter "sceneLand"
    .parameter "callback"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mBoolAppDestroy:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResume:Z

    .line 38
    new-instance v0, Lcom/htc/clock/util/social/SocialNetworkCtrl;

    invoke-direct {v0}, Lcom/htc/clock/util/social/SocialNetworkCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    .line 39
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mNeedToUpdate:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mIsLoggedIn:Z

    .line 49
    iput v4, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mOrientation:I

    .line 144
    new-instance v0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget$1;-><init>(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialClick:Landroid/view/View$OnClickListener;

    .line 168
    new-instance v0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;-><init>(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mWorker:Landroid/os/Handler$Callback;

    .line 222
    new-instance v0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;-><init>(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiWorker:Landroid/os/Handler$Callback;

    .line 295
    new-instance v0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$4;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget$4;-><init>(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mOnUpdateListener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;

    .line 59
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mApplication:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mWorker:Landroid/os/Handler$Callback;

    invoke-interface {p3, v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 62
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiWorker:Landroid/os/Handler$Callback;

    invoke-interface {p3, v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 63
    iput-object p3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 64
    iput-object p5, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 65
    iput-object p6, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    .line 66
    new-instance v0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v0, v1}, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;-><init>(Lcom/htc/fusion/fx/FxScene;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    .line 67
    sget-boolean v0, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_LAND:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    :goto_0
    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    .line 69
    iput-object p7, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    .line 71
    new-instance v0, Lcom/htc/clock3dwidget/socialclock/SocialView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mApplication:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/socialclock/SocialView;-><init>(Landroid/content/Context;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mOrientation:I

    .line 74
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/socialclock/SocialView;->bind(Lcom/htc/clock3dwidget/socialclock/FxSocialControls;Lcom/htc/clock3dwidget/socialclock/FxSocialControls;)V

    .line 75
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

    iget v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mOrientation:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/clock3dwidget/socialclock/SocialView;->init(Lcom/htc/clock3dwidget/socialclock/FxSocialControls;)V

    .line 76
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/socialclock/SocialView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x2329

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 78
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v0, v1}, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;-><init>(Lcom/htc/fusion/fx/FxScene;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock3dwidget/socialclock/SocialView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mNeedToUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResume:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResume:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mOnUpdateListener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->doConfigurationChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->launchSocialAp()V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Lcom/htc/clock/util/social/SocialData;)Lcom/htc/clock/util/social/SocialData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialData:Lcom/htc/clock/util/social/SocialData;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mIsLoggedIn:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mIsLoggedIn:Z

    return p1
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/socialclock/SocialView;->unbind(Lcom/htc/clock3dwidget/socialclock/FxSocialControls;Lcom/htc/clock3dwidget/socialclock/FxSocialControls;)V

    .line 129
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/socialclock/SocialView;->clear()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->uninit()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 142
    :cond_3
    return-void
.end method

.method private doConfigurationChanged()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;

    iget v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsPort:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/clock3dwidget/socialclock/SocialView;->init(Lcom/htc/clock3dwidget/socialclock/FxSocialControls;)V

    .line 318
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->doResume()V

    .line 319
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mFxControlsLand:Lcom/htc/clock3dwidget/socialclock/FxSocialControls;

    goto :goto_0
.end method

.method private launchSocialAp()V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    if-nez v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mApplication:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/clock/util/social/SocialNetworkUtil;->launchLoginPage(Landroid/content/Context;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->getLastSocialData()Lcom/htc/clock/util/social/SocialData;

    move-result-object v0

    .line 159
    .local v0, data:Lcom/htc/clock/util/social/SocialData;
    if-eqz v0, :cond_2

    .line 160
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mApplication:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/clock/util/social/SocialData;->launchRelativePage(Landroid/content/Context;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mApplication:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/clock/util/social/SocialNetworkUtil;->launchMainPage(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private removeMessages()V
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x2329

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removeNonUiMessages(I)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removeNonUiMessages(I)V

    .line 119
    const/16 v0, 0x232a

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removeNonUiMessages(I)V

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removeNonUiMessages(I)V

    .line 121
    const v0, 0x9011

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removeNonUiMessages(I)V

    .line 122
    const v0, 0x9012

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removeNonUiMessages(I)V

    .line 123
    const/16 v0, 0x238d

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removeUiMessages(I)V

    .line 124
    return-void
.end method

.method private removePauseMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 280
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 283
    :cond_0
    return-void
.end method

.method private removeResumeMessage()V
    .locals 3

    .prologue
    const v2, 0x9004

    const/4 v1, 0x1

    .line 286
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 293
    :cond_1
    return-void
.end method


# virtual methods
.method public doActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 108
    return-void
.end method

.method public doDestroy()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mBoolAppDestroy:Z

    .line 112
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removeMessages()V

    .line 113
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->clear()V

    .line 114
    return-void
.end method

.method public doHostMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v1, 0x9011

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public doPause()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removePauseMessage()V

    .line 92
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 95
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 96
    return-void
.end method

.method public doResume()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->removeResumeMessage()V

    .line 83
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 84
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 85
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 86
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 87
    return-void
.end method

.method public isWidgetDestroy()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mBoolAppDestroy:Z

    return v0
.end method

.method public onConfigurationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const v1, 0x9011

    .line 310
    iput p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mOrientation:I

    .line 311
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 314
    :cond_0
    return-void
.end method

.method public removeMessage(Landroid/os/Handler;I)V
    .locals 0
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    :cond_0
    return-void
.end method

.method protected removeNonUiMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 253
    :cond_0
    return-void
.end method

.method protected removeUiMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public sendMessage(Landroid/os/Handler;IJ)V
    .locals 0
    .parameter "handler"
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    :cond_0
    return-void
.end method

.method public sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V
    .locals 0
    .parameter "handler"
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 277
    :cond_0
    return-void
.end method
