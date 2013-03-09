.class Lcom/android/phone/EcidClient$CityIdTimerManager;
.super Landroid/os/Handler;
.source "EcidClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EcidClient;
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
    .line 760
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_isTimerRunning:Z

    .line 784
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_nInterval:I

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 777
    invoke-virtual {p0, p0}, Lcom/android/phone/EcidClient$CityIdTimerManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_isTimerRunning:Z

    .line 779
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 786
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 787
    .local v3, now:J
    const-string v5, "Phone-ECID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing Timer scheduled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_timeScheduled:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_timeStarted:J

    sub-long v6, v3, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/android/phone/EcidClient;->handleAlternatingDisplay(Lcom/android/internal/telephony/Phone;J)Z

    move-result v0

    .line 790
    .local v0, bActive:Z
    if-eqz v0, :cond_1

    .line 792
    iget-wide v5, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_timeScheduled:J

    iget v7, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_nInterval:I

    int-to-long v7, v7

    add-long v1, v5, v7

    .line 793
    .local v1, nextSched:J
    :goto_0
    cmp-long v5, v3, v1

    if-ltz v5, :cond_0

    .line 794
    iget v5, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_nInterval:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    goto :goto_0

    .line 798
    :cond_0
    const-string v5, "Phone-ECID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling Timer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {p0, p0, v1, v2}, Lcom/android/phone/EcidClient$CityIdTimerManager;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 800
    iput-wide v1, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_timeScheduled:J

    .line 807
    .end local v1           #nextSched:J
    :goto_1
    return-void

    .line 804
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_isTimerRunning:Z

    .line 805
    const-string v5, "Phone-ECID"

    const-string v6, "Not scheduling another timer execution"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_isTimerRunning:Z

    if-nez v0, :cond_0

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_isTimerRunning:Z

    .line 767
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_timeStarted:J

    .line 768
    iget-wide v0, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_timeStarted:J

    iget v2, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_nInterval:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_timeScheduled:J

    .line 770
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting Timer scheduled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_timeScheduled:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-wide v0, p0, Lcom/android/phone/EcidClient$CityIdTimerManager;->m_timeScheduled:J

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/phone/EcidClient$CityIdTimerManager;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 773
    :cond_0
    return-void
.end method
