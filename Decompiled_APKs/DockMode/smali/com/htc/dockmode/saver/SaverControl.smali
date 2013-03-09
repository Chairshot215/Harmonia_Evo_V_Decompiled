.class public Lcom/htc/dockmode/saver/SaverControl;
.super Ljava/lang/Object;
.source "SaverControl.java"

# interfaces
.implements Lcom/htc/dockmode/utils/ControlInterface;


# static fields
.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDimScreen:I

.field private mDimTimeOut:Ljava/lang/Runnable;

.field private mDimTouchListener:Landroid/view/View$OnTouchListener;

.field private mDocksView:Landroid/view/View;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLayoutId:I

.field private mMainTouch:Landroid/view/View$OnTouchListener;

.field private mNightModeButton:Landroid/widget/Button;

.field private mNightModeClick:Landroid/view/View$OnClickListener;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mOnDimScreen:Ljava/lang/Runnable;

.field private mPluggedIn:Z

.field private mPrePluggedIn:Z

.field private mResId:Lcom/htc/dockmode/saver/SaverRes;

.field private mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

.field private mStopped:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private mWakeLock:Lcom/htc/dockmode/saver/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/htc/dockmode/saver/SaverControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/saver/SaverControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V
    .locals 1
    .parameter "activity"
    .parameter "uiHander"
    .parameter "nonUIHandler"
    .parameter "layoutId"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mStopped:Z

    .line 46
    iput-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mPluggedIn:Z

    .line 47
    iput-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mPrePluggedIn:Z

    .line 54
    iput-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mDestroyed:Z

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mDimScreen:I

    .line 136
    new-instance v0, Lcom/htc/dockmode/saver/SaverControl$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/saver/SaverControl$1;-><init>(Lcom/htc/dockmode/saver/SaverControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v0, Lcom/htc/dockmode/saver/SaverControl$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/saver/SaverControl$2;-><init>(Lcom/htc/dockmode/saver/SaverControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mOnDimScreen:Ljava/lang/Runnable;

    .line 223
    new-instance v0, Lcom/htc/dockmode/saver/SaverControl$3;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/saver/SaverControl$3;-><init>(Lcom/htc/dockmode/saver/SaverControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mDimTimeOut:Ljava/lang/Runnable;

    .line 249
    new-instance v0, Lcom/htc/dockmode/saver/SaverControl$4;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/saver/SaverControl$4;-><init>(Lcom/htc/dockmode/saver/SaverControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mNightModeClick:Landroid/view/View$OnClickListener;

    .line 261
    new-instance v0, Lcom/htc/dockmode/saver/SaverControl$5;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/saver/SaverControl$5;-><init>(Lcom/htc/dockmode/saver/SaverControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mMainTouch:Landroid/view/View$OnTouchListener;

    .line 273
    new-instance v0, Lcom/htc/dockmode/saver/SaverControl$6;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/saver/SaverControl$6;-><init>(Lcom/htc/dockmode/saver/SaverControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mDimTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    iput-object p1, p0, Lcom/htc/dockmode/saver/SaverControl;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/htc/dockmode/saver/SaverControl;->mUIHandler:Landroid/os/Handler;

    .line 63
    iput-object p3, p0, Lcom/htc/dockmode/saver/SaverControl;->mNonUIHandler:Landroid/os/Handler;

    .line 64
    iput p4, p0, Lcom/htc/dockmode/saver/SaverControl;->mLayoutId:I

    .line 65
    new-instance v0, Lcom/htc/dockmode/saver/WakeLock;

    invoke-direct {v0, p1}, Lcom/htc/dockmode/saver/WakeLock;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mWakeLock:Lcom/htc/dockmode/saver/WakeLock;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/saver/SaverControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/saver/SaverControl;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/dockmode/saver/SaverControl;->handleBatteryUpdate(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/dockmode/saver/SaverControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->exitDimScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/dockmode/saver/SaverControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mDimScreen:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/dockmode/saver/SaverControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/htc/dockmode/saver/SaverControl;->mDimScreen:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/dockmode/saver/SaverControl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dockmode/saver/SaverControl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mDimTimeOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/dockmode/saver/SaverControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dockmode/saver/SaverControl;)Lcom/htc/dockmode/saver/ScreenSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/dockmode/saver/SaverControl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/dockmode/saver/SaverControl;->doDim(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/dockmode/saver/SaverControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->stopDimTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/dockmode/saver/SaverControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->startDimTimer()V

    return-void
.end method

.method private doDim(Z)V
    .locals 1
    .parameter "fade"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    invoke-virtual {v0, p1}, Lcom/htc/dockmode/saver/ScreenSaver;->doDim(Z)V

    .line 247
    :cond_0
    return-void
.end method

.method private exitDimScreen()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    .line 287
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/dockmode/saver/SaverControl;->doDim(Z)V

    .line 288
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->startDimTimer()V

    .line 289
    return-void
.end method

.method private getBattery(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 197
    const-string v0, "plugged_in"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mPrePluggedIn:Z

    .line 199
    return-void
.end method

.method private handleBatteryUpdate(II)V
    .locals 2
    .parameter "plugStatus"
    .parameter "batteryLevel"

    .prologue
    .line 155
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 158
    .local v0, pluggedIn:Z
    :goto_0
    iget-boolean v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mPluggedIn:Z

    if-eq v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mWakeLock:Lcom/htc/dockmode/saver/WakeLock;

    invoke-virtual {v1, v0}, Lcom/htc/dockmode/saver/WakeLock;->setWakeLock(Z)V

    .line 162
    :cond_1
    iget-boolean v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mPluggedIn:Z

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mPrePluggedIn:Z

    if-eq v0, v1, :cond_3

    .line 163
    :cond_2
    iput-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mPluggedIn:Z

    iput-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mPrePluggedIn:Z

    .line 165
    :cond_3
    return-void

    .line 155
    .end local v0           #pluggedIn:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initRegister()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dockmode/saver/SaverControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/htc/dockmode/saver/ScreenSaver;->addSavers(Landroid/widget/RelativeLayout;)V

    .line 169
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mMainTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mResId:Lcom/htc/dockmode/saver/SaverRes;

    iget v1, v1, Lcom/htc/dockmode/saver/SaverRes;->clock_night_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mNightModeButton:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mNightModeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mNightModeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mNightModeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;

    const-string v2, "dock_mode_btn_right"

    iget-object v3, p0, Lcom/htc/dockmode/saver/SaverControl;->mResId:Lcom/htc/dockmode/saver/SaverRes;

    iget v3, v3, Lcom/htc/dockmode/saver/SaverRes;->base_right:I

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 175
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->updateWindowAttr()V

    .line 176
    return-void
.end method

.method private loadPreference()V
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/saver/SaverPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/htc/dockmode/saver/SaverControl;->getBattery(Landroid/content/SharedPreferences;)V

    .line 194
    return-void
.end method

.method private restoreScreen(Z)V
    .locals 2
    .parameter "refresh"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 240
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/dockmode/saver/SaverControl;->doDim(Z)V

    .line 241
    return-void
.end method

.method private savePreference()V
    .locals 4

    .prologue
    .line 117
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/saver/SaverPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "plugged_in"

    iget-boolean v2, p0, Lcom/htc/dockmode/saver/SaverControl;->mPluggedIn:Z

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    .line 121
    return-void
.end method

.method private setupSaverViews()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mResId:Lcom/htc/dockmode/saver/SaverRes;

    iget v1, v1, Lcom/htc/dockmode/saver/SaverRes;->dock_mode_docks:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mDocksView:Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mDimTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/saver/ScreenSaver;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    return-void
.end method

.method private startDimTimer()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mOnDimScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method private stopDimTimer()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mOnDimScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mDimTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method private unInitRegister()V
    .locals 2

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateWindowAttr()V
    .locals 3

    .prologue
    .line 179
    iget-object v2, p0, Lcom/htc/dockmode/saver/SaverControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 180
    .local v1, window:Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 182
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 183
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 184
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 185
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 188
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkExitDimScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    iget-boolean v1, v1, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    if-eqz v1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->exitDimScreen()V

    .line 297
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDoDestroy()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->savePreference()V

    .line 114
    return-void
.end method

.method public onDoInit1()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/htc/dockmode/saver/SaverRes;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/dockmode/saver/SaverRes;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mResId:Lcom/htc/dockmode/saver/SaverRes;

    .line 74
    new-instance v0, Lcom/htc/dockmode/saver/ScreenSaver;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/dockmode/saver/ScreenSaver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    .line 75
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->loadPreference()V

    .line 76
    return-void
.end method

.method public onDoInit2()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onDoPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mStopped:Z

    .line 97
    invoke-direct {p0, v1}, Lcom/htc/dockmode/saver/SaverControl;->restoreScreen(Z)V

    .line 98
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->stopDimTimer()V

    .line 99
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->unInitRegister()V

    .line 100
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;

    iput-boolean v1, v0, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    .line 104
    :cond_0
    return-void
.end method

.method public onDoRefresh1()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mLayoutId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mView:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->initView()V

    .line 82
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->setupSaverViews()V

    .line 83
    return-void
.end method

.method public onDoRemoveMessages()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onDoResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/htc/dockmode/saver/SaverControl;->mStopped:Z

    .line 90
    invoke-direct {p0, v0}, Lcom/htc/dockmode/saver/SaverControl;->doDim(Z)V

    .line 91
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->initRegister()V

    .line 92
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->startDimTimer()V

    .line 93
    return-void
.end method

.method public onDoStop()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public resetDimTimer()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->stopDimTimer()V

    .line 304
    invoke-direct {p0}, Lcom/htc/dockmode/saver/SaverControl;->startDimTimer()V

    .line 305
    return-void
.end method

.method public resetLayout()V
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mDocksView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mDocksView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 311
    .local v0, lpSaver:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dockmode/saver/SaverControl;->mResId:Lcom/htc/dockmode/saver/SaverRes;

    iget v2, v2, Lcom/htc/dockmode/saver/SaverRes;->dock_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 313
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl;->mDocksView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .end local v0           #lpSaver:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/dockmode/saver/SaverControl;->mView:Landroid/view/View;

    .line 70
    return-void
.end method
