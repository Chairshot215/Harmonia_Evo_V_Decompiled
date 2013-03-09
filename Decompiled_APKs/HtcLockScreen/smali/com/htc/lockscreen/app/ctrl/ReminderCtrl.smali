.class public Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
.super Lcom/htc/lockscreen/app/ctrl/BaseCtrl;
.source "ReminderCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$1;,
        Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;,
        Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;
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

.field static final CALENDAR_ACTION_SNOOZE_AUTO:Ljava/lang/String; = "sooze_automatic"

.field static final CALENDAR_ACTION_SNOOZE_SCREENOFF:Ljava/lang/String; = "screen_off_snooze"

.field static final CALENDAR_ENDTIME:Ljava/lang/String; = "endTime"

.field static final CALENDAR_STARTTIME:Ljava/lang/String; = "beginTime"

.field static final EVENT_DESCRIPTION:Ljava/lang/String; = "event_description"

.field static final EVENT_ID:Ljava/lang/String; = "event_id"

.field static final EVENT_WHERE:Ljava/lang/String; = "event_where"

.field static final HANDLE_TYPE:Ljava/lang/String; = "handle_type"

.field static final HANDLE_TYPE_DISMISS:I = 0x2

.field static final HANDLE_TYPE_SNOOZE:I = 0x1

.field static final HANDLE_WAY:Ljava/lang/String; = "handle_way"

.field static final HANDLE_WAY_SPEAK:I = 0x1

.field static final INTENT_ACTION_ALARM_TIME:Ljava/lang/String; = "com.htc.intent.action.alarm_time"

.field static final INTENT_ACTION_CALENDAR_REMINDER:Ljava/lang/String; = "com.htc.intent.action.calendar_reminder"

.field static final INTENT_ACTION_CALENDAR_REMINDER_HANDLED:Ljava/lang/String; = "com.htc.intent.action.calendar_reminder_handled"

.field static final INTENT_ACTION_CLEAR_CALENDAR_REMINDER:Ljava/lang/String; = "com.htc.intent.lockscreen.ClearCalendarReminder"

.field static final INTENT_ACTION_CLEAR_TASK_REMINDER:Ljava/lang/String; = "com.htc.intent.lockscreen.ClearTASKReminder"

.field static final INTENT_ACTION_STOP_ALARM:Ljava/lang/String; = "com.htc.intent.lockscreen.StopAlarmRinging"

.field static final INTENT_ACTION_TASK_REMINDER:Ljava/lang/String; = "com.htc.intent.action.task_reminder"

.field static final INTENT_ACTION_TASK_REMINDER_HANDLED:Ljava/lang/String; = "com.htc.intent.action.task_reminder_handled"

.field public static final LOG_PREFIX:Ljava/lang/String; = "ReminderCtrl"

.field public static final MSG_LS_DISMISS_ALARM:I = 0x3ea

.field public static final MSG_LS_DISMISS_CALENDAR:I = 0x3ec

.field public static final MSG_LS_DISMISS_TASk:I = 0x3f0

.field public static final MSG_LS_DISMISS_TIMER:I = 0x3ed

.field public static final MSG_LS_HANDLE_ALL:I = 0x3ee

.field public static final MSG_LS_HANLDE_SCREEN_OFF:I = 0x3ef

.field public static final MSG_LS_SNOOZE_ALARM:I = 0x3e9

.field public static final MSG_LS_SNOOZE_CALENDAR:I = 0x3eb

.field public static final STATE_ALARM:I = 0x1

.field public static final STATE_ALL:I = 0x5

.field public static final STATE_CALENDAR:I = 0x3

.field public static final STATE_TASK:I = 0x4

.field public static final STATE_TIMER:I = 0x2

.field static final TASK_ACTION:Ljava/lang/String; = "task_action"

.field static final TASK_DESCRIPTION:Ljava/lang/String; = "task_description"

.field static final TASK_DISMISS:Ljava/lang/String; = "dismiss"

.field static final TASK_DUEDATE:Ljava/lang/String; = "task_duedate"

.field static final TASK_OPEN:Ljava/lang/String; = "open"

.field static final TASK_TITLE:Ljava/lang/String; = "task_title"

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
    .line 24
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;-><init>()V

    .line 91
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {v0}, Lcom/htc/lockscreen/reminder/ReminderState;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 92
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {v0}, Lcom/htc/lockscreen/reminder/ReminderState;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 93
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {v0}, Lcom/htc/lockscreen/reminder/ReminderState;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 94
    new-instance v0, Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {v0}, Lcom/htc/lockscreen/reminder/ReminderState;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mNonUiHandler:Landroid/os/Handler;

    .line 350
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->handleScreenOn()V

    return-void
.end method

.method private dismissAlarmLocked(JLjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "descript"

    .prologue
    .line 408
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissAlarm - send INTENT_ACTION_STOP_ALARM id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.lockscreen.StopAlarmRinging"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, dismissAlarmIntent:Landroid/content/Intent;
    const-string v1, "alarm_id"

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string v1, "alarm_description"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v1, "alarm_action"

    const-string v2, "dismiss"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    .end local v0           #dismissAlarmIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 417
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 418
    return-void
.end method

.method private dismissCalendarEventLocked(J)V
    .locals 11
    .parameter "calendarEventId"

    .prologue
    const-wide/16 v9, 0x0

    .line 475
    const-string v6, "ReminderCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dismissCalendar - send INTENT_ACTION_CLEAR_CALENDAR_REMINDER calendarEventId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    .line 477
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v3, v6, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    .line 478
    .local v3, intent:Landroid/content/Intent;
    const-wide/16 v4, 0x0

    .line 479
    .local v4, startTime:J
    const-wide/16 v1, 0x0

    .line 480
    .local v1, endTime:J
    if-eqz v3, :cond_0

    .line 481
    const-string v6, "beginTime"

    invoke-virtual {v3, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 482
    const-string v6, "endTime"

    invoke-virtual {v3, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 484
    :cond_0
    const-string v6, "ReminderCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dismissCalendarEventLocked start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.lockscreen.ClearCalendarReminder"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, dismissIntent:Landroid/content/Intent;
    const-string v6, "event_id"

    invoke-virtual {v0, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 489
    const-string v6, "calendar_action"

    const-string v7, "dismiss"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v6, "beginTime"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 491
    const-string v6, "endTime"

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 492
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    .end local v0           #dismissIntent:Landroid/content/Intent;
    .end local v1           #endTime:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #startTime:J
    :cond_1
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 495
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v6, v7}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 496
    return-void
.end method

.method private dismissTaskEventLocked(JLjava/lang/String;)V
    .locals 4
    .parameter "taskEventId"
    .parameter "action"

    .prologue
    .line 521
    const-string v1, "ReminderCtrl"

    const-string v2, "dismissTask - send INTENT_ACTION_CLEAR_TASK_REMINDER command:com.htc.intent.lockscreen.ClearTASKReminder"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissTask  taskEventId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.lockscreen.ClearTASKReminder"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, dismissIntent:Landroid/content/Intent;
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 526
    const-string v1, "calendar_action"

    const-string v2, "dismiss"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const-string v1, "task_action"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 530
    .end local v0           #dismissIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 531
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 532
    return-void
.end method

.method private dismissTimerLocked()V
    .locals 3

    .prologue
    .line 360
    const-string v1, "ReminderCtrl"

    const-string v2, "dismissTimer - send INTENT_ACTION_STOP_ALARM"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.lockscreen.StopAlarmRinging"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "alarm_action"

    const-string v2, "times_up"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 367
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 368
    return-void
.end method

.method private handleAllAlertLocked(Z)V
    .locals 6
    .parameter "bAllSnooze"

    .prologue
    .line 541
    const-string v3, "ReminderCtrl"

    const-string v4, "handleAllAlert"

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    move v1, p1

    .line 543
    .local v1, bStartSnooze:Z
    const/4 v2, 0x0

    .line 544
    .local v2, bUpdated:Z
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v3, :cond_0

    .line 545
    const/4 v2, 0x1

    .line 546
    if-eqz v1, :cond_6

    .line 547
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v5, v5, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeAlarmLocked(JLjava/lang/String;)V

    .line 552
    :goto_0
    const/4 v1, 0x1

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v3, :cond_2

    .line 556
    const/4 v2, 0x1

    .line 557
    if-eqz v1, :cond_7

    .line 559
    const-string v0, "snooze"

    .line 560
    .local v0, action:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 561
    const-string v0, "sooze_automatic"

    .line 563
    :cond_1
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    invoke-direct {p0, v3, v4, v0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeCalendarEventLocked(JLjava/lang/String;)V

    .line 570
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v3, :cond_3

    .line 571
    const/4 v2, 0x1

    .line 572
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissTimerLocked()V

    .line 574
    :cond_3
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v3, :cond_4

    .line 575
    const/4 v2, 0x1

    .line 576
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    const-string v5, "open"

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissTask(JLjava/lang/String;)V

    .line 578
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->clearReminderState()V

    .line 579
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 580
    if-eqz v2, :cond_5

    .line 581
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 584
    :cond_5
    return-void

    .line 550
    :cond_6
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v5, v5, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissAlarmLocked(JLjava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_7
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    invoke-direct {p0, v3, v4}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissCalendarEventLocked(J)V

    .line 567
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private handleScreenOff()V
    .locals 4

    .prologue
    const/16 v3, 0x3ef

    .line 608
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 609
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v3, v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 610
    return-void
.end method

.method private handleScreenOffLocked()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 617
    const-string v1, "ReminderCtrl"

    const-string v2, "handleScreenOff"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, bHandle:Z
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v1, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v1, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeAlarmLocked(JLjava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/htc/lockscreen/app/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 622
    const/4 v0, 0x1

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v1, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v1, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    const-string v3, "screen_off_snooze"

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeCalendarEventLocked(JLjava/lang/String;)V

    .line 626
    const/4 v0, 0x1

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v1, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mNeedToDoInScreenOff:Z

    if-eqz v1, :cond_2

    .line 629
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissTimerLocked()V

    .line 630
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/htc/lockscreen/app/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 631
    const/4 v0, 0x1

    .line 633
    :cond_2
    if-eqz v0, :cond_3

    .line 634
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 636
    :cond_3
    return v0
.end method

.method private handleScreenOn()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 614
    return-void
.end method

.method private notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V
    .locals 0
    .parameter "state"
    .parameter "reminder"

    .prologue
    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyLister(ILjava/lang/Object;)V

    .line 321
    return-void
.end method

.method private snoozeAlarmLocked(JLjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "descript"

    .prologue
    .line 385
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snoozeAlarm - send INTENT_ACTION_STOP_ALARM id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v1, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.lockscreen.StopAlarmRinging"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, snoozeAlarmIntent:Landroid/content/Intent;
    const-string v1, "alarm_id"

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v1, "alarm_description"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "alarm_action"

    const-string v2, "snooze"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 393
    .end local v0           #snoozeAlarmIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 394
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 395
    return-void
.end method

.method private snoozeCalendarEventLocked(JLjava/lang/String;)V
    .locals 11
    .parameter "calendarEventId"
    .parameter "action"

    .prologue
    const-wide/16 v9, 0x0

    .line 435
    const-string v6, "ReminderCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - send INTENT_ACTION_CLEAR_CALENDAR_REMINDER calendarEventId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v6, v6, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v6, :cond_1

    .line 437
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v2, v6, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    .line 438
    .local v2, intent:Landroid/content/Intent;
    const-wide/16 v4, 0x0

    .line 439
    .local v4, startTime:J
    const-wide/16 v0, 0x0

    .line 440
    .local v0, endTime:J
    if-eqz v2, :cond_0

    .line 441
    const-string v6, "beginTime"

    invoke-virtual {v2, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 442
    const-string v6, "endTime"

    invoke-virtual {v2, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 444
    :cond_0
    const-string v6, "ReminderCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "snoozeCalendarEventLocked start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.intent.lockscreen.ClearCalendarReminder"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v3, snoozeIntent:Landroid/content/Intent;
    const-string v6, "event_id"

    invoke-virtual {v3, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 450
    const-string v6, "calendar_action"

    invoke-virtual {v3, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v6, "beginTime"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 452
    const-string v6, "endTime"

    invoke-virtual {v3, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 453
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 455
    .end local v0           #endTime:J
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #snoozeIntent:Landroid/content/Intent;
    .end local v4           #startTime:J
    :cond_1
    const-string v6, "snooze"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 456
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 462
    :cond_2
    :goto_0
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v6, v7}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 463
    return-void

    .line 458
    :cond_3
    const-string v6, "screen_off_snooze"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "sooze_automatic"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 460
    :cond_4
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v6}, Lcom/htc/lockscreen/reminder/ReminderState;->done()V

    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    const-string v0, "ReminderCtrl"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    :cond_0
    monitor-exit p0

    .line 154
    return-void

    .line 153
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
    .line 338
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    return v0
.end method

.method public IsCalendarRinging()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    return v0
.end method

.method public IsTimerRinging()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    return v0
.end method

.method public clearAlarmState()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 589
    return-void
.end method

.method public clearCalendarEvent()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 500
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 501
    return-void
.end method

.method public clearCalendarState()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 599
    return-void
.end method

.method public clearReminderState()V
    .locals 0

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->clearAlarmState()V

    .line 603
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->clearTimerState()V

    .line 604
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->clearCalendarState()V

    .line 605
    return-void
.end method

.method public clearTaskEvent()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 505
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 506
    return-void
.end method

.method public clearTimerState()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 594
    return-void
.end method

.method public dismissAlarm(JLjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "descript"

    .prologue
    .line 398
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$1;)V

    .line 399
    .local v0, cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 400
    iput-object p3, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mDesp:Ljava/lang/String;

    .line 401
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 402
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3ea

    iput v2, v1, Landroid/os/Message;->what:I

    .line 403
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 405
    return-void
.end method

.method public dismissCalendarEvent(J)V
    .locals 3
    .parameter "calendarEventId"

    .prologue
    .line 466
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$1;)V

    .line 467
    .local v0, cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 468
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 469
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3ec

    iput v2, v1, Landroid/os/Message;->what:I

    .line 470
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 472
    return-void
.end method

.method public dismissTask(JLjava/lang/String;)V
    .locals 3
    .parameter "taskEventId"
    .parameter "action"

    .prologue
    .line 510
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$1;)V

    .line 511
    .local v0, cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 512
    iput-object p3, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mAction:Ljava/lang/String;

    .line 513
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 514
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3f0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 515
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 516
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 517
    return-void
.end method

.method public dismissTimer()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 357
    return-void
.end method

.method public handleAllAlert(Z)V
    .locals 2
    .parameter "bAllSnooze"

    .prologue
    .line 534
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 535
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ee

    iput v1, v0, Landroid/os/Message;->what:I

    .line 536
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 537
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 538
    return-void

    .line 536
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 661
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 705
    :goto_0
    return-void

    .line 663
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    .line 664
    .local v1, cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v2, v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    iget-object v4, v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mDesp:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeAlarmLocked(JLjava/lang/String;)V

    goto :goto_0

    .line 669
    .end local v1           #cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    .line 670
    .restart local v1       #cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v2, v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    iget-object v4, v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mDesp:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissAlarmLocked(JLjava/lang/String;)V

    goto :goto_0

    .line 675
    .end local v1           #cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    .line 676
    .restart local v1       #cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v2, v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    iget-object v4, v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mAction:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeCalendarEventLocked(JLjava/lang/String;)V

    goto :goto_0

    .line 681
    .end local v1           #cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    .line 682
    .restart local v1       #cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v2, v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    invoke-direct {p0, v2, v3}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissCalendarEventLocked(J)V

    goto :goto_0

    .line 687
    .end local v1           #cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissTimerLocked()V

    goto :goto_0

    .line 692
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    .line 693
    .restart local v1       #cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iget-wide v2, v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    iget-object v4, v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mAction:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissTaskEventLocked(JLjava/lang/String;)V

    goto :goto_0

    .line 697
    .end local v1           #cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    :pswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    .line 698
    .local v0, bSnoozeAll:Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->handleAllAlertLocked(Z)V

    goto :goto_0

    .line 697
    .end local v0           #bSnoozeAll:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 702
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->handleScreenOffLocked()Z

    goto :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected handleMessageUI(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 723
    return-void
.end method

.method public onAlarmChange(ZJLjava/lang/String;J)V
    .locals 8
    .parameter "bActive"
    .parameter "id"
    .parameter "desp"
    .parameter "delay"

    .prologue
    .line 219
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->onAlarmChange(ZJLjava/lang/String;JLandroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public onAlarmChange(ZJLjava/lang/String;JLandroid/content/Intent;)V
    .locals 5
    .parameter "bActive"
    .parameter "id"
    .parameter "desp"
    .parameter "delay"
    .parameter "intent"

    .prologue
    .line 223
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    .line 224
    .local v0, lsState:Lcom/htc/lockscreen/app/LSState;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/lockscreen/reminder/ReminderState;->update(ZJLjava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v1, p7}, Lcom/htc/lockscreen/reminder/ReminderState;->setIntent(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->isShow()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 229
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLockDelay(J)V

    .line 231
    :cond_1
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAlarmChange - id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v3, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 239
    :cond_2
    return-void
.end method

.method public onCalendarChange(ZJLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter "bActive"
    .parameter "id"
    .parameter "description"
    .parameter "where"
    .parameter "intent"

    .prologue
    .line 264
    const-string v0, "ReminderCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCalendarChange id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    const-wide/16 v1, 0x2bc

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLockDelay(JZ)V

    .line 277
    :cond_0
    if-eqz p1, :cond_3

    .line 278
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    const-string v2, "sooze_automatic"

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeCalendarEventLocked(JLjava/lang/String;)V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lockscreen/reminder/ReminderState;->update(ZJLjava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v0, p6}, Lcom/htc/lockscreen/reminder/ReminderState;->setIntent(Landroid/content/Intent;)V

    .line 292
    :cond_2
    :goto_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 294
    return-void

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v4, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v5, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mWhere:Ljava/lang/String;

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lockscreen/reminder/ReminderState;->update(ZJLjava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v0, p6}, Lcom/htc/lockscreen/reminder/ReminderState;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onTaskChange(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter "bActive"
    .parameter "id"
    .parameter "title"
    .parameter "duedate"
    .parameter "description"
    .parameter "intent"

    .prologue
    .line 297
    if-eqz p1, :cond_1

    .line 298
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    const-wide/16 v1, 0x2bc

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLockDelay(JZ)V

    .line 299
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/lockscreen/reminder/ReminderState;->update(ZJLjava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v0, p7}, Lcom/htc/lockscreen/reminder/ReminderState;->setIntent(Landroid/content/Intent;)V

    .line 308
    :cond_0
    :goto_0
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 310
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v4, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v5, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mWhere:Ljava/lang/String;

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lockscreen/reminder/ReminderState;->update(ZJLjava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v0, p7}, Lcom/htc/lockscreen/reminder/ReminderState;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onTimerChange(Z)V
    .locals 4
    .parameter "bActive"

    .prologue
    .line 242
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    .line 243
    .local v0, lsState:Lcom/htc/lockscreen/app/LSState;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-virtual {v1, p1}, Lcom/htc/lockscreen/reminder/ReminderState;->update(Z)V

    .line 245
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->isShow()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 247
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLockDelay(J)V

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v1, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-nez v1, :cond_2

    .line 255
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    invoke-direct {p0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->notifyReminderChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 258
    :cond_2
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    const-string v1, "ReminderCtrl"

    const-string v2, "register"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    .line 125
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.alarm_time"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "com.htc.intent.action.alarm_timeout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "com.htc.intent.action.timer_time"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "com.htc.intent.action.timer_timeout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "com.htc.intent.action.calendar_reminder"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "com.htc.intent.action.calendar_reminder_handled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "com.htc.intent.action.task_reminder"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "com.htc.intent.action.task_reminder_handled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    new-instance v1, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$1;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public snoozeAlarm()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v2, v2, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeAlarm(JLjava/lang/String;)V

    .line 372
    return-void
.end method

.method public snoozeAlarm(JLjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "descript"

    .prologue
    .line 375
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$1;)V

    .line 376
    .local v0, cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 377
    iput-object p3, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mDesp:Ljava/lang/String;

    .line 378
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 379
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 380
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 382
    return-void
.end method

.method public snoozeCalendarEvent()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v0, v0, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    const-string v2, "snooze"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeCalendarEvent(JLjava/lang/String;)V

    .line 422
    return-void
.end method

.method public snoozeCalendarEvent(JLjava/lang/String;)V
    .locals 3
    .parameter "calendarEventId"
    .parameter "action"

    .prologue
    .line 425
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$1;)V

    .line 426
    .local v0, cmd:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
    iput-wide p1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mId:J

    .line 427
    iput-object p3, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->mAction:Ljava/lang/String;

    .line 428
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 429
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 430
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 432
    return-void
.end method

.method protected startCtrl()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "ReminderCtrl"

    const-string v1, "startCtrl"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->register(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method protected stopCtrl()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "ReminderCtrl"

    const-string v1, "stopCtrl"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->unregister()V

    .line 119
    return-void
.end method
