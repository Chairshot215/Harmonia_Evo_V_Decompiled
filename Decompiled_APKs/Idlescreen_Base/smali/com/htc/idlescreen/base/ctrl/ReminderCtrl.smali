.class public Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;
.super Lcom/htc/idlescreen/base/ctrl/BaseCtrl;
.source "ReminderCtrl.java"

# interfaces
.implements Lcom/htc/lockscreen/reminder/ReminderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$1;,
        Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    }
.end annotation


# static fields
.field static final ACTION_ALARM_TIMEOUT:Ljava/lang/String; = "com.htc.intent.action.alarm_timeout"

.field static final ACTION_TIMER_TIME:Ljava/lang/String; = "com.htc.intent.action.timer_time"

.field static final ACTION_TIMER_TIMEOUT:Ljava/lang/String; = "com.htc.intent.action.timer_timeout"

.field static final ALARM_ACTION:Ljava/lang/String; = "alarm_action"

.field static final ALARM_ACTION_DISMISS:Ljava/lang/String; = "dismiss"

.field static final ALARM_ACTION_SNOOZE:Ljava/lang/String; = "snooze"

.field static final ALARM_DESCRIPTION:Ljava/lang/String; = "alarm_description"

.field static final ALARM_ID:Ljava/lang/String; = "alarm_id"

.field static final CALENDAR_ACTION:Ljava/lang/String; = "calendar_action"

.field static final CALENDAR_ACTION_DISMISS:Ljava/lang/String; = "dismiss"

.field static final CALENDAR_ACTION_SNOOZE:Ljava/lang/String; = "snooze"

.field static final CALENDAR_ACTION_SNOOZE_SCREENOFF:Ljava/lang/String; = "screen_off_snooze"

.field static final EVENT_DESCRIPTION:Ljava/lang/String; = "event_description"

.field static final EVENT_ID:Ljava/lang/String; = "event_id"

.field static final EVENT_WHERE:Ljava/lang/String; = "event_where"

.field static final INTENT_ACTION_ALARM_TIME:Ljava/lang/String; = "com.htc.intent.action.alarm_time"

.field static final INTENT_ACTION_CALENDAR_REMINDER:Ljava/lang/String; = "com.htc.intent.action.calendar_reminder"

.field static final INTENT_ACTION_CLEAR_CALENDAR_REMINDER:Ljava/lang/String; = "com.htc.intent.lockscreen.ClearCalendarReminder"

.field static final INTENT_ACTION_STOP_ALARM:Ljava/lang/String; = "com.htc.intent.lockscreen.StopAlarmRinging"

.field public static final LOG_PREFIX:Ljava/lang/String; = "ReminderCtrl"

.field public static final MSG_LS_DISMISS_ALARM:I = 0x3ea

.field public static final MSG_LS_DISMISS_CALENDAR:I = 0x3ec

.field public static final MSG_LS_DISMISS_TASK:I = 0x3ee

.field public static final MSG_LS_DISMISS_TIMER:I = 0x3ed

.field public static final MSG_LS_SNOOZE_ALARM:I = 0x3e9

.field public static final MSG_LS_SNOOZE_CALENDAR:I = 0x3eb

.field public static final STATE_ALARM:I = 0x1

.field public static final STATE_ALL:I = 0x5

.field public static final STATE_CALENDAR:I = 0x3

.field public static final STATE_TASK:I = 0x4

.field public static final STATE_TIMER:I = 0x2

.field static final TIMER_TIMES_UP:Ljava/lang/String; = "times_up"


# instance fields
.field public mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

.field public mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

.field mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mNonUiHandler:Landroid/os/Handler;

.field public mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

.field public mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;-><init>()V

    .line 61
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {v0}, Lcom/htc/lockscreen/reminder/ReminderState;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 62
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {v0}, Lcom/htc/lockscreen/reminder/ReminderState;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 63
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {v0}, Lcom/htc/lockscreen/reminder/ReminderState;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 65
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {v0}, Lcom/htc/lockscreen/reminder/ReminderState;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mNonUiHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method private dismissAlarmLocked(JLjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "descript"

    .prologue
    const/4 v3, 0x1

    .line 273
    const-string v0, "ReminderCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissAlarm - send INTENT_ACTION_STOP_ALARM id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    invoke-interface {v0, v3, p1, p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->dismissReminder(IJ)V

    .line 275
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 276
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v3, v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 277
    return-void
.end method

.method private dismissCalendarEventLocked(J)V
    .locals 4
    .parameter "calendarEventId"

    .prologue
    const/4 v3, 0x3

    .line 316
    const-string v0, "ReminderCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissCalendar  calendarEventId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    invoke-interface {v0, v3, p1, p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->dismissReminder(IJ)V

    .line 318
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 319
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v3, v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 320
    return-void
.end method

.method private dismissTaskEventLocked(JLjava/lang/String;)V
    .locals 4
    .parameter "taskEventId"
    .parameter "action"

    .prologue
    const/4 v3, 0x4

    .line 337
    const-string v0, "ReminderCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissCalendar  taskEventId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    invoke-interface {v0, v3, p1, p2, p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->snoozeReminder(IJLjava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 340
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v3, v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 341
    return-void
.end method

.method private dismissTimerLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 233
    const-string v0, "ReminderCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissTimer mTimerState.mId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v2, v2, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "ReminderCtrl"

    const-string v1, "dismissTimer IdleScreenService.REMINDER_TIMER:2"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v1, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    invoke-interface {v0, v4, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->dismissReminder(IJ)V

    .line 236
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 237
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v4, v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 238
    return-void
.end method

.method private notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V
    .locals 0
    .parameter "state"
    .parameter "reminder"

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->notifyLister(ILjava/lang/Object;)V

    .line 194
    return-void
.end method

.method private snoozeAlarmLocked(JLjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "descript"

    .prologue
    const/4 v3, 0x1

    .line 256
    const-string v0, "ReminderCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snoozeAlarm id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v3, p1, p2, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->snoozeReminder(IJLjava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 259
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v3, v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 260
    return-void
.end method

.method private snoozeCalendarEventLocked(JLjava/lang/String;)V
    .locals 4
    .parameter "calendarEventId"
    .parameter "action"

    .prologue
    const/4 v3, 0x3

    .line 294
    const-string v0, "ReminderCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " calendarEventId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    invoke-interface {v0, v3, p1, p2, p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->snoozeReminder(IJLjava/lang/String;)V

    .line 297
    const-string v0, "snooze"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 303
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v3, v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 304
    return-void

    .line 300
    :cond_1
    const-string v0, "screen_off_snooze"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/reminder/ReminderState;->done()V

    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    const-string v0, "ReminderCtrl"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->unregisterReminderState()V

    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public IsAlarmRinging()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    return v0
.end method

.method public IsCalendarRinging()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    return v0
.end method

.method public IsTimerRinging()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    return v0
.end method

.method public clearAlarmState()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 347
    return-void
.end method

.method public clearCalendarState()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 357
    return-void
.end method

.method public clearReminderState()V
    .locals 0

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->clearAlarmState()V

    .line 361
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->clearTimerState()V

    .line 362
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->clearCalendarState()V

    .line 363
    return-void
.end method

.method public clearTimerState()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 352
    return-void
.end method

.method public dismissAlarm(JLjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "descript"

    .prologue
    .line 263
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$1;)V

    .line 264
    .local v0, cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 265
    iput-object p3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mDesp:Ljava/lang/String;

    .line 266
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 267
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3ea

    iput v2, v1, Landroid/os/Message;->what:I

    .line 268
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 270
    return-void
.end method

.method public dismissCalendarEvent(J)V
    .locals 3
    .parameter "calendarEventId"

    .prologue
    .line 307
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$1;)V

    .line 308
    .local v0, cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 309
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 310
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3ec

    iput v2, v1, Landroid/os/Message;->what:I

    .line 311
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 313
    return-void
.end method

.method public dismissTaskEvent(JLjava/lang/String;)V
    .locals 3
    .parameter "taskEventId"
    .parameter "action"

    .prologue
    .line 324
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$1;)V

    .line 325
    .local v0, cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 326
    iput-object p3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mAction:Ljava/lang/String;

    .line 327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 328
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3ee

    iput v2, v1, Landroid/os/Message;->what:I

    .line 329
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 331
    return-void
.end method

.method public dismissTimer()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 230
    return-void
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 377
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 379
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    .line 380
    .local v0, cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    iget-object v3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mDesp:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->snoozeAlarmLocked(JLjava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v0           #cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    .line 386
    .restart local v0       #cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    iget-object v3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mDesp:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->dismissAlarmLocked(JLjava/lang/String;)V

    goto :goto_0

    .line 391
    .end local v0           #cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    .line 392
    .restart local v0       #cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    iget-object v3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mAction:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->snoozeCalendarEventLocked(JLjava/lang/String;)V

    goto :goto_0

    .line 397
    .end local v0           #cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    .line 398
    .restart local v0       #cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    invoke-direct {p0, v1, v2}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->dismissCalendarEventLocked(J)V

    goto :goto_0

    .line 403
    .end local v0           #cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->dismissTimerLocked()V

    goto :goto_0

    .line 408
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    .line 409
    .restart local v0       #cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    iget-object v3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mAction:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->dismissTaskEventLocked(JLjava/lang/String;)V

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isTaskRinging()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    return v0
.end method

.method public onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V
    .locals 4
    .parameter "type"
    .parameter "state"

    .prologue
    .line 115
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReminderStateChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReminderStateChange mIsActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReminderStateChange mDescript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, reminderState:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 120
    const/4 v0, 0x1

    .line 121
    iput-object p2, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 136
    :cond_0
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 137
    return-void

    .line 123
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 124
    const/4 v0, 0x2

    .line 125
    iput-object p2, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    goto :goto_0

    .line 127
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 128
    const/4 v0, 0x3

    .line 129
    iput-object p2, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    goto :goto_0

    .line 131
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 132
    const/4 v0, 0x4

    .line 133
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTaskState mDescript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-object p2, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    const-string v0, "ReminderCtrl"

    const-string v1, "register"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->registerReminderState(Lcom/htc/lockscreen/reminder/ReminderListener;)V

    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public snoozeAlarm()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 242
    .local v0, alarmState:Lcom/htc/lockscreen/reminder/ReminderState;
    iget-wide v1, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    iget-object v3, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->snoozeAlarm(JLjava/lang/String;)V

    .line 243
    return-void
.end method

.method public snoozeAlarm(JLjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "descript"

    .prologue
    .line 246
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$1;)V

    .line 247
    .local v0, cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 248
    iput-object p3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mDesp:Ljava/lang/String;

    .line 249
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 250
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 251
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 253
    return-void
.end method

.method public snoozeCalendarEvent()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    const-string v2, "snooze"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->snoozeCalendarEvent(JLjava/lang/String;)V

    .line 281
    return-void
.end method

.method public snoozeCalendarEvent(JLjava/lang/String;)V
    .locals 3
    .parameter "calendarEventId"
    .parameter "action"

    .prologue
    .line 284
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$1;)V

    .line 285
    .local v0, cmd:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 286
    iput-object p3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl$AlertCmd;->mAction:Ljava/lang/String;

    .line 287
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 288
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 289
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 291
    return-void
.end method

.method protected startCtrl()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "ReminderCtrl"

    const-string v1, "startCtrl"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->register(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method protected stopCtrl()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "ReminderCtrl"

    const-string v1, "stopCtrl"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->unregister()V

    .line 93
    return-void
.end method
