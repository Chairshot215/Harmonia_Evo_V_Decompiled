.class Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReminderCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    .line 160
    .local v21, action:Ljava/lang/String;
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventReceiver:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "com.htc.intent.action.timer_timeout"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->onTimerChange(Z)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v1, "com.htc.intent.action.timer_time"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->onTimerChange(Z)V

    goto :goto_0

    .line 170
    :cond_2
    const-string v1, "com.htc.intent.action.alarm_timeout"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-wide/16 v6, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->onAlarmChange(ZJLjava/lang/String;JLandroid/content/Intent;)V

    goto :goto_0

    .line 175
    :cond_3
    const-string v1, "com.htc.intent.action.alarm_time"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    const-string v1, "alarm_id"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    .line 177
    .local v3, id:J
    const-string v1, "alarm_description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, description:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    const/4 v2, 0x1

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v1 .. v7}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->onAlarmChange(ZJLjava/lang/String;J)V

    goto :goto_0

    .line 181
    .end local v3           #id:J
    .end local v5           #description:Ljava/lang/String;
    :cond_4
    const-string v1, "com.htc.intent.action.calendar_reminder"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    const-string v1, "event_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 183
    .restart local v3       #id:J
    const-string v1, "event_description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    .restart local v5       #description:Ljava/lang/String;
    const-string v1, "event_where"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    const/4 v2, 0x1

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->onCalendarChange(ZJLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 188
    .end local v3           #id:J
    .end local v5           #description:Ljava/lang/String;
    .end local v6           #where:Ljava/lang/String;
    :cond_5
    const-string v1, "com.htc.intent.action.calendar_reminder_handled"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 189
    const-string v1, "event_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 190
    .restart local v3       #id:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    const/4 v8, 0x0

    const-string v11, ""

    const-string v12, ""

    move-wide v9, v3

    move-object/from16 v13, p2

    invoke-virtual/range {v7 .. v13}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->onCalendarChange(ZJLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 192
    .end local v3           #id:J
    :cond_6
    const-string v1, "com.htc.intent.action.task_reminder"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 193
    const-string v1, "event_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 194
    .restart local v3       #id:J
    const-string v1, "task_title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, title:Ljava/lang/String;
    const-string v1, "task_description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .restart local v5       #description:Ljava/lang/String;
    const-string v1, "task_duedate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 197
    .local v12, duedate:Ljava/lang/String;
    const-string v1, "ReminderCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_ID "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " TASK_TITLE "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " TASK_DUEDATE "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    const/4 v8, 0x1

    move-wide v9, v3

    move-object v13, v5

    move-object/from16 v14, p2

    invoke-virtual/range {v7 .. v14}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->onTaskChange(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 201
    .end local v3           #id:J
    .end local v5           #description:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #duedate:Ljava/lang/String;
    :cond_7
    const-string v1, "com.htc.intent.action.task_reminder_handled"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 202
    const-string v1, "event_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 203
    .restart local v3       #id:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    const/4 v14, 0x0

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    move-wide v15, v3

    move-object/from16 v20, p2

    invoke-virtual/range {v13 .. v20}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->onTaskChange(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 205
    .end local v3           #id:J
    :cond_8
    const-string v1, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 206
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getScreenState()Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->PAUSE:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    if-ne v1, v2, :cond_9

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    #calls: Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->handleScreenOff()V
    invoke-static {v1}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->access$100(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;)V

    goto/16 :goto_0

    .line 209
    :cond_9
    const-string v1, "ReminderCtrl"

    const-string v2, "screen_off onResume"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_a
    const-string v1, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$EventReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    #calls: Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->handleScreenOn()V
    invoke-static {v1}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->access$200(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;)V

    goto/16 :goto_0
.end method
