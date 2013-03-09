.class public Lcom/htc/idlescreen/base/reminderview/AlarmView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "AlarmView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/reminderview/AlarmView$MyBGHandler;,
        Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "AlarmView"

.field private static final WHAT_ON_UPDATETIME:I = 0x1


# instance fields
.field private mAlarm:Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;

.field private mBgHandler:Landroid/os/Handler;

.field private mDescript:Ljava/lang/String;

.field private mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mEventlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mTimelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"
    .parameter "descript"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 74
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/AlarmView$MyBGHandler;

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getBGLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/AlarmView$MyBGHandler;-><init>(Lcom/htc/idlescreen/base/reminderview/AlarmView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mBgHandler:Landroid/os/Handler;

    .line 75
    iput-object p5, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDescript:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->initScene()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/base/reminderview/AlarmView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/reminderview/AlarmView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->updateTime()V

    return-void
.end method

.method private doSnooze()V
    .locals 3

    .prologue
    .line 129
    const-string v1, "AlarmView"

    const-string v2, "doSnooze "

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-result-object v0

    .line 132
    .local v0, reminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->snoozeAlarm()V

    .line 134
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Ljava/lang/String;Z)Lcom/htc/idlescreen/base/reminderview/AlarmView;
    .locals 7
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "descript"
    .parameter "isPortrait"

    .prologue
    .line 64
    const-string v6, "Port/base/Lockscreen_alarm.m10"

    .line 65
    .local v6, m10Path:Ljava/lang/String;
    if-nez p4, :cond_0

    .line 66
    const-string v6, "Land/base/Lockscreen_alarm.m10"

    .line 68
    :cond_0
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 69
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/AlarmView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/idlescreen/base/reminderview/AlarmView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Ljava/lang/String;)V

    return-object v0
.end method

.method private updateTime()V
    .locals 6

    .prologue
    .line 189
    const-string v1, ""

    .line 190
    .local v1, dateStr:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 191
    .local v2, when:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 192
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 193
    .local v0, date:Ljava/util/Date;
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mTimelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 196
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 107
    :cond_1
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 108
    const-string v0, "AlarmView"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 110
    return-void
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mContext:Landroid/content/Context;

    const v1, 0x7f04001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->ALARM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 6

    .prologue
    .line 80
    const-string v3, "AlarmView"

    const-string v4, "initScene"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 82
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 83
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 85
    .local v1, res:Landroid/content/res/Resources;
    sget-object v3, Lcom/htc/idlescreen/base/mode10/M10R;->ALARM_RES_DRAG_SNOOZE:[Ljava/lang/String;

    const v4, 0x20c00ac

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p0, p0, v3, v4, v5}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 86
    sget-object v3, Lcom/htc/idlescreen/base/mode10/M10R;->ALARM_RES_DRAG_DISMISS:[Ljava/lang/String;

    const v4, 0x20c00ab

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, p0, v3, v4, v5}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 88
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mContext:Landroid/content/Context;

    const v5, 0x7f020007

    invoke-virtual {v3, v4, v5}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 89
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mContext:Landroid/content/Context;

    const v5, 0x7f020003

    invoke-virtual {v3, v4, v5}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 91
    const-string v3, "timeline.alarmclock"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 92
    .local v0, alarmTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    new-instance v3, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;

    invoke-direct {v3, p0, v0}, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;-><init>(Lcom/htc/idlescreen/base/reminderview/AlarmView;Lcom/htc/fusion/fx/FxTimelineControl;)V

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mAlarm:Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;

    .line 94
    const-string v3, "textlabel.alarm"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 95
    const-string v3, "textlabel.alarm_eventinfo"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mEventlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 96
    const-string v3, "textlabel.alarm_eventtime"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mTimelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 98
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->update()V

    .line 99
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 100
    return-void
.end method

.method public isShowShortcut()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->doSnooze()V

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mAlarm:Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->stopAnimation()V

    .line 117
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mAlarm:Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->startAnimation()V

    .line 124
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 125
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 126
    return-void
.end method

.method public onRingDragEnd(Z)V
    .locals 2
    .parameter "unlock"

    .prologue
    const/4 v1, 0x1

    .line 306
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragEnd(Z)V

    .line 307
    if-nez p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 309
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 311
    :cond_0
    return-void
.end method

.method public onRingDragStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragStart()V

    .line 315
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 316
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 317
    return-void
.end method

.method public onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 6
    .parameter "draggable"

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 160
    const-string v4, "AlarmView"

    const-string v5, "onDrop"

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/IdleState;->getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-result-object v0

    .line 162
    .local v0, ctrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;
    iget-object v4, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v2, v4, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    .line 163
    .local v2, id:J
    iget-object v4, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v1, v4, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    .line 164
    .local v1, desp:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 165
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->snoozeAlarm()V

    goto :goto_0
.end method

.method public onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "draggable"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    const v1, 0x7f040024

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    const v1, 0x7f040025

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    goto :goto_0
.end method

.method public onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 285
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 286
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 292
    :cond_1
    return-void
.end method

.method public onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 281
    return-void
.end method

.method public onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 295
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 296
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 297
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 303
    :cond_1
    return-void
.end method

.method public unlockByDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 322
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mSnoozeBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v0, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    .line 200
    .local v0, desp:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mAlarm:Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/reminderview/AlarmView$FxAlarm;->updateTime()V

    .line 201
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mEventlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mContext:Landroid/content/Context;

    const v2, 0x7f04002e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mBgHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 210
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView;->mBgHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 213
    return-void
.end method
