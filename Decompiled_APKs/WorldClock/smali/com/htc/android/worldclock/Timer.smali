.class public Lcom/htc/android/worldclock/Timer;
.super Lcom/htc/android/worldclock/CloseMenuIME;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/Timer$MediaReceiver;,
        Lcom/htc/android/worldclock/Timer$IntentReceiver;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field protected static final MAX_TIME:J = 0x2ca1c80L

.field public static final PAUSE_STATE:I = 0x2

.field public static final PLAY_STATE:I = 0x1

.field public static final REQUEST_ALERT_RECEIVER:I = 0x1

.field static final REQUEST_ALERT_SOUND:I = 0x0

.field public static final TAB_TIMER:Ljava/lang/String; = "4"

.field public static final TIMER_ALERT_ACTION:Ljava/lang/String; = "com.htc.android.worldclock.TIMER_ALERT"

.field public static final TIMEUP_STATE:I = 0x3


# instance fields
.field private final UPDATE_RESUME_MSG:I

.field private final WHAT_ON_DORESUME:I

.field private final WHAT_ON_INIT:I

.field private final WHAT_ON_RINGTONE:I

.field private mAlertClickListener:Landroid/view/View$OnClickListener;

.field private mAlertLayout:Landroid/view/View;

.field private mAlertSound:Landroid/net/Uri;

.field private mAlertSoundTitle:Ljava/lang/String;

.field private mAnimationEnd:Z

.field private mBtn1:Landroid/widget/Button;

.field private mBtn2:Landroid/widget/Button;

.field private mBtnGreen:Landroid/graphics/drawable/Drawable;

.field private mBtnRed:Landroid/graphics/drawable/Drawable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mCurrentSecond:I

.field private mDestroyed:Z

.field private mExpiredTime:J

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field private final mHandy:Landroid/os/Handler;

.field private mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

.field private mIdleClickListener:Landroid/view/View$OnClickListener;

.field private mInit:Z

.field private mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

.field private mIslaunchRingToneDialogActivity:Z

.field protected mLooper:Landroid/os/Looper;

.field private mMediaChanged:Z

.field private mMediaReceiver:Lcom/htc/android/worldclock/Timer$MediaReceiver;

.field private mNeedReset:Z

.field private mPauseClickListener:Landroid/view/View$OnClickListener;

.field private mPlayClickListener:Landroid/view/View$OnClickListener;

.field private mResultChanged:Z

.field private mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSlideOffset:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartSecond:I

.field protected mState:I

.field private mStopped:Z

.field private mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

.field private mTabTimer:Z

.field private mTextView:Landroid/widget/TextView;

.field private mTimerResUtils:Lcom/htc/android/worldclock/TimerResUtils;

.field private mTouching:[Z

.field final mUIHandler:Landroid/os/Handler;

.field mUpdateTimer:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/CloseMenuIME;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mNeedReset:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mTabTimer:Z

    .line 75
    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 76
    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mLooper:Landroid/os/Looper;

    .line 77
    iput-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mInit:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mStopped:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mDestroyed:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mMediaChanged:Z

    .line 81
    iput-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mResultChanged:Z

    .line 83
    const/16 v0, 0x321

    iput v0, p0, Lcom/htc/android/worldclock/Timer;->WHAT_ON_INIT:I

    .line 84
    const/16 v0, 0x322

    iput v0, p0, Lcom/htc/android/worldclock/Timer;->WHAT_ON_RINGTONE:I

    .line 85
    const/16 v0, 0x323

    iput v0, p0, Lcom/htc/android/worldclock/Timer;->WHAT_ON_DORESUME:I

    .line 86
    const/16 v0, 0x324

    iput v0, p0, Lcom/htc/android/worldclock/Timer;->UPDATE_RESUME_MSG:I

    .line 88
    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

    .line 89
    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mMediaReceiver:Lcom/htc/android/worldclock/Timer$MediaReceiver;

    .line 91
    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mUIHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/htc/android/worldclock/Timer$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$1;-><init>(Lcom/htc/android/worldclock/Timer;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mUpdateTimer:Ljava/lang/Runnable;

    .line 288
    new-instance v0, Lcom/htc/android/worldclock/Timer$5;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$5;-><init>(Lcom/htc/android/worldclock/Timer;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mAlertClickListener:Landroid/view/View$OnClickListener;

    .line 333
    new-instance v0, Lcom/htc/android/worldclock/Timer$6;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$6;-><init>(Lcom/htc/android/worldclock/Timer;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHandy:Landroid/os/Handler;

    .line 564
    new-instance v0, Lcom/htc/android/worldclock/Timer$7;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$7;-><init>(Lcom/htc/android/worldclock/Timer;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 643
    new-instance v0, Lcom/htc/android/worldclock/Timer$8;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$8;-><init>(Lcom/htc/android/worldclock/Timer;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mPlayClickListener:Landroid/view/View$OnClickListener;

    .line 670
    new-instance v0, Lcom/htc/android/worldclock/Timer$9;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$9;-><init>(Lcom/htc/android/worldclock/Timer;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mPauseClickListener:Landroid/view/View$OnClickListener;

    .line 683
    new-instance v0, Lcom/htc/android/worldclock/Timer$10;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$10;-><init>(Lcom/htc/android/worldclock/Timer;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mIdleClickListener:Landroid/view/View$OnClickListener;

    .line 912
    new-instance v0, Lcom/htc/android/worldclock/Timer$12;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$12;-><init>(Lcom/htc/android/worldclock/Timer;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 953
    new-instance v0, Lcom/htc/android/worldclock/Timer$13;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$13;-><init>(Lcom/htc/android/worldclock/Timer;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->updateTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->onInitParent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/worldclock/Timer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->refreshResume()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/worldclock/Timer;)Lcom/htc/android/worldclock/Timer$IntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/worldclock/Timer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mStartHour:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/android/worldclock/Timer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/htc/android/worldclock/Timer;->mStartHour:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/android/worldclock/Timer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mStartMinute:I

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/android/worldclock/Timer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/htc/android/worldclock/Timer;->mStartMinute:I

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/android/worldclock/Timer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mStartSecond:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/android/worldclock/Timer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/htc/android/worldclock/Timer;->mStartSecond:I

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/android/worldclock/Timer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/android/worldclock/Timer;->mMediaChanged:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/android/worldclock/Timer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mStopped:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->onRingtone()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->setCurrentTime()V

    return-void
.end method

.method static synthetic access$2202(Lcom/htc/android/worldclock/Timer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/android/worldclock/Timer;->mAnimationEnd:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->stopSlideHtcTimePicker()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/android/worldclock/Timer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/android/worldclock/Timer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/android/worldclock/Timer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/android/worldclock/Timer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/android/worldclock/Timer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    return v0
.end method

.method static synthetic access$2602(Lcom/htc/android/worldclock/Timer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/android/worldclock/Timer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/htc/android/worldclock/Timer;->mExpiredTime:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/htc/android/worldclock/Timer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/htc/android/worldclock/Timer;->mExpiredTime:J

    return-wide p1
.end method

.method static synthetic access$2800(III)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/htc/android/worldclock/Timer;->calculateAlarm(III)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->updateButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->onDoResume()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->updateTimerProvider()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/android/worldclock/Timer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mTabTimer:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/android/worldclock/Timer;)Lcom/htc/android/worldclock/TimerResUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mTimerResUtils:Lcom/htc/android/worldclock/TimerResUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/Timer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/Timer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mAlertSoundTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/worldclock/Timer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/Timer;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/Timer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/worldclock/Timer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mIslaunchRingToneDialogActivity:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/android/worldclock/Timer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/android/worldclock/Timer;->mIslaunchRingToneDialogActivity:Z

    return p1
.end method

.method private static calculateAlarm(III)J
    .locals 4
    .parameter "mCurrentHour"
    .parameter "mCurrentMinute"
    .parameter "mCurrentSecond"

    .prologue
    .line 880
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit8 v2, p0, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-int/lit8 v2, p1, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static disableAlert(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 902
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 903
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 906
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.android.worldclock.TIMER_ALERT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 909
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 910
    return-void
.end method

.method public static declared-synchronized enableAlarmInternal(Landroid/content/Context;ZIII)V
    .locals 4
    .parameter "context"
    .parameter "enabled"
    .parameter "mCurrentHour"
    .parameter "mCurrentMinute"
    .parameter "mCurrentSecond"

    .prologue
    .line 870
    const-class v3, Lcom/htc/android/worldclock/Timer;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 871
    if-eqz p1, :cond_0

    .line 872
    invoke-static {p2, p3, p4}, Lcom/htc/android/worldclock/Timer;->calculateAlarm(III)J

    move-result-wide v0

    .line 873
    .local v0, time:J
    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/Timer;->enableAlert(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    .end local v0           #time:J
    :goto_0
    monitor-exit v3

    return-void

    .line 875
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/htc/android/worldclock/Timer;->disableAlert(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 870
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static enableAlert(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v5, 0x0

    .line 888
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 889
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 892
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.android.worldclock.TIMER_ALERT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "alarm_time"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 894
    const/high16 v3, 0x1000

    invoke-static {p0, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 896
    .local v2, sender:Landroid/app/PendingIntent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am.set(AlarmManager.RTC_WAKEUP),atTimeInMillis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0, v5, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 899
    return-void
.end method

.method private getDefaultAlarm()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 945
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 946
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 947
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setDefaultAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 950
    :cond_0
    return-object v0
.end method

.method private getRingToneTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 253
    iget-boolean v2, p0, Lcom/htc/android/worldclock/Timer;->mDestroyed:Z

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getAlertSoundUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, uri:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 258
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 262
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->getDefaultAlarm()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;

    .line 263
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 264
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    :cond_3
    iget-boolean v2, p0, Lcom/htc/android/worldclock/Timer;->mMediaChanged:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/android/worldclock/Timer;->mResultChanged:Z

    if-eqz v2, :cond_6

    .line 269
    :cond_4
    iput-boolean v3, p0, Lcom/htc/android/worldclock/Timer;->mResultChanged:Z

    .line 270
    iget-boolean v2, p0, Lcom/htc/android/worldclock/Timer;->mMediaChanged:Z

    if-eqz v2, :cond_5

    .line 271
    iput-boolean v3, p0, Lcom/htc/android/worldclock/Timer;->mMediaChanged:Z

    .line 272
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/AlertUtils;->getRingToneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 273
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->getDefaultAlarm()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;

    .line 276
    :cond_5
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSound:Landroid/net/Uri;

    const/4 v3, 0x4

    invoke-static {p0, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    .line 277
    .local v0, ringtone:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSoundTitle:Ljava/lang/String;

    .line 279
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSoundTitle:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlertSoundTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_0

    .line 284
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_6
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getAlertSoundTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertSoundTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 181
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Timer"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 182
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 183
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mLooper:Landroid/os/Looper;

    .line 184
    new-instance v0, Lcom/htc/android/worldclock/Timer$2;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/Timer$2;-><init>(Lcom/htc/android/worldclock/Timer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method private initRegister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 497
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mMediaReceiver:Lcom/htc/android/worldclock/Timer$MediaReceiver;

    if-nez v1, :cond_0

    .line 498
    new-instance v1, Lcom/htc/android/worldclock/Timer$MediaReceiver;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/worldclock/Timer$MediaReceiver;-><init>(Lcom/htc/android/worldclock/Timer;Lcom/htc/android/worldclock/Timer$1;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/Timer;->mMediaReceiver:Lcom/htc/android/worldclock/Timer$MediaReceiver;

    .line 499
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 500
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mMediaReceiver:Lcom/htc/android/worldclock/Timer$MediaReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/htc/android/worldclock/Timer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 505
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private onDoResume()V
    .locals 2

    .prologue
    .line 509
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 510
    iget-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mStopped:Z

    .line 514
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 515
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x324

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mInit:Z

    goto :goto_0
.end method

.method private onInitParent()V
    .locals 3

    .prologue
    .line 208
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 209
    iget-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getAlertSoundTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/Timer;->mAlertSoundTitle:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "4"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mTabTimer:Z

    .line 215
    new-instance v0, Lcom/htc/android/worldclock/Timer$3;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$3;-><init>(Lcom/htc/android/worldclock/Timer;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/Timer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onRingtone()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 235
    iget-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->getRingToneTitle()V

    .line 239
    new-instance v0, Lcom/htc/android/worldclock/Timer$4;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Timer$4;-><init>(Lcom/htc/android/worldclock/Timer;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/Timer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private postUpdateTimer()V
    .locals 9

    .prologue
    const-wide/32 v7, 0x2ca1c80

    .line 714
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 715
    const-wide/16 v1, 0x0

    .line 716
    .local v1, timeLeft:J
    const/4 v0, 0x0

    .line 717
    .local v0, millisecond:I
    iget-wide v3, p0, Lcom/htc/android/worldclock/Timer;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 718
    cmp-long v3, v1, v7

    if-ltz v3, :cond_0

    .line 719
    rem-long/2addr v1, v7

    .line 721
    :cond_0
    long-to-int v3, v1

    rem-int/lit16 v0, v3, 0x3e8

    .line 723
    if-nez v0, :cond_1

    .line 724
    add-int/lit16 v0, v0, 0x3e8

    .line 726
    :cond_1
    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mUpdateTimer:Ljava/lang/Runnable;

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    return-void
.end method

.method private refreshResume()V
    .locals 3

    .prologue
    .line 522
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 523
    iget-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-static {}, Lcom/htc/android/worldclock/HtcStorageChecker;->isInternalStorageEnough()Z

    move-result v1

    if-nez v1, :cond_0

    .line 529
    const v1, 0x7f080067

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 530
    .local v0, toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/htc/android/worldclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 531
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCurrentTime()V
    .locals 2

    .prologue
    .line 730
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 733
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    if-nez v0, :cond_0

    .line 734
    const-string v0, "mHtcTimePicker == null"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 741
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    .line 739
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    .line 740
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentSecond(I)V

    goto :goto_0
.end method

.method private setTime()V
    .locals 2

    .prologue
    .line 590
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mAnimationEnd:Z

    .line 592
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->setCurrentTime()V

    .line 593
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setVisibility(I)V

    .line 594
    return-void
.end method

.method private slideOneSecond()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x3b

    .line 759
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, isHourChanged:Z
    const/4 v1, 0x0

    .line 762
    .local v1, isMinuteChanged:Z
    const/4 v2, 0x1

    .line 763
    .local v2, isSecondChanged:Z
    iget v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    .line 764
    iget v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    if-ne v3, v4, :cond_0

    .line 765
    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    .line 766
    iget v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    .line 767
    const/4 v1, 0x1

    .line 768
    iget v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    if-ne v3, v4, :cond_0

    .line 769
    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    .line 770
    iget v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    .line 771
    const/4 v0, 0x1

    .line 772
    iget v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    if-ne v3, v4, :cond_0

    .line 773
    iput v6, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    .line 774
    iput v6, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    .line 775
    iput v6, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    .line 781
    :cond_0
    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    if-nez v3, :cond_2

    .line 782
    const-string v3, "mHtcTimePicker == null"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 803
    :cond_1
    :goto_0
    return-void

    .line 786
    :cond_2
    if-eqz v0, :cond_3

    .line 787
    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v4, p0, Lcom/htc/android/worldclock/Timer;->mSlideOffset:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcTimePicker;->slideHourWithOffset(I)V

    .line 789
    :cond_3
    if-eqz v1, :cond_4

    .line 790
    iget v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    if-ne v3, v5, :cond_5

    .line 791
    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v4, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    .line 796
    :cond_4
    :goto_1
    if-eqz v2, :cond_1

    .line 797
    iget v3, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    if-ne v3, v5, :cond_6

    .line 798
    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v4, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcTimePicker;->setCurrentSecond(I)V

    goto :goto_0

    .line 793
    :cond_5
    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v4, p0, Lcom/htc/android/worldclock/Timer;->mSlideOffset:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcTimePicker;->slideMinuteWithOffset(I)V

    goto :goto_1

    .line 800
    :cond_6
    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget v4, p0, Lcom/htc/android/worldclock/Timer;->mSlideOffset:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcTimePicker;->slideSecondWithOffset(I)V

    goto :goto_0
.end method

.method private stopSlideHtcTimePicker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 806
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 807
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->slideHourWithOffset(I)V

    .line 809
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->slideMinuteWithOffset(I)V

    .line 810
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->slideSecondWithOffset(I)V

    .line 812
    :cond_0
    return-void
.end method

.method private unInitRegister()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mMediaReceiver:Lcom/htc/android/worldclock/Timer$MediaReceiver;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mMediaReceiver:Lcom/htc/android/worldclock/Timer$MediaReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/Timer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/worldclock/Timer;->mMediaReceiver:Lcom/htc/android/worldclock/Timer$MediaReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/Timer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 406
    :cond_1
    :goto_1
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "mMediaReceiver never registered"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 404
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "mIntentReceiver never registered"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateButton()V
    .locals 8

    .prologue
    const v7, 0x7f08003b

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 600
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 601
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mBtn1:Landroid/widget/Button;

    .line 602
    .local v0, btn1:Landroid/widget/Button;
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mBtn2:Landroid/widget/Button;

    .line 603
    .local v1, btn2:Landroid/widget/Button;
    const v4, 0x7f0b0075

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 604
    .local v2, btn3:Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mAlertLayout:Landroid/view/View;

    .line 606
    .local v3, ll:Landroid/view/View;
    iget v4, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 630
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcTimePicker;->setEnabled(Z)V

    .line 631
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcTimePicker;->setFocusable(Z)V

    .line 632
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 633
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mBtnGreen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mPlayClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mIdleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 637
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 638
    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 641
    :goto_0
    return-void

    .line 608
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcTimePicker;->setEnabled(Z)V

    .line 609
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcTimePicker;->setFocusable(Z)V

    .line 610
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mBtnRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    const v4, 0x7f08003d

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 612
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mPauseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mIdleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 615
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 616
    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 619
    :pswitch_1
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcTimePicker;->setEnabled(Z)V

    .line 620
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcTimePicker;->setFocusable(Z)V

    .line 621
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 622
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mBtnGreen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mPlayClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v4, p0, Lcom/htc/android/worldclock/Timer;->mIdleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 626
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 627
    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSlideTime()V
    .locals 2

    .prologue
    .line 744
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 745
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer;->mTouching:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mNeedReset:Z

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->checkResetTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->setCurrentTime()V

    goto :goto_0

    .line 751
    :cond_2
    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    if-eqz v0, :cond_0

    .line 752
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->slideOneSecond()V

    goto :goto_0
.end method

.method private updateTimer()V
    .locals 2

    .prologue
    .line 703
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTimer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 705
    iget v0, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 706
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->updateSlideTime()V

    .line 707
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->postUpdateTimer()V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->setCurrentTime()V

    goto :goto_0
.end method

.method private updateTimerProvider()V
    .locals 2

    .prologue
    .line 839
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 840
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/Timer$11;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/Timer$11;-><init>(Lcom/htc/android/worldclock/Timer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 849
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 850
    return-void
.end method


# virtual methods
.method checkResetTime()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 815
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 817
    iget-wide v6, p0, Lcom/htc/android/worldclock/Timer;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x2ca1c80

    rem-long v2, v6, v8

    .line 818
    .local v2, timeLeft:J
    long-to-float v6, v2

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 819
    .local v0, secondLeft:I
    iget-boolean v6, p0, Lcom/htc/android/worldclock/Timer;->mNeedReset:Z

    if-eqz v6, :cond_0

    .line 820
    rem-int/lit8 v6, v0, 0x3c

    iput v6, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    .line 821
    div-int/lit8 v6, v0, 0x3c

    rem-int/lit8 v6, v6, 0x3c

    iput v6, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    .line 822
    div-int/lit8 v6, v0, 0x3c

    div-int/lit8 v6, v6, 0x3c

    iput v6, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    .line 823
    iput-boolean v5, p0, Lcom/htc/android/worldclock/Timer;->mNeedReset:Z

    .line 835
    :goto_0
    return v4

    .line 827
    :cond_0
    iget v6, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    mul-int/lit16 v6, v6, 0xe10

    iget v7, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    add-int v1, v6, v7

    .line 829
    .local v1, secondPrev:I
    sub-int v6, v1, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 830
    rem-int/lit8 v5, v0, 0x3c

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    .line 831
    div-int/lit8 v5, v0, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    .line 832
    div-int/lit8 v5, v0, 0x3c

    div-int/lit8 v5, v5, 0x3c

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    goto :goto_0

    :cond_1
    move v4, v5

    .line 835
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 931
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 932
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 940
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :pswitch_0
    return v0

    .line 932
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 854
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 855
    packed-switch p1, :pswitch_data_0

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 857
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mIslaunchRingToneDialogActivity:Z

    .line 858
    if-eqz p3, :cond_0

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    if-eqz v1, :cond_0

    .line 859
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 860
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 861
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mResultChanged:Z

    goto :goto_0

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v6, 0x3b

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 106
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const-string v2, "onCreate"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 108
    const v2, 0x7f03001a

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/Timer;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/WorldClockTabControl;->initBackground()V

    .line 111
    new-instance v2, Lcom/htc/android/worldclock/TimerResUtils;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/TimerResUtils;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mTimerResUtils:Lcom/htc/android/worldclock/TimerResUtils;

    .line 112
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mTimerResUtils:Lcom/htc/android/worldclock/TimerResUtils;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/TimerResUtils;->initResources()V

    .line 114
    iput-boolean v5, p0, Lcom/htc/android/worldclock/Timer;->mIslaunchRingToneDialogActivity:Z

    .line 115
    iput-boolean v5, p0, Lcom/htc/android/worldclock/Timer;->mAnimationEnd:Z

    .line 117
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    if-nez v2, :cond_0

    .line 118
    const v2, 0x7f0b004e

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcTimePicker;

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    .line 119
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcTimePicker;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcTimePicker;->setRepeatEnable(Z)V

    .line 121
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2, v4, v4}, Lcom/htc/widget/HtcTimePicker;->setSecondPickerEnable(ZZ)V

    .line 122
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePicker;->disableTitle()V

    .line 125
    :cond_0
    const v2, 0x7f0b0074

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mTextView:Landroid/widget/TextView;

    .line 126
    const v2, 0x7f0b0072

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertLayout:Landroid/view/View;

    .line 127
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_b_button(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mAlertClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v2, 0x7f0b0075

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 131
    .local v0, btn:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_more_view(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 132
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mAlertClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v2, 0x7f0b0068

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mBtn1:Landroid/widget/Button;

    .line 135
    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mBtn2:Landroid/widget/Button;

    .line 136
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mBtn2:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_stopwatch_reset(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 137
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mBtnRed:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mBtnRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mBtnGreen:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mBtnGreen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 143
    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    .line 145
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcTimePicker;->setEnabled(Z)V

    .line 146
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    const/16 v3, 0xc

    invoke-virtual {v2, v5, v3}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 147
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2, v5, v6}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    .line 148
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2, v5, v6}, Lcom/htc/widget/HtcTimePicker;->setSecondRange(II)V

    .line 149
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mBtn1:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 151
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/worldclock/Timer;->mSlideOffset:I

    .line 153
    const/high16 v2, 0x10a

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 154
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mFadeInAnim:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 156
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mFadeInAnim:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/htc/android/worldclock/Timer;->mFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 159
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getStartTimerHour(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/worldclock/Timer;->mStartHour:I

    .line 160
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getStartTimerMinute(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/worldclock/Timer;->mStartMinute:I

    .line 161
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getStartTimerSecond(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/worldclock/Timer;->mStartSecond:I

    .line 162
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->initHandler()V

    .line 164
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/WorldClockTabControl;->getTouching()[Z

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/Timer;->mTouching:[Z

    .line 165
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x321

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Timer;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/WorldClockTabControl;

    .line 167
    .local v1, tabs:Lcom/htc/android/worldclock/WorldClockTabControl;
    if-eqz v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/WorldClockTabControl;->setTabCallback(Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;)V

    .line 170
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 410
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 411
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mDestroyed:Z

    .line 412
    const-string v1, "onDestroy"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x323

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x321

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x322

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mHandy:Landroid/os/Handler;

    const/16 v2, 0x324

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 424
    :cond_0
    const-string v1, "timer"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/worldclock/Timer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 426
    .local v0, settings:Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->unInitRegister()V

    .line 432
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTimePicker;->releaseResource()V

    .line 433
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    .line 434
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onDestroy()V

    .line 435
    return-void

    .line 427
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 347
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 348
    const-string v1, "onPause"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 350
    iput-boolean v4, p0, Lcom/htc/android/worldclock/Timer;->mStopped:Z

    .line 352
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/android/worldclock/Timer;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerState(Landroid/content/Context;I)V

    .line 355
    iget-boolean v1, p0, Lcom/htc/android/worldclock/Timer;->mAnimationEnd:Z

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    .line 357
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    .line 358
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    .line 360
    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerHour(Landroid/content/Context;I)V

    .line 361
    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerMinute(Landroid/content/Context;I)V

    .line 362
    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerSecond(Landroid/content/Context;I)V

    .line 365
    :cond_0
    invoke-static {}, Lcom/htc/android/worldclock/ToastMaster;->cancelToast()V

    .line 367
    iget v1, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    if-ne v1, v4, :cond_1

    .line 368
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

    if-nez v1, :cond_1

    .line 369
    new-instance v1, Lcom/htc/android/worldclock/Timer$IntentReceiver;

    invoke-direct {v1, p0, v3}, Lcom/htc/android/worldclock/Timer$IntentReceiver;-><init>(Lcom/htc/android/worldclock/Timer;Lcom/htc/android/worldclock/Timer$1;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/htc/android/worldclock/Timer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 375
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onPause()V

    .line 376
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 439
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 440
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onResume()V

    .line 441
    const-string v5, "onResume"

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 442
    invoke-static {p0}, Lcom/htc/android/worldclock/HtcStorageChecker;->checkStorageFull(Landroid/app/Activity;)V

    .line 445
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

    if-eqz v5, :cond_0

    .line 446
    iget-object v5, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;

    invoke-virtual {p0, v5}, Lcom/htc/android/worldclock/Timer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getTimerState(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    .line 455
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getExpiredTime(Landroid/content/Context;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/worldclock/Timer;->mExpiredTime:J

    .line 456
    iget-wide v5, p0, Lcom/htc/android/worldclock/Timer;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    iget v5, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    if-ne v5, v10, :cond_1

    .line 458
    iput v11, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    .line 461
    :cond_1
    iget v5, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    if-ne v5, v10, :cond_2

    .line 462
    iget-object v5, p0, Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcTimePicker;->setEnabled(Z)V

    .line 463
    iget-wide v5, p0, Lcom/htc/android/worldclock/Timer;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x2ca1c80

    rem-long v3, v5, v7

    .line 464
    .local v3, timeLeft:J
    long-to-int v5, v3

    rem-int/lit16 v1, v5, 0x3e8

    .line 465
    .local v1, millisecond:I
    long-to-float v5, v3

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 466
    .local v2, second:I
    rem-int/lit8 v5, v2, 0x3c

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    .line 467
    div-int/lit8 v5, v2, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    .line 468
    div-int/lit8 v5, v2, 0x3c

    div-int/lit8 v5, v5, 0x3c

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    .line 469
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->setTime()V

    .line 471
    iget-object v5, p0, Lcom/htc/android/worldclock/Timer;->mUIHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/htc/android/worldclock/Timer;->mUpdateTimer:Ljava/lang/Runnable;

    int-to-long v7, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "left "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "second = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 486
    .end local v1           #millisecond:I
    .end local v2           #second:I
    .end local v3           #timeLeft:J
    :goto_1
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->updateButton()V

    .line 488
    iget-boolean v5, p0, Lcom/htc/android/worldclock/Timer;->mInit:Z

    if-nez v5, :cond_4

    .line 492
    :goto_2
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "never registered"

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget v5, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    if-ne v5, v11, :cond_3

    .line 475
    iput v9, p0, Lcom/htc/android/worldclock/Timer;->mState:I

    .line 476
    iget v5, p0, Lcom/htc/android/worldclock/Timer;->mStartHour:I

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    .line 477
    iget v5, p0, Lcom/htc/android/worldclock/Timer;->mStartMinute:I

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    .line 478
    iget v5, p0, Lcom/htc/android/worldclock/Timer;->mStartSecond:I

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    .line 479
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->setTime()V

    goto :goto_1

    .line 481
    :cond_3
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getTimerHour(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentHour:I

    .line 482
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getTimerMinute(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I

    .line 483
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getTimerSecond(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I

    .line 484
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->setTime()V

    goto :goto_1

    .line 491
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->onDoResume()V

    goto :goto_2
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 174
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 175
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onStart()V

    .line 176
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->initRegister()V

    .line 177
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 380
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 381
    iput-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mStopped:Z

    .line 382
    invoke-direct {p0}, Lcom/htc/android/worldclock/Timer;->unInitRegister()V

    .line 383
    iput-boolean v0, p0, Lcom/htc/android/worldclock/Timer;->mMediaChanged:Z

    .line 384
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onStop()V

    .line 385
    return-void
.end method
