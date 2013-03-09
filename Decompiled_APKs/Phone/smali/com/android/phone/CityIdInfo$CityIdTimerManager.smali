.class Lcom/android/phone/CityIdInfo$CityIdTimerManager;
.super Landroid/os/Handler;
.source "CityIdInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CityIdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CityIdTimerManager"
.end annotation


# instance fields
.field m_isTimerRunning:Z

.field m_nInterval:I

.field m_timeScheduled:J

.field m_timeStarted:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_isTimerRunning:Z

    .line 58
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_nInterval:I

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p0}, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_isTimerRunning:Z

    .line 53
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 63
    .local v3, now:J
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-wide v6, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_timeStarted:J

    sub-long v6, v3, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/android/phone/CityIdInfo;->handleAlternatingDisplay(Lcom/android/internal/telephony/Phone;J)Z

    move-result v0

    .line 64
    .local v0, bActive:Z
    if-eqz v0, :cond_1

    .line 66
    iget-wide v5, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_timeScheduled:J

    iget v7, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_nInterval:I

    int-to-long v7, v7

    add-long v1, v5, v7

    .line 67
    .local v1, nextSched:J
    :goto_0
    cmp-long v5, v3, v1

    if-ltz v5, :cond_0

    .line 68
    iget v5, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_nInterval:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, p0, v1, v2}, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 74
    iput-wide v1, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_timeScheduled:J

    .line 81
    .end local v1           #nextSched:J
    :goto_1
    return-void

    .line 78
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_isTimerRunning:Z

    goto :goto_1
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_isTimerRunning:Z

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_isTimerRunning:Z

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_timeStarted:J

    .line 42
    iget-wide v0, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_timeStarted:J

    iget v2, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_nInterval:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_timeScheduled:J

    .line 45
    iget-wide v0, p0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->m_timeScheduled:J

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 47
    :cond_0
    return-void
.end method
