.class public Lcom/htc/android/worldclock/Stopwatch;
.super Lcom/htc/android/worldclock/CloseMenuIME;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;
    }
.end annotation


# static fields
.field protected static final IDLE_STATE:I = 0x0

.field protected static final LAP_STATE:I = 0x3

.field private static LapPausedTime:I = 0x0

.field protected static final MAX_LAP_COUNT:I = 0x12c

.field protected static final MAX_SEC:I = 0xea60

.field protected static final MAX_TIME:J = 0x5b8d80L

.field protected static final PAUSE_STATE:I = 0x2

.field protected static final PLAY_STATE:I = 0x1

.field protected static final TIME_INTERVAL:J = 0x64L

.field private static lapCount:I

.field private static lastRunningTotal:I

.field private static mNeedLapPausedTime:Z

.field protected static mStopwatchAdapter:Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;

.field public static myList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;",
            ">;"
        }
    .end annotation
.end field

.field private static runningTotal:I


# instance fields
.field private final UI_ACTION_UPDATE_LIST:I

.field private final WHAT_ON_ADD_LAP:I

.field private final WHAT_ON_UPDATE_LAP_WATCH:I

.field private final WHAT_ON_UPDATE_WATCH:I

.field lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

.field private mBtn1:Landroid/widget/Button;

.field private mBtn2:Landroid/widget/Button;

.field private mBtnGreen:Landroid/graphics/drawable/Drawable;

.field private mBtnRed:Landroid/graphics/drawable/Drawable;

.field final mHandler:Landroid/os/Handler;

.field private mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mImageLapMilliSecond:Landroid/widget/ImageView;

.field private mImageLapMinute:Landroid/widget/ImageView;

.field private mImageLapMinute10:Landroid/widget/ImageView;

.field private mImageLapSecond:Landroid/widget/ImageView;

.field private mImageLapSecond10:Landroid/widget/ImageView;

.field private mImageMilliSecond:Landroid/widget/ImageView;

.field private mImageMinute:Landroid/widget/ImageView;

.field private mImageMinute10:Landroid/widget/ImageView;

.field private mImageSecond:Landroid/widget/ImageView;

.field private mImageSecond10:Landroid/widget/ImageView;

.field private mLapBtn:Landroid/widget/Button;

.field private mLapPauseStart:J

.field private mLapProgress:J

.field private mLapStart:J

.field private mLapState:I

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mLooper:Landroid/os/Looper;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mOldLapMilliSecond:I

.field private mOldLapMinute:I

.field private mOldLapMinute10:I

.field private mOldLapSecond:I

.field private mOldLapSecond10:I

.field private mOldMilliSecond:I

.field private mOldMinute:I

.field private mOldMinute10:I

.field private mOldSecond:I

.field private mOldSecond10:I

.field private mPauseStart:J

.field private mProgress:J

.field private mResId:[I

.field private mStart:J

.field private mState:I

.field private mStopBtnPressed:Z

.field private mStopwatchResUtils:Lcom/htc/android/worldclock/StopwatchResUtils;

.field private mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

.field private mTimer:Ljava/util/Timer;

.field private mTouching:[Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/worldclock/Stopwatch;->lapCount:I

    .line 93
    sput v1, Lcom/htc/android/worldclock/Stopwatch;->runningTotal:I

    sput v1, Lcom/htc/android/worldclock/Stopwatch;->lastRunningTotal:I

    .line 95
    sput-boolean v1, Lcom/htc/android/worldclock/Stopwatch;->mNeedLapPausedTime:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/htc/android/worldclock/CloseMenuIME;-><init>()V

    .line 46
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/android/worldclock/Stopwatch;->WHAT_ON_UPDATE_WATCH:I

    .line 47
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/htc/android/worldclock/Stopwatch;->WHAT_ON_UPDATE_LAP_WATCH:I

    .line 48
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/htc/android/worldclock/Stopwatch;->WHAT_ON_ADD_LAP:I

    .line 49
    const/16 v0, 0x7c

    iput v0, p0, Lcom/htc/android/worldclock/Stopwatch;->UI_ACTION_UPDATE_LIST:I

    .line 81
    iput-wide v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    .line 82
    iput-wide v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mPauseStart:J

    .line 83
    iput-wide v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mProgress:J

    .line 84
    iput-wide v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J

    .line 85
    iput-wide v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapPauseStart:J

    .line 86
    iput-wide v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapProgress:J

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mStopBtnPressed:Z

    .line 98
    iput-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mLooper:Landroid/os/Looper;

    .line 99
    iput-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mNonUIHandler:Landroid/os/Handler;

    .line 101
    iput-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    .line 122
    new-instance v0, Lcom/htc/android/worldclock/Stopwatch$2;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Stopwatch$2;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mHandler:Landroid/os/Handler;

    .line 146
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->stopWatch_res()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    .line 730
    new-instance v0, Lcom/htc/android/worldclock/Stopwatch$13;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/Stopwatch$13;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    .line 743
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/Stopwatch;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/android/worldclock/Stopwatch;->addLapData(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/Stopwatch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/Stopwatch;->updateImageSrc(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/android/worldclock/Stopwatch;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapProgress:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/htc/android/worldclock/Stopwatch;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mProgress:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/android/worldclock/Stopwatch;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/htc/android/worldclock/Stopwatch;->lapCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/android/worldclock/Stopwatch;->dismissHtcAlartDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/worldclock/Stopwatch;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/android/worldclock/Stopwatch;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/android/worldclock/Stopwatch;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapPauseStart:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/htc/android/worldclock/Stopwatch;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapPauseStart:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/htc/android/worldclock/Stopwatch;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mPauseStart:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/htc/android/worldclock/Stopwatch;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mPauseStart:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/android/worldclock/Stopwatch;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/android/worldclock/Stopwatch;->deleteLapData()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/Stopwatch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/Stopwatch;->updateLapImageSrc(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/worldclock/Stopwatch;)Lcom/htc/android/worldclock/StopwatchResUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchResUtils:Lcom/htc/android/worldclock/StopwatchResUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/Stopwatch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapState:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/worldclock/Stopwatch;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapState:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/Stopwatch;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/htc/android/worldclock/Stopwatch;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J

    return-wide p1
.end method

.method static synthetic access$414(Lcom/htc/android/worldclock/Stopwatch;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/Stopwatch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mStopBtnPressed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/worldclock/Stopwatch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mStopBtnPressed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/worldclock/Stopwatch;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/Stopwatch;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/Stopwatch;->makeTask(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/Stopwatch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/android/worldclock/Stopwatch;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/android/worldclock/Stopwatch;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/htc/android/worldclock/Stopwatch;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    return-wide p1
.end method

.method static synthetic access$914(Lcom/htc/android/worldclock/Stopwatch;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    return-wide v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 706
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 707
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 710
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/Stopwatch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 711
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "Stopwatch"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 715
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " acquire WakeLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 719
    :cond_1
    return-void
.end method

.method private addLapData(JJ)V
    .locals 2
    .parameter "lapTotalTime"
    .parameter "lapTime"

    .prologue
    .line 371
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 372
    sget v0, Lcom/htc/android/worldclock/Stopwatch;->lapCount:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    new-instance v0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    invoke-direct {v0}, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    .line 379
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    sget v1, Lcom/htc/android/worldclock/Stopwatch;->lapCount:I

    iput v1, v0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_id:I

    .line 380
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    iput-wide p1, v0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_total_time:J

    .line 381
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    iput-wide p3, v0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_time:J

    .line 382
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/StopwatchUtils;->AddStopwatchLapData(Landroid/content/Context;Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;)V

    .line 383
    sget v0, Lcom/htc/android/worldclock/Stopwatch;->lapCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/android/worldclock/Stopwatch;->lapCount:I

    .line 385
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    iget v0, v0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/Stopwatch;->updateList(Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;)V

    goto :goto_0
.end method

.method private deleteLapData()V
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 392
    invoke-static {p0}, Lcom/htc/android/worldclock/StopwatchUtils;->DeleteStopwatchLapData(Landroid/content/Context;)V

    .line 393
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/worldclock/Stopwatch;->lapCount:I

    .line 394
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/worldclock/Stopwatch;->lastRunningTotal:I

    sput v0, Lcom/htc/android/worldclock/Stopwatch;->runningTotal:I

    .line 396
    sget-object v0, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 397
    sget-object v0, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 398
    sget-object v0, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchAdapter:Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;

    sget-object v1, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->changeList(Ljava/util/ArrayList;)V

    .line 399
    sget-object v0, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchAdapter:Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->notifyDataSetChanged()V

    .line 401
    :cond_0
    return-void
.end method

.method private dismissHtcAlartDialog()V
    .locals 1

    .prologue
    .line 441
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 442
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 446
    :cond_0
    return-void
.end method

.method private initNonUIHandler()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Stopwatch"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v0, mNonUIHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mLooper:Landroid/os/Looper;

    .line 108
    new-instance v1, Lcom/htc/android/worldclock/Stopwatch$1;

    iget-object v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/worldclock/Stopwatch$1;-><init>(Lcom/htc/android/worldclock/Stopwatch;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mNonUIHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method private makeTask(J)V
    .locals 6
    .parameter "delay"

    .prologue
    .line 404
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;

    .line 406
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;

    .line 408
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/android/worldclock/Stopwatch$3;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/Stopwatch$3;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    const-wide/16 v4, 0x64

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 438
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 722
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 723
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " release WakeLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 728
    :cond_0
    return-void
.end method

.method private updateImageSrc(I)V
    .locals 6
    .parameter "time"

    .prologue
    const v3, 0xea60

    .line 615
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 616
    if-gez p1, :cond_6

    .line 617
    const/4 p1, 0x0

    .line 618
    const-string v3, "updateImageSrc indexOutOfBound, reset to 0"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 624
    :cond_0
    :goto_0
    div-int/lit16 v1, p1, 0x258

    .line 625
    .local v1, minute:I
    rem-int/lit16 v3, p1, 0x258

    div-int/lit8 v2, v3, 0xa

    .line 626
    .local v2, second:I
    rem-int/lit16 v3, p1, 0x258

    rem-int/lit8 v0, v3, 0xa

    .line 628
    .local v0, millisecond:I
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldMinute10:I

    div-int/lit8 v4, v1, 0xa

    if-eq v3, v4, :cond_1

    .line 629
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMinute10:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    div-int/lit8 v5, v1, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 631
    :cond_1
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldMinute:I

    rem-int/lit8 v4, v1, 0xa

    if-eq v3, v4, :cond_2

    .line 632
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMinute:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    rem-int/lit8 v5, v1, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 634
    :cond_2
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldSecond10:I

    div-int/lit8 v4, v2, 0xa

    if-eq v3, v4, :cond_3

    .line 635
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageSecond10:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    div-int/lit8 v5, v2, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 637
    :cond_3
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldSecond:I

    rem-int/lit8 v4, v2, 0xa

    if-eq v3, v4, :cond_4

    .line 638
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageSecond:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    rem-int/lit8 v5, v2, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 640
    :cond_4
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldMilliSecond:I

    if-eq v3, v0, :cond_5

    .line 641
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMilliSecond:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 644
    :cond_5
    div-int/lit8 v3, v1, 0xa

    iput v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldMinute10:I

    .line 645
    rem-int/lit8 v3, v1, 0xa

    iput v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldMinute:I

    .line 646
    div-int/lit8 v3, v2, 0xa

    iput v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldSecond10:I

    .line 647
    rem-int/lit8 v3, v2, 0xa

    iput v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldSecond:I

    .line 648
    iput v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldMilliSecond:I

    .line 649
    return-void

    .line 619
    .end local v0           #millisecond:I
    .end local v1           #minute:I
    .end local v2           #second:I
    :cond_6
    if-lt p1, v3, :cond_0

    .line 620
    rem-int/2addr p1, v3

    .line 621
    const-string v3, "updateImageSrc indexOutOfBound, mod MAX_SEC"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLapImageSrc(I)V
    .locals 6
    .parameter "time"

    .prologue
    const v5, 0xea60

    .line 652
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 653
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget-boolean v3, Lcom/htc/android/worldclock/Stopwatch;->mNeedLapPausedTime:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 654
    sget p1, Lcom/htc/android/worldclock/Stopwatch;->LapPausedTime:I

    .line 655
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/android/worldclock/Stopwatch;->mNeedLapPausedTime:Z

    .line 657
    :cond_0
    if-gez p1, :cond_7

    .line 658
    const/4 p1, 0x0

    .line 659
    const-string v3, "updateImageSrc indexOutOfBound, reset to 0"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 665
    :cond_1
    :goto_0
    div-int/lit16 v1, p1, 0x258

    .line 666
    .local v1, minute:I
    rem-int/lit16 v3, p1, 0x258

    div-int/lit8 v2, v3, 0xa

    .line 667
    .local v2, second:I
    rem-int/lit16 v3, p1, 0x258

    rem-int/lit8 v0, v3, 0xa

    .line 669
    .local v0, millisecond:I
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapMinute10:I

    div-int/lit8 v4, v1, 0xa

    if-eq v3, v4, :cond_2

    .line 670
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMinute10:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    div-int/lit8 v5, v1, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 672
    :cond_2
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapMinute:I

    rem-int/lit8 v4, v1, 0xa

    if-eq v3, v4, :cond_3

    .line 673
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMinute:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    rem-int/lit8 v5, v1, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 675
    :cond_3
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapSecond10:I

    div-int/lit8 v4, v2, 0xa

    if-eq v3, v4, :cond_4

    .line 676
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapSecond10:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    div-int/lit8 v5, v2, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    :cond_4
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapSecond:I

    rem-int/lit8 v4, v2, 0xa

    if-eq v3, v4, :cond_5

    .line 679
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapSecond:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    rem-int/lit8 v5, v2, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 681
    :cond_5
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapMilliSecond:I

    if-eq v3, v0, :cond_6

    .line 682
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMilliSecond:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    :cond_6
    div-int/lit8 v3, v1, 0xa

    iput v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapMinute10:I

    .line 686
    rem-int/lit8 v3, v1, 0xa

    iput v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapMinute:I

    .line 687
    div-int/lit8 v3, v2, 0xa

    iput v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapSecond10:I

    .line 688
    rem-int/lit8 v3, v2, 0xa

    iput v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapSecond:I

    .line 689
    iput v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapMilliSecond:I

    .line 690
    return-void

    .line 660
    .end local v0           #millisecond:I
    .end local v1           #minute:I
    .end local v2           #second:I
    :cond_7
    if-lt p1, v5, :cond_1

    .line 661
    rem-int/2addr p1, v5

    .line 662
    const-string v3, "updateImageSrc indexOutOfBound, mod MAX_SEC"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateList(Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;)V
    .locals 4
    .parameter "lapData"

    .prologue
    const/16 v3, 0x7c

    .line 363
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 365
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 368
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 694
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 695
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 701
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :pswitch_0
    return v0

    .line 695
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 150
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 151
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const v6, 0x7f030018

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->setContentView(I)V

    .line 154
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getParent()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v6}, Lcom/htc/android/worldclock/WorldClockTabControl;->initBackground()V

    .line 156
    new-instance v6, Lcom/htc/android/worldclock/StopwatchResUtils;

    invoke-direct {v6, p0}, Lcom/htc/android/worldclock/StopwatchResUtils;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchResUtils:Lcom/htc/android/worldclock/StopwatchResUtils;

    .line 157
    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchResUtils:Lcom/htc/android/worldclock/StopwatchResUtils;

    invoke-virtual {v6}, Lcom/htc/android/worldclock/StopwatchResUtils;->initResources()V

    .line 159
    const v6, 0x7f0b002c

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMinute10:Landroid/widget/ImageView;

    .line 160
    const v6, 0x7f0b002d

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMinute:Landroid/widget/ImageView;

    .line 161
    const v6, 0x7f0b0059

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageSecond10:Landroid/widget/ImageView;

    .line 162
    const v6, 0x7f0b005a

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageSecond:Landroid/widget/ImageView;

    .line 163
    const v6, 0x7f0b005c

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMilliSecond:Landroid/widget/ImageView;

    .line 164
    const v6, 0x7f0b005f

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMinute10:Landroid/widget/ImageView;

    .line 165
    const v6, 0x7f0b0060

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMinute:Landroid/widget/ImageView;

    .line 166
    const v6, 0x7f0b0062

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapSecond10:Landroid/widget/ImageView;

    .line 167
    const v6, 0x7f0b0063

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapSecond:Landroid/widget/ImageView;

    .line 168
    const v6, 0x7f0b0065

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMilliSecond:Landroid/widget/ImageView;

    .line 170
    const v6, 0x7f0b0068

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtn1:Landroid/widget/Button;

    .line 171
    const v6, 0x7f0b006a

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtn2:Landroid/widget/Button;

    .line 172
    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtn2:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_button(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 173
    const v6, 0x7f0b0069

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapBtn:Landroid/widget/Button;

    .line 174
    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_button(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 175
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtnRed:Landroid/graphics/drawable/Drawable;

    .line 176
    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtnRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtnGreen:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtnGreen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getParent()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v6}, Lcom/htc/android/worldclock/WorldClockTabControl;->getTouching()[Z

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mTouching:[Z

    .line 182
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getParent()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/htc/android/worldclock/WorldClockTabControl;

    .line 183
    .local v5, tabs:Lcom/htc/android/worldclock/WorldClockTabControl;
    if-eqz v5, :cond_0

    .line 184
    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    invoke-virtual {v5, v6}, Lcom/htc/android/worldclock/WorldClockTabControl;->setTabCallback(Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;)V

    .line 187
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    .line 188
    const v6, 0x7f0b006b

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/Stopwatch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListView;

    iput-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mListView:Lcom/htc/widget/HtcListView;

    .line 191
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 192
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x2090026

    invoke-virtual {v1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 193
    .local v3, mSeparatorView:Landroid/view/View;
    const v6, 0x2020010

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    .local v2, leftTvTitle:Landroid/widget/TextView;
    const v6, 0x2020013

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 195
    .local v4, rightTvTitle:Landroid/widget/TextView;
    const v6, 0x2020016

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    .local v0, centerTvTitle:Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    const v6, 0x7f080085

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 198
    const v6, 0x7f080087

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 199
    const v6, 0x7f080086

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v3, p0, v8}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 202
    const v6, 0x7f030019

    invoke-virtual {v1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 204
    invoke-static {p0}, Lcom/htc/android/worldclock/StopwatchUtils;->LoadStopwatchLapData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    sput-object v6, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    .line 205
    sget-object v6, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "myList.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 209
    :cond_1
    new-instance v6, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;

    sget-object v7, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7}, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;-><init>(Lcom/htc/android/worldclock/Stopwatch;Ljava/util/ArrayList;)V

    sput-object v6, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchAdapter:Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;

    .line 210
    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mListView:Lcom/htc/widget/HtcListView;

    sget-object v7, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchAdapter:Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    invoke-direct {p0}, Lcom/htc/android/worldclock/Stopwatch;->initNonUIHandler()V

    .line 214
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 302
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onDestroy()V

    .line 304
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/worldclock/Stopwatch;->releaseWakeLock()V

    .line 311
    invoke-static {}, Lcom/htc/android/worldclock/ToastMaster;->cancelToast()V

    .line 312
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 218
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 219
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onPause()V

    .line 220
    sput-boolean v4, Lcom/htc/android/worldclock/Stopwatch;->mNeedLapPausedTime:Z

    .line 221
    sget v2, Lcom/htc/android/worldclock/Stopwatch;->lapCount:I

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setLapCount(Landroid/content/Context;I)V

    .line 222
    iget-wide v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    invoke-static {p0, v2, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setStartTime(Landroid/content/Context;J)V

    .line 223
    iget-wide v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J

    invoke-static {p0, v2, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setLapStartTime(Landroid/content/Context;J)V

    .line 224
    iget v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    if-ne v2, v4, :cond_0

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 226
    .local v0, now:J
    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setPauseTime(Landroid/content/Context;J)V

    .line 227
    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setLapPauseTime(Landroid/content/Context;J)V

    .line 228
    iget-object v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 233
    .end local v0           #now:J
    :goto_0
    iget v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setState(Landroid/content/Context;I)V

    .line 234
    invoke-direct {p0}, Lcom/htc/android/worldclock/Stopwatch;->releaseWakeLock()V

    .line 235
    invoke-static {}, Lcom/htc/android/worldclock/ToastMaster;->cancelToast()V

    .line 236
    return-void

    .line 230
    :cond_0
    iget-wide v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mPauseStart:J

    invoke-static {p0, v2, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setPauseTime(Landroid/content/Context;J)V

    .line 231
    iget-wide v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapPauseStart:J

    invoke-static {p0, v2, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setLapPauseTime(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/4 v7, 0x0

    .line 240
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 241
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onResume()V

    .line 242
    invoke-static {p0}, Lcom/htc/android/worldclock/HtcStorageChecker;->checkStorageFull(Landroid/app/Activity;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 245
    .local v3, now:J
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getLapCount(Landroid/content/Context;)I

    move-result v5

    sput v5, Lcom/htc/android/worldclock/Stopwatch;->lapCount:I

    .line 246
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getState(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    .line 247
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getStartTime(Landroid/content/Context;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    .line 248
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getPauseTime(Landroid/content/Context;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mPauseStart:J

    .line 249
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getLapStartTime(Landroid/content/Context;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J

    .line 250
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getLapPauseTime(Landroid/content/Context;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapPauseStart:J

    .line 251
    iget-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    sub-long v5, v3, v5

    iput-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mProgress:J

    .line 252
    iget-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J

    sub-long v5, v3, v5

    iput-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapProgress:J

    .line 254
    iget v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 255
    iget-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_0

    .line 256
    iput v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    .line 257
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->updateWatch()V

    .line 258
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->updateLapWatch()V

    .line 266
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->updateButton()V

    .line 269
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 270
    .local v2, digital_background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 271
    .local v1, digitWidth:I
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 272
    .local v0, digitHeight:I
    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 274
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMinute10:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMinute:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageSecond10:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageSecond:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMilliSecond:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMinute10:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMinute:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapSecond10:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapSecond:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMilliSecond:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMinute10:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldMinute10:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMinute:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldMinute:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageSecond10:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldSecond10:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageSecond:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldSecond:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageMilliSecond:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldMilliSecond:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMinute10:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapMinute10:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMinute:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapMinute:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapSecond10:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapSecond10:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapSecond:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapSecond:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mImageLapMilliSecond:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mResId:[I

    iget v7, p0, Lcom/htc/android/worldclock/Stopwatch;->mOldLapMilliSecond:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    return-void

    .line 260
    .end local v0           #digitHeight:I
    .end local v1           #digitWidth:I
    .end local v2           #digital_background:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-wide v5, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    sub-long v5, v3, v5

    rem-long/2addr v5, v8

    sub-long v5, v8, v5

    invoke-direct {p0, v5, v6}, Lcom/htc/android/worldclock/Stopwatch;->makeTask(J)V

    goto/16 :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->updateWatch()V

    .line 264
    invoke-virtual {p0}, Lcom/htc/android/worldclock/Stopwatch;->updateLapWatch()V

    goto/16 :goto_0
.end method

.method public updateButton()V
    .locals 6

    .prologue
    const v5, 0x7f08003b

    .line 452
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 453
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtn1:Landroid/widget/Button;

    .line 454
    .local v0, btn1:Landroid/widget/Button;
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtn2:Landroid/widget/Button;

    .line 455
    .local v1, btn2:Landroid/widget/Button;
    iget-object v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapBtn:Landroid/widget/Button;

    .line 457
    .local v2, lapbtn:Landroid/widget/Button;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 458
    iget v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 596
    :goto_0
    return-void

    .line 460
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 461
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtnGreen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    new-instance v3, Lcom/htc/android/worldclock/Stopwatch$4;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/Stopwatch$4;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    new-instance v3, Lcom/htc/android/worldclock/Stopwatch$5;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/Stopwatch$5;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    new-instance v3, Lcom/htc/android/worldclock/Stopwatch$6;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/Stopwatch$6;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 485
    :pswitch_1
    const v3, 0x7f08003d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 486
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtnRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    new-instance v3, Lcom/htc/android/worldclock/Stopwatch$7;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/Stopwatch$7;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    new-instance v3, Lcom/htc/android/worldclock/Stopwatch$8;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/Stopwatch$8;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    new-instance v3, Lcom/htc/android/worldclock/Stopwatch$9;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/Stopwatch$9;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 559
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 560
    iget-object v3, p0, Lcom/htc/android/worldclock/Stopwatch;->mBtnGreen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    new-instance v3, Lcom/htc/android/worldclock/Stopwatch$10;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/Stopwatch$10;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    new-instance v3, Lcom/htc/android/worldclock/Stopwatch$11;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/Stopwatch$11;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    new-instance v3, Lcom/htc/android/worldclock/Stopwatch$12;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/Stopwatch$12;-><init>(Lcom/htc/android/worldclock/Stopwatch;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateLapWatch()V
    .locals 8

    .prologue
    .line 610
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 611
    const/16 v1, 0x3ea

    iget-wide v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J

    iget-wide v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapPauseStart:J

    iget-wide v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapProgress:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/worldclock/Stopwatch;->updateNextStopWatch(IJJJ)V

    .line 612
    return-void
.end method

.method public updateNextStopWatch(IJJJ)V
    .locals 13
    .parameter "type"
    .parameter "start"
    .parameter "pausestart"
    .parameter "progress"

    .prologue
    .line 318
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 322
    .local v6, now:J
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 324
    .local v4, lapMsg:Landroid/os/Message;
    iget v9, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 325
    sub-long p6, v6, p2

    .line 326
    const-wide/32 v9, 0x5b8d80

    cmp-long v9, p6, v9

    if-ltz v9, :cond_0

    .line 327
    const-wide/32 v9, 0x5b8d80

    rem-long p6, p6, v9

    .line 328
    sub-long p2, v6, p6

    .line 331
    :cond_0
    move-wide/from16 v0, p6

    long-to-double v9, v0

    const-wide/high16 v11, 0x4059

    div-double v2, v9, v11

    .line 332
    .local v2, d:D
    const-wide/high16 v9, 0x3fe0

    add-double/2addr v9, v2

    double-to-int v8, v9

    .line 339
    .end local v2           #d:D
    .local v8, time:I
    :goto_0
    iget v9, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    const/16 v9, 0x3e9

    if-ne p1, v9, :cond_1

    .line 340
    mul-int/lit8 v9, v8, 0x64

    sput v9, Lcom/htc/android/worldclock/Stopwatch;->runningTotal:I

    .line 343
    :cond_1
    iget v9, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    const/16 v9, 0x3ea

    if-ne p1, v9, :cond_2

    .line 344
    const/16 v9, 0x3eb

    iput v9, v4, Landroid/os/Message;->what:I

    .line 345
    sget v9, Lcom/htc/android/worldclock/Stopwatch;->runningTotal:I

    iput v9, v4, Landroid/os/Message;->arg1:I

    .line 346
    sget v9, Lcom/htc/android/worldclock/Stopwatch;->runningTotal:I

    sget v10, Lcom/htc/android/worldclock/Stopwatch;->lastRunningTotal:I

    sub-int/2addr v9, v10

    iput v9, v4, Landroid/os/Message;->arg2:I

    .line 347
    sget v9, Lcom/htc/android/worldclock/Stopwatch;->runningTotal:I

    sput v9, Lcom/htc/android/worldclock/Stopwatch;->lastRunningTotal:I

    .line 349
    iget-object v9, p0, Lcom/htc/android/worldclock/Stopwatch;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 353
    .local v5, msg:Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->what:I

    .line 354
    iget v9, p0, Lcom/htc/android/worldclock/Stopwatch;->mLapState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    const/16 v9, 0x3ea

    if-ne p1, v9, :cond_5

    .line 355
    iget v9, v4, Landroid/os/Message;->arg2:I

    div-int/lit8 v9, v9, 0x64

    iput v9, v5, Landroid/os/Message;->arg1:I

    sput v9, Lcom/htc/android/worldclock/Stopwatch;->LapPausedTime:I

    .line 359
    :goto_1
    iget-object v9, p0, Lcom/htc/android/worldclock/Stopwatch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    return-void

    .line 333
    .end local v5           #msg:Landroid/os/Message;
    .end local v8           #time:I
    :cond_3
    iget v9, p0, Lcom/htc/android/worldclock/Stopwatch;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 334
    sub-long v9, p4, p2

    const-wide/16 v11, 0x64

    div-long/2addr v9, v11

    long-to-int v8, v9

    .restart local v8       #time:I
    goto :goto_0

    .line 336
    .end local v8           #time:I
    :cond_4
    const/4 v8, 0x0

    .restart local v8       #time:I
    goto :goto_0

    .line 357
    .restart local v5       #msg:Landroid/os/Message;
    :cond_5
    iput v8, v5, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method

.method public updateWatch()V
    .locals 8

    .prologue
    .line 602
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 603
    const/16 v1, 0x3e9

    iget-wide v2, p0, Lcom/htc/android/worldclock/Stopwatch;->mStart:J

    iget-wide v4, p0, Lcom/htc/android/worldclock/Stopwatch;->mPauseStart:J

    iget-wide v6, p0, Lcom/htc/android/worldclock/Stopwatch;->mProgress:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/worldclock/Stopwatch;->updateNextStopWatch(IJJJ)V

    .line 604
    return-void
.end method
