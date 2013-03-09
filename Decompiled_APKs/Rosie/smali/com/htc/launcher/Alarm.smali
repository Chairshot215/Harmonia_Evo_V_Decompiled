.class public Lcom/htc/launcher/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private m_alarmListener:Lcom/htc/launcher/OnAlarmListener;

.field private m_bAlarmPending:Z

.field private m_bWaitingForCallback:Z

.field private m_handler:Landroid/os/Handler;

.field private m_lAlarmTriggerTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/Alarm;->m_bAlarmPending:Z

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Alarm;->m_handler:Landroid/os/Handler;

    .line 35
    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/launcher/Alarm;->m_bAlarmPending:Z

    return v0
.end method

.method public cancelAlarm()V
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/launcher/Alarm;->m_lAlarmTriggerTime:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/Alarm;->m_bAlarmPending:Z

    .line 56
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 60
    iput-boolean v4, p0, Lcom/htc/launcher/Alarm;->m_bWaitingForCallback:Z

    .line 61
    iget-wide v2, p0, Lcom/htc/launcher/Alarm;->m_lAlarmTriggerTime:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, lCurrentTime:J
    iget-wide v2, p0, Lcom/htc/launcher/Alarm;->m_lAlarmTriggerTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/htc/launcher/Alarm;->m_handler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/htc/launcher/Alarm;->m_lAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/launcher/Alarm;->m_bWaitingForCallback:Z

    .line 75
    .end local v0           #lCurrentTime:J
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0       #lCurrentTime:J
    :cond_1
    iput-boolean v4, p0, Lcom/htc/launcher/Alarm;->m_bAlarmPending:Z

    .line 70
    iget-object v2, p0, Lcom/htc/launcher/Alarm;->m_alarmListener:Lcom/htc/launcher/OnAlarmListener;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/htc/launcher/Alarm;->m_alarmListener:Lcom/htc/launcher/OnAlarmListener;

    invoke-interface {v2, p0}, Lcom/htc/launcher/OnAlarmListener;->onAlarm(Lcom/htc/launcher/Alarm;)V

    goto :goto_0
.end method

.method public setAlarm(J)V
    .locals 6
    .parameter "millisecondsInFuture"

    .prologue
    const/4 v5, 0x1

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, lCurrentTime:J
    iput-boolean v5, p0, Lcom/htc/launcher/Alarm;->m_bAlarmPending:Z

    .line 46
    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/htc/launcher/Alarm;->m_lAlarmTriggerTime:J

    .line 47
    iget-boolean v2, p0, Lcom/htc/launcher/Alarm;->m_bWaitingForCallback:Z

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/htc/launcher/Alarm;->m_handler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/htc/launcher/Alarm;->m_lAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    iput-boolean v5, p0, Lcom/htc/launcher/Alarm;->m_bWaitingForCallback:Z

    .line 51
    :cond_0
    return-void
.end method

.method public setOnAlarmListener(Lcom/htc/launcher/OnAlarmListener;)V
    .locals 0
    .parameter "alarmListener"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/launcher/Alarm;->m_alarmListener:Lcom/htc/launcher/OnAlarmListener;

    .line 39
    return-void
.end method
