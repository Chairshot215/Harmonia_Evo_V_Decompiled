.class public Lcom/htc/idlescreen/base/reminderview/AirplaneView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "AirplaneView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "AirplaneView"


# instance fields
.field private mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTlAirplane:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 39
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->initScene()V

    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/AirplaneView;
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 29
    const-string v0, "Port/base/Lockscreen_airplane.m10"

    .line 30
    .local v0, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 31
    const-string v0, "Land/base/Lockscreen_airplane.m10"

    .line 33
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 34
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/AirplaneView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/AirplaneView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    return-object v2
.end method


# virtual methods
.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->AIRPLANE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 4

    .prologue
    .line 45
    const-string v2, "AirplaneView"

    const-string v3, "initScene"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 47
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 48
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    const-string v2, "timeline.airplane"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->mTlAirplane:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 50
    const-string v2, "textlabel.airplane"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 51
    const-string v2, "textlabel.airplane_event"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 53
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const v3, 0x7f04002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const v3, 0x7f04002d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "AirplaneView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->mTlAirplane:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 63
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->mTlAirplane:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "AirplaneView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->mTlAirplane:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "airplane_flight_loop"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
