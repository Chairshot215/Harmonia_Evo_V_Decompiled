.class public Lcom/htc/idlescreen/base/reminderview/TaskView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "TaskView.java"


# static fields
.field private static final DISMISS:Ljava/lang/String; = "dismiss"

.field private static final LOG_PREFIX:Ljava/lang/String; = "TaskView"

.field private static final OPEN:Ljava/lang/String; = "open"

.field private static final TASK_ACTION:Ljava/lang/String; = "task_action"

.field private static final TASK_DUEDATE:Ljava/lang/String; = "task_duedate"

.field private static final WHAT_ON_UPDATETIME:I = 0x44d


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mDueTime:Ljava/lang/String;

.field private mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mTimelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 63
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/TaskView;->initScene()V

    .line 65
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/TaskView;
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 53
    const-string v0, "Port/base/Lockscreen_todo.m10"

    .line 54
    .local v0, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 55
    const-string v0, "Land/base/Lockscreen_todo.m10"

    .line 57
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 58
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/TaskView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/TaskView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    return-object v2
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 91
    :cond_1
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 92
    const-string v0, "TaskView"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mContext:Landroid/content/Context;

    const v1, 0x7f04001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TASK_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 5

    .prologue
    .line 68
    const-string v2, "TaskView"

    const-string v3, "initScene"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 70
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/TaskView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 71
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, res:Landroid/content/res/Resources;
    sget-object v2, Lcom/htc/idlescreen/base/mode10/M10R;->TASK_RES_DRAG_SNOOZE:[Ljava/lang/String;

    const v3, 0x7f04002f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/TaskView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 74
    sget-object v2, Lcom/htc/idlescreen/base/mode10/M10R;->TASK_RES_DRAG_DISMISS:[Ljava/lang/String;

    const v3, 0x20c00ab

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/TaskView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 76
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mContext:Landroid/content/Context;

    const v4, 0x7f020007

    invoke-virtual {v2, v3, v4}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 77
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mContext:Landroid/content/Context;

    const v4, 0x7f020003

    invoke-virtual {v2, v3, v4}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 79
    const-string v2, "textlabel.todo"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 80
    const-string v2, "textlabel.todo_event"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mTimelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 81
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/TaskView;->update()V

    .line 82
    return-void
.end method

.method public isShowShortcut()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->reset()V

    .line 105
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->reset()V

    .line 106
    return-void
.end method

.method public onRingDragEnd(Z)V
    .locals 2
    .parameter "unlock"

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragEnd(Z)V

    .line 228
    if-nez p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/TaskView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 230
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/TaskView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public onRingDragStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDragStart()V

    .line 236
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/TaskView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 237
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/reminderview/TaskView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 238
    return-void
.end method

.method public onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 6
    .parameter "draggable"

    .prologue
    const v5, 0x7f040022

    .line 131
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 132
    const-string v3, "TaskView"

    const-string v4, "onDrop"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-result-object v0

    .line 134
    .local v0, ctrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;
    iget-object v3, v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-wide v1, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mId:J

    .line 135
    .local v1, id:J
    if-eqz p1, :cond_0

    .line 136
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    .line 141
    const-string v3, "dismiss"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->dismissTaskEvent(JLjava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    .line 149
    const-string v3, "open"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->dismissTaskEvent(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "draggable"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    const v1, 0x7f040026

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 206
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 207
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/TaskView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/TaskView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 213
    :cond_1
    return-void
.end method

.method public onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 202
    return-void
.end method

.method public onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 217
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 218
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/TaskView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eq v0, p1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/reminderview/TaskView;->setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V

    .line 224
    :cond_1
    return-void
.end method

.method public unlockByDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mOpenBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 5

    .prologue
    const v3, 0x7f040037

    .line 160
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-result-object v2

    iget-object v1, v2, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 162
    .local v1, state:Lcom/htc/lockscreen/reminder/ReminderState;
    if-eqz v1, :cond_2

    .line 163
    iget-object v2, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 172
    :goto_0
    iget-object v2, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    const-string v3, "task_duedate"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDueTime:Ljava/lang/String;

    .line 175
    :cond_0
    const-string v2, "TaskView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mDueTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDueTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mTimelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mDueTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 188
    :goto_1
    return-void

    .line 168
    :cond_1
    const-string v2, "TaskView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mTitlelabel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, v1, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/TaskView;->mTitlelabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1
.end method
