.class public abstract Lcom/htc/idlescreen/base/reminderview/ReminderView;
.super Lcom/htc/idlescreen/base/widget/IdleView;
.source "ReminderView.java"


# instance fields
.field protected mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "context"
    .parameter "idleScreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 39
    invoke-direct {p0, p1, p4, p3}, Lcom/htc/idlescreen/base/widget/IdleView;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;Lcom/htc/idlescreen/base/widget/IdleContainer;)V

    .line 40
    iput-object p2, p0, Lcom/htc/idlescreen/base/reminderview/ReminderView;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    .line 43
    return-void
.end method


# virtual methods
.method public getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;
    .locals 15
    .parameter "idleView"
    .parameter "resNames"
    .parameter "label"
    .parameter "dropIndex"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/ReminderView;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/ReminderView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v5, p2, v5

    const/4 v6, 0x2

    aget-object v6, p2, v6

    const/4 v7, 0x3

    aget-object v7, p2, v7

    const/4 v8, 0x4

    aget-object v8, p2, v8

    const/4 v9, 0x5

    aget-object v9, p2, v9

    invoke-interface/range {v1 .. v9}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v12

    .line 68
    .local v12, dragControl:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/ReminderView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v2, 0x6

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v10

    check-cast v10, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 69
    .local v10, animeControl:Lcom/htc/fusion/fx/FxTimelineControl;
    move/from16 v0, p4

    invoke-interface {v12, v0}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->setDropIndex(I)V

    .line 70
    if-eqz v10, :cond_0

    .line 71
    const/4 v1, 0x7

    aget-object v1, p2, v1

    const/4 v2, 0x1

    invoke-interface {v12, v10, v1, v2}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 72
    const/16 v1, 0x8

    aget-object v1, p2, v1

    const/4 v2, 0x1

    invoke-interface {v12, v10, v1, v2}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->setUnlockAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/ReminderView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const/16 v2, 0x9

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v11

    check-cast v11, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 76
    .local v11, comp:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/ReminderView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const/16 v2, 0xa

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v14

    check-cast v14, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 77
    .local v14, textCtrl:Lcom/htc/fusion/fx/controls/FxTextLabel;
    new-instance v13, Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v12, v11, v14}, Lcom/htc/idlescreen/base/widget/ReminderButton;-><init>(Lcom/htc/idlescreen/base/widget/IdleView;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxTextLabel;)V

    .line 78
    .local v13, reminderBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->init(Ljava/lang/String;)V

    .line 79
    return-object v13
.end method

.method public getReminderPanel(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/ReminderPanel;
    .locals 13
    .parameter "idleView"
    .parameter "resNames"

    .prologue
    const/4 v12, 0x1

    .line 83
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/ReminderView;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/ReminderView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v3, 0x0

    aget-object v4, p2, v12

    const/4 v5, 0x2

    aget-object v5, p2, v5

    const/4 v6, 0x3

    aget-object v6, p2, v6

    const/4 v7, 0x4

    aget-object v7, p2, v7

    const/4 v8, 0x5

    aget-object v8, p2, v8

    invoke-interface/range {v0 .. v8}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v10

    .line 91
    .local v10, dragControl:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/ReminderView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v1, 0x6

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v9

    check-cast v9, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 93
    .local v9, animeControl:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v9, :cond_0

    .line 94
    const/4 v0, 0x7

    aget-object v0, p2, v0

    invoke-interface {v10, v9, v0, v12}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 95
    const/16 v0, 0x8

    aget-object v0, p2, v0

    invoke-interface {v10, v9, v0, v12}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->setUnlockAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 99
    :cond_0
    new-instance v11, Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-direct {v11, p1, v10, v9}, Lcom/htc/idlescreen/base/widget/ReminderPanel;-><init>(Lcom/htc/idlescreen/base/widget/IdleView;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 100
    .local v11, reminderpanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;
    invoke-virtual {v11}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->init()V

    .line 101
    return-object v11
.end method

.method public abstract getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
.end method

.method public initScene()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public setSphereVisible(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V
    .locals 2
    .parameter "button"
    .parameter "show"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1, p2}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setIconVisible(Z)V

    .line 107
    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 109
    :cond_0
    return-void
.end method

.method public abstract update()V
.end method
