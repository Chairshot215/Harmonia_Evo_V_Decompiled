.class public Lcom/htc/idlescreen/base/reminderview/EmptyView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "EmptyView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "EmptyView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 31
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/EmptyView;->initScene()V

    .line 33
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/EmptyView;
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 21
    const-string v0, "Port/base/Lockscreen_airplane.m10"

    .line 22
    .local v0, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 23
    const-string v0, "Land/base/Lockscreen_airplane.m10"

    .line 25
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 26
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/EmptyView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/EmptyView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    return-object v2
.end method


# virtual methods
.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->OOBERUN_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 37
    const-string v3, "EmptyView"

    const-string v4, "initScene"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 39
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/EmptyView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 40
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    const-string v3, "timeline.airplane"

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 41
    .local v2, timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 43
    const-string v3, "timeline.lockscreen_squarepanel"

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    .end local v2           #timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 44
    .restart local v2       #timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 46
    const-string v3, "textlabel.airplane"

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 47
    .local v1, textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 48
    const-string v3, "textlabel.airplane_event"

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    .end local v1           #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 49
    .restart local v1       #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "EmptyView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "EmptyView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
