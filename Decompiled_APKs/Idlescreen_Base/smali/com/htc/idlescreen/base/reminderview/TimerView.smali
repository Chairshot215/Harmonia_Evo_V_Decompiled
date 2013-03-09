.class public Lcom/htc/idlescreen/base/reminderview/TimerView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "TimerView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "TimerView"


# instance fields
.field private mInPortrait:Z

.field private mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mTlPanel:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 0
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"
    .parameter "inPortrait"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 50
    iput-boolean p5, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mInPortrait:Z

    .line 51
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/TimerView;->initScene()V

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/TimerView;
    .locals 7
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 40
    const-string v6, "Port/base/Lockscreen_timer.m10"

    .line 41
    .local v6, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 42
    const-string v6, "Land/base/Lockscreen_timer.m10"

    .line 44
    :cond_0
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 45
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/TimerView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/idlescreen/base/reminderview/TimerView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Z)V

    return-object v0
.end method

.method private startTimerActivity()V
    .locals 5

    .prologue
    .line 103
    const-string v0, "4"

    .line 104
    .local v0, TAB_TIMER:Ljava/lang/String;
    const-string v1, "worldclock_action"

    .line 105
    .local v1, WORLDCLOCK_ACTION:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.worldclock"

    const-string v4, "com.htc.android.worldclock.WorldClockTabControl"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v3, "worldclock_action"

    const-string v4, "4"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/high16 v3, 0x1200

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 146
    :cond_1
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 147
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 148
    return-void
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mContext:Landroid/content/Context;

    const v1, 0x7f04001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TIMER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 56
    const-string v6, "TimerView"

    const-string v7, "initScene"

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 58
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/TimerView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 59
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 60
    .local v3, res:Landroid/content/res/Resources;
    sget-object v2, Lcom/htc/idlescreen/base/mode10/TimerR;->TIMER_RES_DRAG_OK:[Ljava/lang/String;

    .line 66
    .local v2, okRes:[Ljava/lang/String;
    sget-object v6, Lcom/htc/idlescreen/base/mode10/TimerR;->TIMER_RES_DRAG_SETTING:[Ljava/lang/String;

    const v7, 0x7f040027

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {p0, p0, v6, v7, v8}, Lcom/htc/idlescreen/base/reminderview/TimerView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 67
    const v6, 0x20c015f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p0, p0, v2, v6, v7}, Lcom/htc/idlescreen/base/reminderview/TimerView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 69
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v6, :cond_0

    .line 70
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v6, v9}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 71
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v6, v9}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 78
    :goto_0
    const-string v6, "textlabel.timer"

    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 79
    .local v5, titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const v6, 0x7f040035

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 81
    const-string v6, "textlabel.timer_eventtime"

    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 82
    .local v0, eventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const-string v6, ""

    invoke-virtual {v0, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 84
    const-string v6, "textlabel.timer_eventinfo"

    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 85
    .local v1, eventTimeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const-string v6, " "

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 86
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 87
    return-void

    .line 74
    .end local v0           #eventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v1           #eventTimeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v5           #titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_0
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v7, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mContext:Landroid/content/Context;

    const v8, 0x7f020006

    invoke-virtual {v6, v7, v8}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 75
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v7, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mContext:Landroid/content/Context;

    const v8, 0x7f020003

    invoke-virtual {v6, v7, v8}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public isShowShortcut()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->reminderWakeLock(Landroid/content/Context;Z)V

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onRingDragEnd(Z)V
    .locals 2
    .parameter "unlock"

    .prologue
    const/4 v1, 0x1

    .line 193
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragEnd(Z)V

    .line 194
    if-nez p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/TimerView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 196
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/TimerView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public onRingDragStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragStart()V

    .line 202
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/TimerView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 203
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/TimerView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 204
    return-void
.end method

.method public onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 4
    .parameter "draggable"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 116
    const-string v1, "TimerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRingDropEnd draggable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-result-object v0

    .line 118
    .local v0, ctrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->dismissTimer()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->dismissTimer()V

    .line 123
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->unlock()V

    goto :goto_0
.end method

.method public onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 3
    .parameter "draggable"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 93
    const-string v0, "TimerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingDropStart draggable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->skipShowHint()V

    .line 95
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setFreezeView(Z)V

    .line 97
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/TimerView;->startTimerActivity()V

    .line 99
    :cond_0
    return-void
.end method

.method public onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 172
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 173
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/TimerView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/TimerView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 179
    :cond_1
    return-void
.end method

.method public onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 183
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 184
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/TimerView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/TimerView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 190
    :cond_1
    return-void
.end method

.method public unlockByDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 209
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TimerView;->mOkBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
