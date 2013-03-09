.class public Lcom/htc/taskmanager/MemoryMonitor;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"


# static fields
.field public static final ALARM_INTENT:Ljava/lang/String; = "Alarm"

.field private static final DELAY:I

.field private static sInstance:Lcom/htc/taskmanager/MemoryMonitor;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCheckMemoryTask:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mFreeMemoryKb:J

.field private mHandler:Landroid/os/Handler;

.field private mTotalMemoryKb:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/htc/taskmanager/SettingsManager;->getCheckInterval()I

    move-result v0

    sput v0, Lcom/htc/taskmanager/MemoryMonitor;->DELAY:I

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/taskmanager/MemoryMonitor;->sInstance:Lcom/htc/taskmanager/MemoryMonitor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mContext:Landroid/content/Context;

    .line 28
    iput-wide v1, p0, Lcom/htc/taskmanager/MemoryMonitor;->mFreeMemoryKb:J

    .line 29
    iput-wide v1, p0, Lcom/htc/taskmanager/MemoryMonitor;->mTotalMemoryKb:J

    .line 30
    iput-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mActivityManager:Landroid/app/ActivityManager;

    .line 31
    iput-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/htc/taskmanager/MemoryMonitor$1;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/MemoryMonitor$1;-><init>(Lcom/htc/taskmanager/MemoryMonitor;)V

    iput-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mCheckMemoryTask:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/htc/taskmanager/MemoryMonitor;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mActivityManager:Landroid/app/ActivityManager;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-direct {p0}, Lcom/htc/taskmanager/MemoryMonitor;->readTotalMemory()Z

    .line 61
    invoke-virtual {p0}, Lcom/htc/taskmanager/MemoryMonitor;->scheduleMemoryCheck()V

    .line 62
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/htc/taskmanager/MemoryMonitor;->DELAY:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/taskmanager/MemoryMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/taskmanager/MemoryMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/htc/taskmanager/MemoryMonitor;->mTotalMemoryKb:J

    return-wide p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/MemoryMonitor;
    .locals 1
    .parameter "c"

    .prologue
    .line 43
    sget-object v0, Lcom/htc/taskmanager/MemoryMonitor;->sInstance:Lcom/htc/taskmanager/MemoryMonitor;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/htc/taskmanager/MemoryMonitor;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/MemoryMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/taskmanager/MemoryMonitor;->sInstance:Lcom/htc/taskmanager/MemoryMonitor;

    .line 46
    :cond_0
    sget-object v0, Lcom/htc/taskmanager/MemoryMonitor;->sInstance:Lcom/htc/taskmanager/MemoryMonitor;

    return-object v0
.end method

.method private readTotalMemory()Z
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/htc/taskmanager/MemoryMonitor$2;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/MemoryMonitor$2;-><init>(Lcom/htc/taskmanager/MemoryMonitor;)V

    .line 126
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 127
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public checkMemory()V
    .locals 6

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/taskmanager/MemoryMonitor;->updateFreeMemoryCounter()V

    .line 91
    invoke-virtual {p0}, Lcom/htc/taskmanager/MemoryMonitor;->getFreeMemoryKb()J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v0, v4

    .line 92
    .local v0, free:J
    iget-object v4, p0, Lcom/htc/taskmanager/MemoryMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/taskmanager/SettingsManager;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/SettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/taskmanager/SettingsManager;->getThresholdSettingValue()I

    move-result v4

    int-to-long v2, v4

    .line 93
    .local v2, threshold:J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/htc/taskmanager/MemoryMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/taskmanager/NotificationManager;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/NotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/taskmanager/NotificationManager;->showLowMemNotification()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/htc/taskmanager/MemoryMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/taskmanager/NotificationManager;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/NotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/taskmanager/NotificationManager;->dismissLowMemNotification()V

    goto :goto_0
.end method

.method public getFreeMemoryKb()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mFreeMemoryKb:J

    return-wide v0
.end method

.method public getTotalMemoryKb()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mTotalMemoryKb:J

    return-wide v0
.end method

.method public scheduleMemoryCheck()V
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/taskmanager/MemoryMonitor;->checkMemory()V

    .line 81
    iget-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/taskmanager/MemoryMonitor;->mCheckMemoryTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/taskmanager/MemoryMonitor;->mCheckMemoryTask:Ljava/lang/Runnable;

    sget v2, Lcom/htc/taskmanager/MemoryMonitor;->DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method

.method public unscheduleMemoryCheck()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/taskmanager/MemoryMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/taskmanager/MemoryMonitor;->mCheckMemoryTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public updateFreeMemoryCounter()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 75
    .local v0, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v1, p0, Lcom/htc/taskmanager/MemoryMonitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 76
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-float v1, v1

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/taskmanager/MemoryMonitor;->mFreeMemoryKb:J

    .line 77
    return-void
.end method
