.class public Lcom/htc/android/worldclock/WorldClockTabControl;
.super Lcom/htc/widget/CarouselActivity;
.source "WorldClockTabControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/WorldClockTabControl$UIHandler;,
        Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;,
        Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.htc.android.worldclock.TabCarouselProvider"

.field private static final SCREEN_DIMMED:Ljava/lang/String; = "screen_dimmed"

.field private static final SCREEN_SAVER_MODE:Ljava/lang/String; = "screen_saver_mode"

.field public static final TAB_ALARM:Ljava/lang/String; = "2"

.field public static final TAB_DESKCLOCK:Ljava/lang/String; = "0"

.field public static final TAB_STOPWATCH:Ljava/lang/String; = "3"

.field public static final TAB_TIMER:Ljava/lang/String; = "4"

.field public static final TAB_WORLDCLOCK:Ljava/lang/String; = "1"

.field public static final WORLDCLOCK_ACTION:Ljava/lang/String; = "worldclock_action"


# instance fields
.field private final UPDATE_RESET_LAYOUT:I

.field private mDestroyed:Z

.field public mDimmed:Z

.field private mDisableKeyguard:Z

.field private mFirstTab:Z

.field private mHardKeyboardHidden:I

.field private mHardwarekeyboardChanged:Z

.field private mInitSaverCallback:Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;

.field private mIntentTab:Ljava/lang/String;

.field private mLastTab:Ljava/lang/String;

.field private mLastUpdateTime:J

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mOnCreateOrientation:I

.field private mOrientation:I

.field private mResId:[[I

.field private mResetLayout:Z

.field private mSwitchWidget:Landroid/view/View;

.field private mTabCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Lcom/htc/widget/CarouselHost;

.field private mTabSwitch:Landroid/view/View;

.field private mTintView:Landroid/view/View;

.field private mTouching:[Z

.field private final mUIHandler:Landroid/os/Handler;

.field private mUnDimAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mWakeLock:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    const-string v0, "com.htc.android.worldclock.TabCarouselProvider"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 47
    const/16 v0, 0x701

    iput v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->UPDATE_RESET_LAYOUT:I

    .line 52
    const-string v0, "1"

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mLastTab:Ljava/lang/String;

    .line 54
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    .line 56
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->tabControl_res()[[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v2, v0, v2

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTouching:[Z

    .line 66
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDisableKeyguard:Z

    .line 67
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mWakeLock:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mHardwarekeyboardChanged:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResetLayout:Z

    .line 75
    new-instance v0, Lcom/htc/android/worldclock/WorldClockTabControl$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/WorldClockTabControl$UIHandler;-><init>(Lcom/htc/android/worldclock/WorldClockTabControl;Lcom/htc/android/worldclock/WorldClockTabControl$1;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mUIHandler:Landroid/os/Handler;

    .line 76
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mFirstTab:Z

    .line 77
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDestroyed:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabCallbackList:Ljava/util/ArrayList;

    .line 408
    new-instance v0, Lcom/htc/android/worldclock/WorldClockTabControl$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/WorldClockTabControl$1;-><init>(Lcom/htc/android/worldclock/WorldClockTabControl;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mUnDimAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 94
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/WorldClockTabControl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/worldclock/WorldClockTabControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResetLayout:Z

    return p1
.end method

.method private closeMenu()V
    .locals 4

    .prologue
    .line 351
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 352
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 353
    .local v1, cbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    .line 354
    .local v0, cb:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;
    invoke-interface {v0}, Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;->onCloseMenu()V

    goto :goto_0

    .line 356
    .end local v0           #cb:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;
    :cond_0
    return-void
.end method

.method private declared-synchronized disableKeyguard()V
    .locals 4

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 474
    iget-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mWakeLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 477
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDisableKeyguard:Z

    if-nez v2, :cond_0

    .line 481
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDisableKeyguard:Z

    .line 483
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 484
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 485
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Lcom/htc/android/worldclock/Global;->getWakeLockFlag()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 486
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 473
    .end local v0           #win:Landroid/view/Window;
    .end local v1           #winParams:Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized enableKeyguard()V
    .locals 4

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 491
    iget-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDisableKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 503
    :goto_0
    monitor-exit p0

    return-void

    .line 495
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDisableKeyguard:Z

    .line 497
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 498
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 499
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x400001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 500
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 501
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x200001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 502
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    .end local v0           #win:Landroid/view/Window;
    .end local v1           #winParams:Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private initViews()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 133
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 134
    const/4 v2, 0x0

    .line 136
    .local v2, htcContext:Landroid/content/Context;
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    :goto_0
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 142
    .local v3, inflaterHtc:Landroid/view/LayoutInflater;
    const v6, 0x209002f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabSwitch:Landroid/view/View;

    .line 143
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabSwitch:Landroid/view/View;

    const v7, 0x1020013

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mSwitchWidget:Landroid/view/View;

    .line 146
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mMainView:Landroid/widget/RelativeLayout;

    .line 149
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 150
    .local v5, res:Landroid/content/res/Resources;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v4, lpTab:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mMainView:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabSwitch:Landroid/view/View;

    invoke-virtual {v6, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/WorldClockTabControl;->setContentView(Landroid/view/View;)V

    .line 159
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    .line 160
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 161
    .local v0, cfg:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mOrientation:I

    .line 162
    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v6, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mHardKeyboardHidden:I

    .line 163
    return-void

    .line 137
    .end local v0           #cfg:Landroid/content/res/Configuration;
    .end local v3           #inflaterHtc:Landroid/view/LayoutInflater;
    .end local v4           #lpTab:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 3

    .prologue
    .line 617
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 619
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getLoadSettings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    :goto_0
    return-void

    .line 623
    :cond_0
    new-instance v0, Lcom/htc/android/worldclock/SettingsReader;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/android/worldclock/SettingsReader;-><init>(Landroid/content/ContentResolver;)V

    .line 624
    .local v0, sr:Lcom/htc/android/worldclock/SettingsReader;
    invoke-virtual {v0}, Lcom/htc/android/worldclock/SettingsReader;->getStartWeekDay()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, weekday:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 627
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setStartWeekDay(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :cond_1
    :goto_1
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setLoadSettings(Landroid/content/Context;Z)V

    goto :goto_0

    .line 628
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private setTabs()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 245
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 246
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getResources()Landroid/content/res/Resources;

    .line 248
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "worldclock_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, lastTab:Ljava/lang/String;
    iput-object v9, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mIntentTab:Ljava/lang/String;

    .line 252
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mLastTab:Ljava/lang/String;

    .line 253
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/htc/android/worldclock/DeskClock;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v7, intent:Landroid/content/Intent;
    if-eqz v9, :cond_0

    .line 255
    const-string v0, "0"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "screen_dimmed"

    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "screen_dimmed"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    const-string v0, "screen_saver_mode"

    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "screen_saver_mode"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "0"

    const v3, 0x7f080029

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v6

    aget v4, v2, v6

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v6

    aget v5, v2, v10

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v6

    const/4 v6, 0x2

    aget v6, v2, v6

    const/16 v8, 0x65

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 269
    if-eqz v9, :cond_1

    .line 270
    iput-object v9, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mLastTab:Ljava/lang/String;

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mLastTab:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/htc/android/worldclock/Global;->PREVIEW_IMAGE:Z

    if-eqz v0, :cond_2

    .line 274
    iput-boolean v10, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mFirstTab:Z

    .line 275
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mSwitchWidget:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mLastTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 283
    return-void

    .line 277
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->loadSettings()V

    .line 278
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->addRemainTabs()V

    goto :goto_0
.end method

.method private updateKeyguardStatus()V
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 341
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->disableKeyguard()V

    .line 348
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/WorldClockTabControl;->setWakeLock(Z)V

    .line 345
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->enableKeyguard()V

    goto :goto_0
.end method


# virtual methods
.method public addRemainTabs()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 291
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 292
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getResources()Landroid/content/res/Resources;

    .line 298
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "1"

    const v3, 0x7f08002b

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v9

    aget v4, v2, v11

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v9

    aget v5, v2, v9

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v9

    aget v6, v2, v10

    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/htc/android/worldclock/WorldClock;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x65

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 305
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "2"

    const v3, 0x7f080040

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v10

    aget v4, v2, v11

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v10

    aget v5, v2, v9

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v10

    aget v6, v2, v10

    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/htc/android/worldclock/AlarmClock;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 311
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "3"

    const v3, 0x7f08003a

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v13

    aget v4, v2, v11

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v13

    aget v5, v2, v9

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v13

    aget v6, v2, v10

    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 318
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/htc/android/worldclock/Timer;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "4"

    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const-string v0, "4"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "4"

    const v3, 0x7f080060

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v12

    aget v4, v2, v11

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v12

    aget v5, v2, v9

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResId:[[I

    aget-object v2, v2, v12

    aget v6, v2, v10

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 329
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public addSavers()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 166
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 167
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v2, lpFill:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 172
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, deskClockSaver:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 176
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    .line 177
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    const/high16 v4, -0x6000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    .line 179
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mMainView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method

.method public checkRemainTabsAndSavers()V
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 604
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mFirstTab:Z

    if-eqz v0, :cond_0

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mFirstTab:Z

    .line 606
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->loadSettings()V

    .line 607
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->addRemainTabs()V

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->addSavers()V

    .line 611
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mInitSaverCallback:Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mInitSaverCallback:Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;

    invoke-interface {v0}, Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;->onInitSaver()V

    .line 614
    :cond_1
    return-void
.end method

.method public doDim(Z)V
    .locals 4
    .parameter "fade"

    .prologue
    .line 359
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 360
    const v3, 0x1020013

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/WorldClockTabControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 361
    .local v0, tabs:Landroid/view/View;
    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 366
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 369
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 371
    iget-boolean v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    if-eqz v3, :cond_1

    .line 372
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 375
    const/high16 v3, 0x3f00

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 383
    :goto_1
    iget-boolean v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    invoke-virtual {p0, v3, p1}, Lcom/htc/android/worldclock/WorldClockTabControl;->setWindowTint(ZZ)V

    .line 385
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 377
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 380
    const v3, 0x3e4ccccd

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_1
.end method

.method public getTouching()[Z
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 334
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTouching:[Z

    return-object v0
.end method

.method public initBackground()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->getCommonAppBkg(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 287
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mSwitchWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    return-void
.end method

.method public initScreenOrientation()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 122
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_0

    move v1, v2

    .line 124
    .local v1, isUiModeTypeDesk:Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initScreenOrientation: isUiModeTypeDesk = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 125
    if-ne v1, v2, :cond_1

    .line 126
    invoke-virtual {p0, v5}, Lcom/htc/android/worldclock/WorldClockTabControl;->setRequestedOrientation(I)V

    .line 130
    :goto_1
    return-void

    .line 122
    .end local v1           #isUiModeTypeDesk:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    .restart local v1       #isUiModeTypeDesk:Z
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/WorldClockTabControl;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x701

    .line 507
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 508
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 509
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mHardwarekeyboardChanged:Z

    .line 512
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mHardKeyboardHidden:I

    .line 514
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mHardwarekeyboardChanged:Z

    if-eqz v0, :cond_0

    .line 515
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/WorldClockTabControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResetLayout:Z

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mResetLayout:Z

    .line 521
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 100
    const-string v4, "[ATS][com.htc.android.worldclock][press_widget][turning_on]"

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 101
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/WorldClockTabControl;->setGId(I)V

    .line 102
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 105
    .local v0, c:Landroid/content/res/Configuration;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 106
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 107
    .local v2, m:Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 110
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 111
    .local v1, config:Landroid/content/res/Configuration;
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mOnCreateOrientation:I

    .line 113
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->initScreenOrientation()V

    .line 115
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->initViews()V

    .line 116
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->setTabs()V

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDestroyed:Z

    .line 212
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x701

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->enableKeyguard()V

    .line 214
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onDestroy()V

    .line 215
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 219
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 220
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 221
    const-string v1, "onNewIntent"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->initScreenOrientation()V

    .line 225
    const-string v1, "worldclock_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, lastTab:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent, lastTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 229
    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WorldClockTabControl.onNewIntent: unknow tab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 187
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 189
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onPause()V

    .line 190
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->updateKeyguardStatus()V

    .line 191
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->closeMenu()V

    .line 192
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 196
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 197
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onStart()V

    .line 199
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->updateKeyguardStatus()V

    .line 200
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 204
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 205
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onStop()V

    .line 206
    return-void
.end method

.method public declared-synchronized resetLayout()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    .line 527
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 528
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 529
    .local v6, res:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 530
    .local v2, config:Landroid/content/res/Configuration;
    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    .line 531
    .local v5, orientation:I
    iget v8, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mOrientation:I

    if-ne v8, v5, :cond_0

    .line 532
    const v8, 0x1020002

    invoke-virtual {p0, v8}, Lcom/htc/android/worldclock/WorldClockTabControl;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :goto_0
    monitor-exit p0

    return-void

    .line 537
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mLastUpdateTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-gtz v8, :cond_1

    .line 538
    const-string v8, "to prevent heavy update"

    invoke-static {v8}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 539
    iget-object v8, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mUIHandler:Landroid/os/Handler;

    const/16 v9, 0x701

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 527
    .end local v2           #config:Landroid/content/res/Configuration;
    .end local v5           #orientation:I
    .end local v6           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 542
    .restart local v2       #config:Landroid/content/res/Configuration;
    .restart local v5       #orientation:I
    .restart local v6       #res:Landroid/content/res/Resources;
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mLastUpdateTime:J

    .line 544
    iget-object v8, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabSwitch:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 546
    .local v4, lpTab:Landroid/view/ViewGroup$LayoutParams;
    const v8, 0x7f06005f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 548
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetlayout, lpTab.height ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 550
    iget-object v8, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabSwitch:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_title_bar(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 553
    .local v7, titleBar:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 554
    .local v1, cbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    .line 555
    .local v0, cb:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;
    invoke-interface {v0, v7}, Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;->onReset(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 557
    .end local v0           #cb:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;
    :cond_2
    iput v5, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mOrientation:I

    .line 558
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mHardwarekeyboardChanged:Z

    .line 559
    const v8, 0x1020002

    invoke-virtual {p0, v8}, Lcom/htc/android/worldclock/WorldClockTabControl;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setFullScreen()V
    .locals 4

    .prologue
    .line 430
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 431
    const v3, 0x1020013

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/WorldClockTabControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, tabs:Landroid/view/View;
    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 436
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 438
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 439
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 440
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 442
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public setInitSaverCallback(Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 593
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 594
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mInitSaverCallback:Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;

    .line 597
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabSwitch:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 598
    .local v0, lp_TabSwitch:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 599
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabSwitch:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    return-void
.end method

.method public setTabCallback(Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;)V
    .locals 7
    .parameter "l"

    .prologue
    .line 576
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 577
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 581
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 582
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 586
    .local v1, new_orientation:I
    iget v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mOnCreateOrientation:I

    if-eq v1, v3, :cond_0

    .line 587
    iget v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mOnCreateOrientation:I

    iput v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mOrientation:I

    .line 588
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x701

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 590
    :cond_0
    return-void
.end method

.method public setWakeLock(Z)V
    .locals 4
    .parameter "hold"

    .prologue
    .line 446
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 447
    if-eqz p1, :cond_1

    .line 448
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTabHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mWakeLock:Z

    if-eq v2, p1, :cond_0

    .line 456
    iput-boolean p1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mWakeLock:Z

    .line 457
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 458
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 459
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_2

    .line 460
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 464
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 465
    iget-boolean v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mWakeLock:Z

    if-eqz v2, :cond_3

    .line 466
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->disableKeyguard()V

    goto :goto_0

    .line 462
    :cond_2
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 468
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClockTabControl;->enableKeyguard()V

    goto :goto_0
.end method

.method public setWindowTint(ZZ)V
    .locals 3
    .parameter "enabled"
    .parameter "fadeAnimation"

    .prologue
    .line 389
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 390
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 394
    :cond_0
    if-eqz p1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    if-eqz p2, :cond_1

    const/high16 v1, 0x7f04

    :goto_1
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f040001

    goto :goto_1

    .line 401
    :cond_2
    if-eqz p2, :cond_3

    const v1, 0x7f040002

    :goto_2
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 403
    .local v0, unDimAmin:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mUnDimAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 404
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClockTabControl;->mTintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 401
    .end local v0           #unDimAmin:Landroid/view/animation/Animation;
    :cond_3
    const v1, 0x7f040003

    goto :goto_2
.end method
