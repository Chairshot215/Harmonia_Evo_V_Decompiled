.class public Lcom/htc/clock/util/time/HomeTimeCtrl;
.super Lcom/htc/clock/util/time/TimeCtrl;
.source "HomeTimeCtrl.java"

# interfaces
.implements Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;


# instance fields
.field private mHomeCityName:Ljava/lang/String;

.field private mHomeUtil:Lcom/htc/clock/util/location/HomeUtil;

.field private mTimeZoneStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/clock/util/time/TimeCtrl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, tz:Ljava/util/TimeZone;
    iget-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mTimeZoneStr:Ljava/lang/String;

    .line 68
    .local v0, timezoneStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 71
    :cond_0
    if-eqz v1, :cond_1

    .line 72
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 75
    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    goto :goto_0
.end method

.method public getTimeZoneCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeCityName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;ILandroid/os/Handler;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "type"
    .parameter "handler"
    .parameter "timezone"

    .prologue
    .line 21
    const-string v0, "HomeTimeCtrl~ init"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 22
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Lcom/htc/clock/util/time/TimeCtrl;->init(Landroid/content/Context;Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;ILandroid/os/Handler;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/htc/clock/util/time/HomeTimeCtrl;->registerHome()V

    .line 25
    return-void
.end method

.method public onHomeCityChange()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeUtil:Lcom/htc/clock/util/location/HomeUtil;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/HomeUtil;->getHomeCityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeCityName:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeUtil:Lcom/htc/clock/util/location/HomeUtil;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/HomeUtil;->getHomeCityTimezone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mTimeZoneStr:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeTimeCtrl~ onHomeCityChange mHomeCityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeZoneStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mTimeZoneStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 57
    invoke-super {p0}, Lcom/htc/clock/util/time/TimeCtrl;->onTimeZoneChanged()V

    .line 58
    return-void
.end method

.method public registerHome()V
    .locals 3

    .prologue
    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeUtil:Lcom/htc/clock/util/location/HomeUtil;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/htc/clock/util/location/HomeUtil;

    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/htc/clock/util/location/HomeUtil;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeUtil:Lcom/htc/clock/util/location/HomeUtil;

    .line 37
    iget-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeUtil:Lcom/htc/clock/util/location/HomeUtil;

    invoke-virtual {v0, p0}, Lcom/htc/clock/util/location/HomeUtil;->register(Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;)V

    .line 39
    :cond_0
    monitor-exit p0

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "HomeTimeCtrl~ uninit"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/htc/clock/util/time/HomeTimeCtrl;->unregisterHome()V

    .line 30
    invoke-super {p0}, Lcom/htc/clock/util/time/TimeCtrl;->uninit()V

    .line 31
    return-void
.end method

.method public unregisterHome()V
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeUtil:Lcom/htc/clock/util/location/HomeUtil;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeUtil:Lcom/htc/clock/util/location/HomeUtil;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/HomeUtil;->unRegister()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock/util/time/HomeTimeCtrl;->mHomeUtil:Lcom/htc/clock/util/location/HomeUtil;

    .line 48
    :cond_0
    monitor-exit p0

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
